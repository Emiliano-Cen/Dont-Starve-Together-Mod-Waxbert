local Assets = { 
    Asset("ANIM", "anim/naturalwax.zip"),
    Asset("ANIM", "anim/naturalwax_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/naturalwax.xml"),
    Asset("IMAGE", "images/inventoryimages/naturalwax.tex"),
}

local function MainFunction()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
	
    MakeInventoryPhysics(inst)
	
    local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("naturalwax.tex")
	
    inst.AnimState:SetBank("naturalwax_ground")
    inst.AnimState:SetBuild("naturalwax_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("naturalwax")
    inst:AddTag("waxxxer")
	
    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "naturalwax"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/naturalwax.xml"
    
    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.GENERIC
    inst.components.edible.hungervalue = 19
    inst.components.edible.healthvalue = 15 
    inst.components.edible:SetOnEatenFn(function(inst, eater)
        if not eater:HasTag("waxxxer") then

            return false
        end
    end)

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM
	inst.components.stackable:SetStackSize(2)


    inst.components.inventoryitem.onputininventoryfn = function(inst, player)
        local owner = inst.components.inventoryitem:GetGrandOwner()

        if owner and owner:HasTag("player") and owner.prefab ~= "waxbert" then
            if owner.components.inventory then
                inst:DoTaskInTime(0, function()
                    owner.components.inventory:DropItem(inst)
                    if owner.components.talker ~= nil then
                        owner:DoTaskInTime(0.2, function() owner.components.talker:Say("That would be disgusting!") end)
                    end
                end)
            end
        end
    end

    MakeHauntableLaunch(inst)


    inst:DoPeriodicTask(0.1, function(inst)
        local owner = inst.components.inventoryitem.owner

        if owner and owner:HasTag("player") and owner.prefab ~= "waxbert" then
            if owner.components.inventory then

                local items = owner.components.inventory:FindItems(function(item) return item.prefab == "naturalwax" end)
                for _, item in ipairs(items) do
                    owner.components.inventory:DropItem(item)
                end
            end
        end
    end)

    return inst
end

return  Prefab("common/inventory/naturalwax", MainFunction, Assets)

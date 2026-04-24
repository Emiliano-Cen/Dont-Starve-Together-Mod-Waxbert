local Assets = { 
    Asset("ANIM", "anim/whosphorus.zip"),
    Asset("ANIM", "anim/whosphorus_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/whosphorus.xml"),
    Asset("IMAGE", "images/inventoryimages/whosphorus.tex"),
}

local function MainFunction()
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
    MakeInventoryPhysics(inst)

    local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("whosphorus.tex")

    inst.AnimState:SetBank("whosphorus_ground")
    inst.AnimState:SetBuild("whosphorus_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("whosphorus")
    inst:AddTag("waxxxer")
    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "whosphorus"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/whosphorus.xml"
    
    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.GENERIC
    inst.components.edible.hungervalue = 5
    inst.components.edible.healthvalue = 0
    inst.components.edible.sanityvalue = -1
    
    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM


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

                local items = owner.components.inventory:FindItems(function(item) return item.prefab == "whosphorus" end)
                for _, item in ipairs(items) do
                    owner.components.inventory:DropItem(item)
                end
            end
        end
    end)

    return inst
end

return Prefab("common/inventory/whosphorus", MainFunction, Assets)
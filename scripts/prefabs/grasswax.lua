local Assets = { 
    Asset("ANIM", "anim/grasswax.zip"),
    Asset("ANIM", "anim/grasswax_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/grasswax.xml"),
    Asset("IMAGE", "images/inventoryimages/grasswax.tex"),
}

local function MainFunction()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
	
    MakeInventoryPhysics(inst)
	
    local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("grasswax.tex")
	
    inst.AnimState:SetBank("grasswax_ground")
    inst.AnimState:SetBuild("grasswax_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("grasswax")
    inst:AddTag("waxxxer")
	
    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "grasswax"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/grasswax.xml"
    
    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.GENERIC
    inst.components.edible.hungervalue = 13
    inst.components.edible.healthvalue = 9 -- This line makes the item restore 8 health points when eaten.
    inst.components.edible:SetOnEatenFn(function(inst, eater)
        if not eater:HasTag("waxxxer") then
            -- If the eater does not have the "waxxxer" tag, do not let them eat it.
            return false
        end
    end)

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM
	inst.components.stackable:SetStackSize(2)

    -- Función cuando se guarda en el inventario
    inst.components.inventoryitem.onputininventoryfn = function(inst, player)
        local owner = inst.components.inventoryitem:GetGrandOwner()
        -- Verifica si el propietario es un jugador y no "waxbert"
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

    -- Tarea periódica para expulsar el item si no es "waxbert"
    inst:DoPeriodicTask(0.1, function(inst)
        local owner = inst.components.inventoryitem.owner
        -- Solo ejecuta si el propietario es un jugador y no es "waxbert"
        if owner and owner:HasTag("player") and owner.prefab ~= "waxbert" then
            if owner.components.inventory then
                -- Encuentra todos los items en el inventario del personaje
                local items = owner.components.inventory:FindItems(function(item) return item.prefab == "grasswax" end)
                for _, item in ipairs(items) do
                    owner.components.inventory:DropItem(item)
                end
            end
        end
    end)

    return inst
end


return  Prefab("common/inventory/grasswax", MainFunction, Assets)
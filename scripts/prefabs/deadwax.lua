local Assets = { 
    Asset("ANIM", "anim/deadwax.zip"),
    Asset("ANIM", "anim/deadwax_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/deadwax.xml"),
    Asset("IMAGE", "images/inventoryimages/deadwax.tex"),
}

local function MainFunction()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
	
    MakeInventoryPhysics(inst)
	
    local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("deadwax.tex")
	
    inst.AnimState:SetBank("deadwax_ground")
    inst.AnimState:SetBuild("deadwax_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("deadwax")
    inst:AddTag("waxxxer")
	
    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "deadwax"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/deadwax.xml"

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM
	
    MakeHauntableLaunch(inst)

    return inst
end

return  Prefab("common/inventory/deadwax", MainFunction, Assets)
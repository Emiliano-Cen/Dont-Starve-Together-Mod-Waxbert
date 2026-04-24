local Assets = {
    Asset("ANIM", "anim/awakewax.zip"),
	Asset("ANIM", "anim/awakewax_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/awakewax.xml"),
    Asset("IMAGE", "images/inventoryimages/awakewax.tex"),
}

local function MainFunction()
    local inst = CreateEntity()
    
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
	
    MakeInventoryPhysics(inst)
    
	local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("awakewax.tex")
	
    inst.AnimState:SetBank("awakewax_ground")
    inst.AnimState:SetBuild("awakewax_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("awakewax")
	inst:AddTag("waxxxer")
	
	MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "awakewax"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/awakewax.xml"

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    MakeHauntableLaunch(inst)

    return inst
end

return  Prefab("common/inventory/awakewax", MainFunction, Assets)
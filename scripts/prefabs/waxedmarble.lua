local Assets = {
    Asset("ANIM", "anim/waxedmarble.zip"),
	Asset("ANIM", "anim/waxedmarble_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/waxedmarble.xml"),
    Asset("IMAGE", "images/inventoryimages/waxedmarble.tex"),
}

local function MainFunction()
    local inst = CreateEntity()
    
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
	
    MakeInventoryPhysics(inst)
    
	local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("waxedmarble.tex")
	
    inst.AnimState:SetBank("waxedmarble_ground")
    inst.AnimState:SetBuild("waxedmarble_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("waxedmarble")
	inst:AddTag("waxxxer")
	
	MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "waxedmarble"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/waxedmarble.xml"

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    MakeHauntableLaunch(inst)

    return inst
end

return  Prefab("common/inventory/waxedmarble", MainFunction, Assets)
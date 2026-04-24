local Assets = { 

    Asset("ANIM", "anim/whandmirror.zip"),
	Asset("ANIM", "anim/whandmirror_ground.zip"),


    Asset("ATLAS", "images/inventoryimages/whandmirror.xml"),
    Asset("IMAGE", "images/inventoryimages/whandmirror.tex"),
}

local function OnEquip(inst, owner)

	owner.AnimState:OverrideSymbol("swap_object", "whandmirror", "swap_object")
	

	owner.AnimState:Show("ARM_carry")
	owner.AnimState:Hide("ARM_normal")
end

local function OnUnequip(inst, owner) 
	owner.AnimState:Hide("ARM_carry") 
	owner.AnimState:Show("ARM_normal") 
end

local function MainFunction()

    local inst = CreateEntity()
	
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()
	
	MakeInventoryPhysics(inst)
	

	local minimap = inst.entity:AddMiniMapEntity()
	minimap:SetIcon("whandmirror.tex")
	

	inst.AnimState:SetBank("whandmirror_ground")

	inst.AnimState:SetBuild("whandmirror_ground")

	inst.AnimState:PlayAnimation("anim")

	inst:AddTag("whandmirror")

    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then

        return inst
    end

	inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "whandmirror"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/whandmirror.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)

	inst:AddComponent("weapon")
	inst.components.weapon:SetDamage(34)

	MakeHauntableLaunch(inst)

    return inst
end

return  Prefab("common/inventory/whandmirror", MainFunction, Assets)

require "prefabutil"

local Assets = {
    Asset("ANIM", "anim/meatwax.zip"),
    Asset("ANIM", "anim/meatwax_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/meatwax.xml"),
    Asset("IMAGE", "images/inventoryimages/meatwax.tex"),
}

local function OnHaunt(inst, haunter)

    if haunter and haunter:HasTag("playerghost") and haunter.prefab == "waxbert" then
        haunter:PushEvent("respawnfromghost", { source = inst })
        inst:Remove() 
    end
    return true
end

local function EmitHeartbeat(inst)
    if inst:IsOnValidGround() then
        inst.SoundEmitter:PlaySound("dontstarve/ghost/bloodpump")
    end
    inst.heartbeattask = inst:DoTaskInTime(1, EmitHeartbeat)
end

local function StartHeartbeat(inst)
    if inst.heartbeattask == nil then
        inst.heartbeattask = inst:DoTaskInTime(1, EmitHeartbeat)
    end
end

local function StopHeartbeat(inst)
    if inst.heartbeattask ~= nil then
        inst.heartbeattask:Cancel()
        inst.heartbeattask = nil
    end
end

local function StartEffects(inst)
    if not inst.components.inventoryitem:IsHeld() then
        inst.Light:Enable(true)
        StartHeartbeat(inst)
        inst.AnimState:PlayAnimation("animlatido", true) 
    end
end

local function StopEffects(inst)
    inst.Light:Enable(false)
    StopHeartbeat(inst)
end

local function OnDropped(inst)
    StartEffects(inst)
end

local function OnPutInInventory(inst)
    StopEffects(inst)
end

local function OnLoad(inst)
    if not inst.components.inventoryitem:IsHeld() then
        StartEffects(inst)
    end
end

local function OnEntityWake(inst)
    if not inst.components.inventoryitem:IsHeld() then
        StartEffects(inst)
    end
end

local function MainFunction()
    local inst = CreateEntity()
    
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
    inst.entity:AddLight()
	
    MakeInventoryPhysics(inst)
    
    local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("meatwax.tex")
	
    inst.AnimState:SetBank("meatwax_ground")
    inst.AnimState:SetBuild("meatwax_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("meatwax")
    inst:AddTag("waxxxer")
	
    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem:SetOnDroppedFn(OnDropped)
    inst.components.inventoryitem:SetOnPutInInventoryFn(OnPutInInventory)
    inst.components.inventoryitem.imagename = "meatwax"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/meatwax.xml"

    MakeHauntableLaunch(inst)


    inst.components.hauntable:SetOnHauntFn(OnHaunt)


    inst.Light:SetRadius(0.2)
    inst.Light:SetFalloff(0.5)
    inst.Light:SetIntensity(.5)
    inst.Light:SetColour(255/255, 50/255, 50/255)
    inst.Light:Enable(false)


    inst.OnLoad = OnLoad
    inst.OnEntityWake = OnEntityWake

    return inst
end

return  Prefab("common/inventory/meatwax", MainFunction, Assets)

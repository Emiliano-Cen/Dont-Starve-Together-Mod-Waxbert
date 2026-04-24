require "prefabutil"

local assets =
{
    Asset("ANIM", "anim/handsomestatue.zip"),
    Asset("ATLAS", "images/inventoryimages/handsomestatue.xml"),
    Asset("IMAGE", "images/inventoryimages/handsomestatue.tex"),
}

local prefabs =
{
    "collapse_small",
    "collapse_big",
}

local crafting_items = {
    {"awakewax", 1},
    {"marble", 5}
}

local function onhammered(inst, worker)
    for i, v in ipairs(crafting_items) do
        local item_name = v[1]
        local item_count = v[2]
        local drop_count = math.ceil(item_count / 2) 
        for i = 1, drop_count do
            inst.components.lootdropper:SpawnLootPrefab(item_name)
        end
    end
    SpawnPrefab("collapse_big").Transform:SetPosition(inst.Transform:GetWorldPosition())
    inst.SoundEmitter:PlaySound("dontstarve/common/destroy_stone")
	inst.AnimState:PlayAnimation("handsomebroke")
	inst:DoTaskInTime(1, function() inst.AnimState:PlayAnimation("handsomebroked") end)
	inst:DoTaskInTime(2, function() inst:Remove() end)
end

local function onhit(inst, worker)
    inst.AnimState:PlayAnimation("hit")
    inst.AnimState:PushAnimation("idle")
end

local function onattunecost(inst, player)

	local amount_required = player:HasTag("health_as_oldage") and math.ceil(TUNING.EFFIGY_HEALTH_PENALTY * TUNING.OLDAGE_HEALTH_SCALE) or TUNING.EFFIGY_HEALTH_PENALTY

    if player.components.health == nil or math.ceil(player.components.health.currenthealth) <= amount_required then

        return false, "NOHEALTH"
    end
    
	player:PushEvent("consumehealthcost")
    player.components.health:DoDelta(-TUNING.EFFIGY_HEALTH_PENALTY, false, "statue_attune", true, inst, true)
    return true
end

local function onlink(inst, player, isloading)
    if not isloading then
        inst.SoundEmitter:PlaySound("dontstarve/common/together/meat_effigy_attune/on")
        inst.AnimState:PlayAnimation("handsomefire", true) 
        inst.Light:Enable(true)  
    elseif inst.components.attunable:IsAttuned(player) then
        inst.AnimState:PlayAnimation("handsomefire", true) 
        inst.Light:Enable(true) 
    end
end

local function onunlink(inst, player, isloading)
    if not (isloading or inst.AnimState:IsCurrentAnimation("handsomefire")) then
        inst.SoundEmitter:PlaySound("dontstarve/common/together/meat_effigy_attune/off")
		inst.AnimState:PlayAnimation("attune_off")
        inst.AnimState:PlayAnimation("idle", true) 
        inst.Light:Enable(false) 
    end
end

local function PlayAttuneSound(inst)
    if inst.AnimState:IsCurrentAnimation("place") or inst.AnimState:IsCurrentAnimation("attune_on") then
        inst.SoundEmitter:PlaySound("dontstarve/common/together/meat_effigy_attune/on")
    end
end

local function onbuilt(inst, data)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle", true)
end

local function OnActivateResurrection(inst, guy)
   
    guy.sg:GoToState("rewindtime_rebirth")

   
    SpawnPrefab("collapse_big").Transform:SetPosition(inst.Transform:GetWorldPosition())
    inst.SoundEmitter:PlaySound("dontstarve/common/destroy_stone")

    inst.AnimState:PlayAnimation("debris")
    inst:DoTaskInTime(2, function()
        ErodeAway(inst)
    end)
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()
	
	inst.entity:AddLight()
	inst.Light:SetRadius(1.5)
	inst.Light:SetFalloff(0.8)
	inst.Light:SetIntensity(.5)
	inst.Light:SetColour(235/255,121/255,12/255)
	inst.Light:Enable(false) 

    MakeObstaclePhysics(inst, .3)

    inst:AddTag("structure")
    inst:AddTag("resurrector")

    inst.AnimState:SetBank("handsomestatue")
    inst.AnimState:SetBuild("handsomestatue")
    inst.AnimState:PlayAnimation("idle", true)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("lootdropper")

    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.workable:SetOnWorkCallback(onhit)
    inst:ListenForEvent("onbuilt", onbuilt)

    inst:AddComponent("attunable")
    inst.components.attunable:SetAttunableTag("remoteresurrector")
    inst.components.attunable:SetOnAttuneCostFn(onattunecost)
    inst.components.attunable:SetOnLinkFn(onlink)
    inst.components.attunable:SetOnUnlinkFn(onunlink)

    inst:ListenForEvent("activateresurrection", OnActivateResurrection)

    return inst
end

return Prefab("handsomestatue", fn, assets, prefabs),
    MakePlacer("handsomestatue_placer", "handsomestatue", "handsomestatue", "idle")

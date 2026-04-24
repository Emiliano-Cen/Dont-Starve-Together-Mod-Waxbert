local Assets = { 
    Asset("ANIM", "anim/drowzywax.zip"),
    Asset("ANIM", "anim/drowzywax_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/drowzywax.xml"),
    Asset("IMAGE", "images/inventoryimages/drowzywax.tex"),
}

local SLEEPTARGETS_CANT_TAGS = { "playerghost", "FX", "DECOR", "INLIMBO" }
local SLEEPTARGETS_ONEOF_TAGS = { "sleeper", "player" }

local function doareasleep(eater, range, time)
    local x, y, z = eater.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(x, y, z, range, nil, SLEEPTARGETS_CANT_TAGS, SLEEPTARGETS_ONEOF_TAGS)
    local canpvp = not eater:HasTag("player") or TheNet:GetPVPEnabled()
    for i, v in ipairs(ents) do
        if (v == eater or canpvp or not v:HasTag("player")) and
            not (v.components.freezable ~= nil and v.components.freezable:IsFrozen()) and
            not (v.components.pinnable ~= nil and v.components.pinnable:IsStuck()) and
            not (v.components.fossilizable ~= nil and v.components.fossilizable:IsFossilized()) then
            local mount = v.components.rider ~= nil and v.components.rider:GetMount() or nil
            if mount ~= nil then
                mount:PushEvent("ridersleep", { sleepiness = 7, sleeptime = time + math.random() })
            end
            if v:HasTag("player") then
                v:PushEvent("yawn", { grogginess = 4, knockoutduration = time + math.random() })
            elseif v.components.sleeper ~= nil then
                v.components.sleeper:AddSleepiness(7, time + math.random())
            elseif v.components.grogginess ~= nil then
                v.components.grogginess:AddGrogginess(4, time + math.random())
            else
                v:PushEvent("knockedout")
            end
        end
    end
end

local function oneaten(inst, eater)
    if not eater:HasTag("waxxxer") then

        return false
    end

    eater:DoTaskInTime(0.5, function()
        doareasleep(eater, TUNING.MANDRAKE_SLEEP_RANGE, TUNING.MANDRAKE_SLEEP_TIME)
    end)
end

local function MainFunction()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
	
    MakeInventoryPhysics(inst)
	
    local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("drowzywax.tex")
	
    inst.AnimState:SetBank("drowzywax_ground")
    inst.AnimState:SetBuild("drowzywax_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("drowzywax")
    inst:AddTag("waxxxer")
	
    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "drowzywax"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/drowzywax.xml"
    
    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.GENERIC
    inst.components.edible.hungervalue = 101
    inst.components.edible.healthvalue = 131 
	inst.components.edible.sanityvalue = 31
    inst.components.edible:SetOnEatenFn(oneaten)

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM
	inst.components.stackable:SetStackSize(1)


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

                local items = owner.components.inventory:FindItems(function(item) return item.prefab == "drowzywax" end)
                for _, item in ipairs(items) do
                    owner.components.inventory:DropItem(item)
                end
            end
        end
    end)

    return inst
end

return  Prefab("common/inventory/drowzywax", MainFunction, Assets)

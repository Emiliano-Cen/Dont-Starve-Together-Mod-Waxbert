local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
    Asset("ANIM", "anim/fire.zip"),
}

TUNING.WAXBERT_HEALTH = 200
TUNING.WAXBERT_HUNGER = 120
TUNING.WAXBERT_SANITY = 100

TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.WAXBERT = {
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.WAXBERT
end
local prefabs = FlattenTree(start_inv, true)

local function onbecamehuman(inst)

	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "waxbert_speed_mod", 1)
end

local function onbecameghost(inst)

   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "waxbert_speed_mod")
end


local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end


local common_postinit = function(inst) 

	inst.MiniMapEntity:SetIcon( "waxbert.tex" )
	

	inst:AddTag("waxxxer")
	

	inst.isLit = false


	inst.hasEatenWhosphorus = false
end


local master_postinit = function(inst)

    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	

	inst.soundsname = "waxbert"
	

	inst.components.health:SetMaxHealth(TUNING.WAXBERT_HEALTH)
	inst.components.hunger:SetMax(TUNING.WAXBERT_HUNGER)
	inst.components.sanity:SetMax(TUNING.WAXBERT_SANITY)
	inst.components.temperature.overheattemp = (60)
	inst.components.temperature:SetOverheatHurtRate(2) 
	

	inst.components.foodaffinity:AddPrefabAffinity("bonesoup", TUNING.AFFINITY_15_CALORIES_SMALL)
	

    inst.components.combat.damagemultiplier = 1
	inst.components.health.absorb = 0.10
	inst.components.health.fire_damage_scale = 1.5 * TUNING.WORMWOOD_FIRE_DAMAGE
	inst.components.playerlightningtarget:SetHitChance(TUNING.WX78_LIGHTNING_TARGET_CHANCE)
	

	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload


    inst:DoPeriodicTask(1, function()
        if inst.hasEatenWhosphorus and not inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD) and not inst.components.moisture:IsWet() then

            if not inst.isLit then 
                inst.SoundEmitter:PlaySound("dontstarve/common/fireAddFuel") 
                

                local fire = SpawnPrefab("torchfire")
                fire.entity:AddFollower()
                fire.Follower:FollowSymbol(inst.GUID, "swap_hat", 0, -260, 0) 
                inst.fire = fire

                -- Añade el efecto de explosión
                local explosion = SpawnPrefab("small_puff")
                explosion.Transform:SetPosition(inst.fire.Transform:GetWorldPosition()) 

                inst.isLit = true 
            end
            inst.components.health:DoDelta(-1.2)
            inst.components.sanity.dapperness = 2.5 * TUNING.DAPPERNESS_MED
        else

            if inst.isLit then
                inst.SoundEmitter:PlaySound("dontstarve/common/fireOut")  
	

                if inst.fire then
                    inst.fire:Remove()
                    inst.fire = nil
                end

                inst.isLit = false 
                inst.hasEatenWhosphorus = false  
            end
            inst.components.sanity.dapperness = -0.5 * TUNING.DAPPERNESS_MED 
        end
    end)


    local old_eat_fn = inst.components.eater.Eat

        local allowedFoods = {"whosphorus", "grasswax", "naturalwax", "royalwax", "paraffinwax", "drowzywax", "grosswax", "bluewax", "redwax", "greenwax", "brownwax", "esforestfruits", "espineforest", "esintforest", "essourgarlic", "waxremains"}  -- Reemplaza "fooditem1", "fooditem2", etc. con los nombres de los alimentos que quieres permitir


        if food and table.contains(allowedFoods, food.prefab) then

			inst.lastConsumedItem = food.prefab
			

            if food.prefab == "whosphorus" and not inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD) and not inst.components.moisture:IsWet() then
                inst.hasEatenWhosphorus = true
            end
			
            return old_eat_fn(self, food)
        else

            inst.components.talker:Say("No puedo eat that!")
            return false
        end
    end


    inst.previousHealth = inst.components.health.currenthealth


    inst:ListenForEvent("healthdelta", function(inst, data)
        if inst.components.health.currenthealth < inst.previousHealth then
            local healthLost = inst.previousHealth - inst.components.health.currenthealth
            if healthLost >= 20 then

                local numDeadwax = math.random(0, 1)
                for i = 1, numDeadwax do
                    local deadwax = SpawnPrefab("deadwax")
                    deadwax.Transform:SetPosition(inst.Transform:GetWorldPosition())
                end
            end
        end


        inst.previousHealth = inst.components.health.currenthealth
    end)


    local old_health_delta_fn = inst.components.health.DoDelta
    inst.components.health.DoDelta = function(self, delta, overtime, cause, ignore_invincible, afflicter)
 
        local allowedHealingItems = {"whosphorus", "grasswax", "naturalwax", "royalwax", "paraffinwax", "drowzywax", "grosswax", "bluewax", "redwax", "greenwax", "brownwax", "esforestfruits", "espineforest", "esintforest", "essourgarlic", "waxremains"}  -- Reemplaza "healingitem1", "healingitem2", etc. con los nombres de los objetos de curación que quieres permitir


        if delta > 0 and inst.lastConsumedItem and table.contains(allowedHealingItems, inst.lastConsumedItem) then

			inst.lastConsumedItem = nil
            return old_health_delta_fn(self, delta, overtime, cause, ignore_invincible, afflicter)
        elseif delta > 0 then

            inst.components.talker:Say("Eso no es good for my wax!")
			return old_health_delta_fn(self, -5, overtime, cause, ignore_invincible, afflicter)
        else

            return old_health_delta_fn(self, delta, overtime, cause, ignore_invincible, afflicter)
        end
    end
	

    local function onEat(inst, food)
        inst.lastConsumedItem = food.prefab
    end


    inst:ListenForEvent("oneat", onEat)
	

    inst:ListenForEvent("death", function(inst)
        -- Genera de 1 a 2 deadwax en el suelo
        local numDeadwax = math.random(1, 2)
        for i = 1, numDeadwax do
            local deadwax = SpawnPrefab("deadwax")
            deadwax.Transform:SetPosition(inst.Transform:GetWorldPosition())
        end
    end)
	

    inst:ListenForEvent("working", function(inst, data)
        if data and data.target then
            local target = data.target.prefab 


            if target == "rock1" or target == "rock2" or target == "rock_flintless" or
               target == "tree" or target == "evergreen" or target == "deciduoustree" or
               target == "seastack" or target == "cave_entrance" or target == "rock_moon" or
               target == "rock_moon_shell" or target == "mushtree_tall" or target == "mushtree_medium" or
               target == "mushtree_small" or target == "flowered_cactus" or
               target == "stalagmite_full" or target == "stalagmite_med" or target == "stalagmite_low" or
               target == "stalagmite_tall_full" or target == "stalagmite_tall_med" or target == "stalagmite_tall_low" or 
			   target == "deciduoustree_tall" or target == "deciduoustree_normal" or target == "deciduoustree_burnt" or
               target == "deciduoustree_short" or target == "evergreen_tall" or target == "evergreen_normal" or	
			   target == "evergreen_short" or target == "evergreen_burnt" or target == "moon_tree_tall" then

                if math.random() < 0.2 then 
                    local waxremains = SpawnPrefab("waxremains")
                    

                    local x, y, z = inst.Transform:GetWorldPosition()
                    waxremains.Transform:SetPosition(x, y, z)
                end
            end
        end
    end)

    inst:ListenForEvent("harvested", function(inst, data)
        if data and data.object then
            local target = data.object.prefab 

            if target == "berrybush" or target == "berrybush2" or target == "sapling" or target == "grass" or 
               target == "berrybush_juicy" or target == "cactus" or target == "oasis_cactus" then 

                if math.random() < 0.2 then 
                    local waxremains = SpawnPrefab("waxremains")
                    

                    local x, y, z = inst.Transform:GetWorldPosition()
                    waxremains.Transform:SetPosition(x, y, z)
                end
            end
        end
    end)
	
end

return MakePlayerCharacter("waxbert", prefabs, assets, common_postinit, master_postinit, prefabs)
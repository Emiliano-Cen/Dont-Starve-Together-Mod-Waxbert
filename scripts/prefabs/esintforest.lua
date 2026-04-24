local Assets = { 
    Asset("ANIM", "anim/esintforest.zip"),
    Asset("ANIM", "anim/esintforest_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/esintforest.xml"),
    Asset("IMAGE", "images/inventoryimages/esintforest.tex"),
}

local function MainFunction()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
	
    MakeInventoryPhysics(inst)
	
    local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("esintforest.tex")
	
    inst.AnimState:SetBank("esintforest_ground")
    inst.AnimState:SetBuild("esintforest_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("esintforest")
    inst:AddTag("waxxxer")
    inst:AddTag("waxesencia")
	
    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "esintforest"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/esintforest.xml"
    
    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.GENERIC
    inst.components.edible.hungervalue = 0
    inst.components.edible.healthvalue = 0


    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(2)  
    inst.components.finiteuses:SetUses(2) 

    inst.components.edible:SetOnEatenFn(function(inst, eater)

        if eater.last_waxesencia_eaten_time and (GetTime() - eater.last_waxesencia_eaten_time) < 30 then

            if eater.components.talker ~= nil then
                eater.components.talker:Say("Eso sería bad for my wax now.")
            end
			

            local new_item = SpawnPrefab(inst.prefab)
            new_item.tags = inst.tags
            new_item.components.finiteuses:SetUses(inst.components.finiteuses:GetUses())  
            eater.components.inventory:GiveItem(new_item)
		
            return
        end


        if not (eater:HasTag("waxxxer") and eater.isLit) then

            local new_item = SpawnPrefab(inst.prefab)
            new_item.tags = inst.tags
            new_item.components.finiteuses:SetUses(inst.components.finiteuses:GetUses()) 
            eater.components.inventory:GiveItem(new_item)
			

            if eater.components.talker ~= nil then
                eater.components.talker:Say("I need chispa!")
            end
		
            return
        end


        if inst:HasTag("waxesencia") then
            eater.last_waxesencia_eaten_time = GetTime()
        end


        local cordura_radius = 10 
        local cordura_amount = 4.8  
        local cordura_duration = 25  

        local function regen_cordura(eater, cordura_count)
            if cordura_count > cordura_duration or not (eater:HasTag("waxxxer") and eater.isLit) then
                return
            end

            local x, y, z = eater.Transform:GetWorldPosition()

            local players_to_regen = TheSim:FindEntities(x, y, z, cordura_radius, {"player"})
            for _, player in ipairs(players_to_regen) do

                if player:GetDistanceSqToInst(eater) <= cordura_radius * cordura_radius then

                    player.components.sanity:DoDelta(cordura_amount)
                    local fx = SpawnPrefab("slow_steam_fx1")
                    fx.Transform:SetPosition(player.Transform:GetWorldPosition())
                end
            end


            local fx = SpawnPrefab("crater_steam_fx2")
            fx.Transform:SetPosition(eater.Transform:GetWorldPosition())


            eater:DoTaskInTime(1, function() regen_cordura(eater, cordura_count + 1) end)
        end


        regen_cordura(eater, 1)
		

        local healing_radius = 10 
        local healing_amount = 3.6 
        local healing_duration = 25  

        local function heal_players(eater, healing_count)
            if healing_count > healing_duration or not (eater:HasTag("waxxxer") and eater.isLit) then
                return
            end

            local x, y, z = eater.Transform:GetWorldPosition()

            local players_to_heal = TheSim:FindEntities(x, y, z, healing_radius, {"player"})
            for _, player in ipairs(players_to_heal) do

                if player:GetDistanceSqToInst(eater) <= healing_radius * healing_radius and player ~= eater then

                    player.components.health:DoDelta(healing_amount)
                end
            end


            local fx = SpawnPrefab("crater_steam_fx2")
            fx.Transform:SetPosition(eater.Transform:GetWorldPosition())


            eater:DoTaskInTime(1, function() heal_players(eater, healing_count + 1) end)
        end


        heal_players(eater, 1)
		

        local fx_task = inst:DoPeriodicTask(1, function()
            if not (eater:HasTag("waxxxer") and eater.isLit) then
                fx_task:Cancel()
                return
            end


            local fx = SpawnPrefab("crater_steam_fx2")
            fx.Transform:SetPosition(eater.Transform:GetWorldPosition())
        end)


        eater:DoTaskInTime(25, function()
            fx_task:Cancel()
        end)
        

        local spawn_period = 7 
        local spawn_duration = 25 

        local function spawn_creatures(eater, spawn_count)
            if spawn_count > spawn_duration / spawn_period or not (eater:HasTag("waxxxer") and eater.isLit) then
                return
            end

            local creature
            local rand = math.random()
            if rand < 0.3 then
                creature = "butterfly"
            elseif rand < 0.6 then
                creature = "bee"
            elseif rand < 0.9 then
                creature = "crow"
            else
                creature = "spider"
            end
            local creature_inst = SpawnPrefab(creature)
            if creature_inst then
                local x, y, z = eater.Transform:GetWorldPosition()
                creature_inst.Transform:SetPosition(x, y, z)
            end


            eater:DoTaskInTime(spawn_period, function() spawn_creatures(eater, spawn_count + 1) end)
        end


        spawn_creatures(eater, 1)

		

        inst.components.finiteuses:Use(1)


        if inst.components.finiteuses:GetUses() <= 0 then
            inst:Remove()  
        else

            local new_item = SpawnPrefab(inst.prefab)
            new_item.tags = inst.tags
            new_item.components.finiteuses:SetUses(inst.components.finiteuses:GetUses()) 
            eater.components.inventory:GiveItem(new_item)
        end
    end)
	
    MakeHauntableLaunch(inst)


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


    inst:DoPeriodicTask(0.1, function(inst)
        local owner = inst.components.inventoryitem.owner

        if owner and owner:HasTag("player") and owner.prefab ~= "waxbert" then
            if owner.components.inventory then

                local items = owner.components.inventory:FindItems(function(item) return item.prefab == "esintforest" end)
                for _, item in ipairs(items) do
                    owner.components.inventory:DropItem(item)
                end
            end
        end
    end)

    return inst
end

return  Prefab("common/inventory/esintforest", MainFunction, Assets)

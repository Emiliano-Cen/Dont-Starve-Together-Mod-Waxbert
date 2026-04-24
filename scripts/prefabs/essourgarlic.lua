local Assets = { 
    Asset("ANIM", "anim/essourgarlic.zip"),
    Asset("ANIM", "anim/essourgarlic_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/essourgarlic.xml"),
    Asset("IMAGE", "images/inventoryimages/essourgarlic.tex"),
}

local function MainFunction()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
	
    MakeInventoryPhysics(inst)
	
    local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("essourgarlic.tex")
	
    inst.AnimState:SetBank("essourgarlic_ground")
    inst.AnimState:SetBuild("essourgarlic_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("essourgarlic")
    inst:AddTag("waxxxer")
    inst:AddTag("waxesencia")  
	
    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "essourgarlic"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/essourgarlic.xml"
    
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


        local scare_radius = 10 
        local scare_duration = 15 
        local speed_boost = 1.5
        local damage_per_second = 1 

        local function scare_hostiles(eater, scare_count)
            if scare_count > scare_duration or not (eater:HasTag("waxxxer") and eater.isLit) then
                return
            end

            local x, y, z = eater.Transform:GetWorldPosition()

            local hostiles_to_scare = TheSim:FindEntities(x, y, z, scare_radius, {"hostile"})
            for _, hostile in ipairs(hostiles_to_scare) do

                if hostile:GetDistanceSqToInst(eater) <= scare_radius * scare_radius then

                    hostile.components.combat:SetTarget(nil)  
                    hostile:PushEvent("gohome")  
                    hostile.components.locomotor:RunInDirection(math.random(360))  

                    if hostile.components.locomotor then
                        hostile.components.locomotor:SetExternalSpeedMultiplier(hostile, "sourgarlic_speedboost", speed_boost)
                    end


                    hostile.components.health:DoDelta(-damage_per_second)


                    if hostile.components.combat then

                        if hostile._original_retargetfn == nil then
                            hostile._original_retargetfn = hostile.components.combat.retargetfn
                        end
                        hostile.components.combat:SetRetargetFunction(nil)
                    end


                    local fx = SpawnPrefab("crater_steam_fx2")
                    fx.Transform:SetPosition(hostile.Transform:GetWorldPosition())


                    hostile:DoTaskInTime(scare_duration - scare_count, function()

                        if hostile.components.locomotor then
                            hostile.components.locomotor:RemoveExternalSpeedMultiplier(hostile, "sourgarlic_speedboost")
                        end

                        if hostile.components.combat and hostile._original_retargetfn ~= nil then
                            hostile.components.combat:SetRetargetFunction(3, hostile._original_retargetfn)
                            hostile._original_retargetfn = nil
                        end

                        if hostile.components.combat then
                            hostile.components.combat:ResetCooldown()
                            hostile.components.combat:TryRetarget()
                        end
                    end)
                end
            end


            local fx = SpawnPrefab("crater_steam_fx2")
            fx.Transform:SetPosition(eater.Transform:GetWorldPosition())


            eater:DoTaskInTime(1, function() scare_hostiles(eater, scare_count + 1) end)
        end


        scare_hostiles(eater, 1)
		

        local fx_task = inst:DoPeriodicTask(1, function()
            if not (eater:HasTag("waxxxer") and eater.isLit) then
                fx_task:Cancel()
                return
            end


            local fx = SpawnPrefab("crater_steam_fx2")
            fx.Transform:SetPosition(eater.Transform:GetWorldPosition())
        end)


        eater:DoTaskInTime(15, function()
            fx_task:Cancel()
        end)
	    

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

                local items = owner.components.inventory:FindItems(function(item) return item.prefab == "essourgarlic" end)
                for _, item in ipairs(items) do
                    owner.components.inventory:DropItem(item)
                end
            end
        end
    end)

    return inst
end

return  Prefab("common/inventory/essourgarlic", MainFunction, Assets)

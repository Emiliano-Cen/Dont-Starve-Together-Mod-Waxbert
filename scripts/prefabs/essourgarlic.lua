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
    inst:AddTag("waxesencia")  -- Agrega el tag "waxesencia" a tu ítem
	
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

    -- Agrega el componente finiteuses
    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(2)  -- Establece el número máximo de usos
    inst.components.finiteuses:SetUses(2)  -- Establece el número inicial de usos

    inst.components.edible:SetOnEatenFn(function(inst, eater)
        -- Comprueba si el consumidor ha consumido recientemente algún ítem con el tag "waxesencia"
        if eater.last_waxesencia_eaten_time and (GetTime() - eater.last_waxesencia_eaten_time) < 30 then
            -- Si el consumidor ha consumido un ítem con el tag "waxesencia" en los últimos 30 segundos, no permitas que se consuma de nuevo
            if eater.components.talker ~= nil then
                eater.components.talker:Say("Eso sería bad for my wax now.")
            end
			
			-- Crea un nuevo ítem y agrégalo al inventario
            local new_item = SpawnPrefab(inst.prefab)
            new_item.tags = inst.tags
            new_item.components.finiteuses:SetUses(inst.components.finiteuses:GetUses())  -- Establece el número de usos al mismo valor que tenía antes de intentar consumirlo
            eater.components.inventory:GiveItem(new_item)
		
            return
        end

        -- Si el consumidor no está en el estado encendido, retorna inmediatamente
        if not (eater:HasTag("waxxxer") and eater.isLit) then
            -- Crea un nuevo ítem y agrégalo al inventario
            local new_item = SpawnPrefab(inst.prefab)
            new_item.tags = inst.tags
            new_item.components.finiteuses:SetUses(inst.components.finiteuses:GetUses())  -- Establece el número de usos al mismo valor que tenía antes de intentar consumirlo
            eater.components.inventory:GiveItem(new_item)
			
			-- Si el consumidor puede hablar, haz que diga algo
            if eater.components.talker ~= nil then
                eater.components.talker:Say("I need chispa!")
            end
		
            return
        end

        -- Si el ítem tiene el tag "waxesencia", actualiza el tiempo de la última vez que se consumió un ítem con ese tag
        if inst:HasTag("waxesencia") then
            eater.last_waxesencia_eaten_time = GetTime()
        end

        -- Inicia el efecto de repulsión
        local scare_radius = 10  -- Define el radio del efecto de espanto
        local scare_duration = 15  -- Define la duración del efecto
        local speed_boost = 1.5  -- Aumento de velocidad temporal
        local damage_per_second = 1  -- Daño por segundo infligido a las criaturas hostiles

        local function scare_hostiles(eater, scare_count)
            if scare_count > scare_duration or not (eater:HasTag("waxxxer") and eater.isLit) then
                return
            end

            local x, y, z = eater.Transform:GetWorldPosition()
            -- Encuentra a todas las criaturas hostiles dentro del radio de espanto
            local hostiles_to_scare = TheSim:FindEntities(x, y, z, scare_radius, {"hostile"})
            for _, hostile in ipairs(hostiles_to_scare) do
                -- Si la criatura es hostil y está dentro del radio, haz que huya
                if hostile:GetDistanceSqToInst(eater) <= scare_radius * scare_radius then
                    -- Aplicar el efecto de espanto
                    hostile.components.combat:SetTarget(nil)  -- Deja de atacar
                    hostile:PushEvent("gohome")  -- Hace que la criatura intente huir
                    hostile.components.locomotor:RunInDirection(math.random(360))  -- Huye en una dirección aleatoria

                    -- Aumentar la velocidad de movimiento temporalmente
                    if hostile.components.locomotor then
                        hostile.components.locomotor:SetExternalSpeedMultiplier(hostile, "sourgarlic_speedboost", speed_boost)
                    end

                    -- Inflige daño a las criaturas hostiles cada segundo
                    hostile.components.health:DoDelta(-damage_per_second)

                    -- Deshabilita la capacidad de retargeting
                    if hostile.components.combat then
                        -- Almacena la función de retargeting original y deshabilita temporalmente el retargeting
                        if hostile._original_retargetfn == nil then
                            hostile._original_retargetfn = hostile.components.combat.retargetfn
                        end
                        hostile.components.combat:SetRetargetFunction(nil)
                    end

                    -- Genera un efecto visual sobre la criatura hostil espantada
                    local fx = SpawnPrefab("crater_steam_fx2")
                    fx.Transform:SetPosition(hostile.Transform:GetWorldPosition())

                    -- Restablecer el comportamiento después de que termine el efecto
                    hostile:DoTaskInTime(scare_duration - scare_count, function()
                        -- Restaurar velocidad y permitir ataque
                        if hostile.components.locomotor then
                            hostile.components.locomotor:RemoveExternalSpeedMultiplier(hostile, "sourgarlic_speedboost")
                        end
                        -- Restaurar la función de retargeting original
                        if hostile.components.combat and hostile._original_retargetfn ~= nil then
                            hostile.components.combat:SetRetargetFunction(3, hostile._original_retargetfn)
                            hostile._original_retargetfn = nil
                        end
                        -- Forzar el reinicio de targeting y comportamiento normal
                        if hostile.components.combat then
                            hostile.components.combat:ResetCooldown()
                            hostile.components.combat:TryRetarget()
                        end
                    end)
                end
            end

            -- Genera el efecto "crater_steam_fx2" sobre Waxbert
            local fx = SpawnPrefab("crater_steam_fx2")
            fx.Transform:SetPosition(eater.Transform:GetWorldPosition())

            -- Programa el próximo ciclo de espanto
            eater:DoTaskInTime(1, function() scare_hostiles(eater, scare_count + 1) end)
        end

        -- Comienza el ciclo de espanto
        scare_hostiles(eater, 1)
		
		-- Inicia la generación del efecto "crater_steam_fx2" en Waxbert
        local fx_task = inst:DoPeriodicTask(1, function()
            if not (eater:HasTag("waxxxer") and eater.isLit) then
                fx_task:Cancel()
                return
            end

            -- Genera el efecto "crater_steam_fx2" sobre Waxbert
            local fx = SpawnPrefab("crater_steam_fx2")
            fx.Transform:SetPosition(eater.Transform:GetWorldPosition())
        end)

        -- Cancela la tarea periódica después de 15 segundos
        eater:DoTaskInTime(15, function()
            fx_task:Cancel()
        end)
	    
        -- Reduce el número de usos cada vez que el ítem se consume
        inst.components.finiteuses:Use(1)

        -- Si el número de usos llega a 0, el ítem se agota por completo
        if inst.components.finiteuses:GetUses() <= 0 then
            inst:Remove()  -- Remueve el ítem del juego
        else
            -- Si el ítem aún tiene usos, crea un nuevo ítem y agrégalo al inventario
            local new_item = SpawnPrefab(inst.prefab)
            new_item.tags = inst.tags
            new_item.components.finiteuses:SetUses(inst.components.finiteuses:GetUses())  -- Establece el número de usos a la mitad
            eater.components.inventory:GiveItem(new_item)
        end
    end)
	
    MakeHauntableLaunch(inst)

    -- Función cuando se guarda en el inventario
    inst.components.inventoryitem.onputininventoryfn = function(inst, player)
        local owner = inst.components.inventoryitem:GetGrandOwner()
        -- Verifica si el propietario es un jugador y no "waxbert"
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

    -- Tarea periódica para expulsar el item si no es "waxbert"
    inst:DoPeriodicTask(0.1, function(inst)
        local owner = inst.components.inventoryitem.owner
        -- Solo ejecuta si el propietario es un jugador y no es "waxbert"
        if owner and owner:HasTag("player") and owner.prefab ~= "waxbert" then
            if owner.components.inventory then
                -- Encuentra todos los items "whosphorus" en el inventario del personaje
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
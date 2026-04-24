local Assets = { 
    Asset("ANIM", "anim/espineforest.zip"),
    Asset("ANIM", "anim/espineforest_ground.zip"),
    Asset("ATLAS", "images/inventoryimages/espineforest.xml"),
    Asset("IMAGE", "images/inventoryimages/espineforest.tex"),
}

local function MainFunction()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()
	
    MakeInventoryPhysics(inst)
	
    local minimap = inst.entity:AddMiniMapEntity()
    minimap:SetIcon("espineforest.tex")
	
    inst.AnimState:SetBank("espineforest_ground")
    inst.AnimState:SetBuild("espineforest_ground")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("espineforest")
    inst:AddTag("waxxxer")
    inst:AddTag("waxesencia")  -- Agrega el tag "waxesencia" a tu ítem
	
    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "espineforest"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/espineforest.xml"
    
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

        -- Inicia la regeneración de cordura
        local cordura_radius = 10  -- Define el radio de regeneración de cordura
        local cordura_amount = 2.2  -- Define la cantidad de cordura
        local cordura_duration = 15  -- Define la duración de la regeneración de cordura

        local function regen_cordura(eater, cordura_count)
            if cordura_count > cordura_duration or not (eater:HasTag("waxxxer") and eater.isLit) then
                return
            end

            local x, y, z = eater.Transform:GetWorldPosition()
            -- Encuentra a todos los jugadores dentro del radio de regeneración de cordura
            local players_to_regen = TheSim:FindEntities(x, y, z, cordura_radius, {"player"})
            for _, player in ipairs(players_to_regen) do
                -- Comprueba si el jugador sigue estando dentro del radio de regeneración de cordura
                if player:GetDistanceSqToInst(eater) <= cordura_radius * cordura_radius then
                    -- Regenera la cordura del jugador y genera el efecto "slow steam fx1"
                    player.components.sanity:DoDelta(cordura_amount)
                    local fx = SpawnPrefab("slow_steam_fx1")
                    fx.Transform:SetPosition(player.Transform:GetWorldPosition())
                end
            end

            -- Genera el efecto "crater_steam_fx2" sobre el consumidor
            local fx = SpawnPrefab("crater_steam_fx2")
            fx.Transform:SetPosition(eater.Transform:GetWorldPosition())

            -- Programa la próxima ronda de regeneración de cordura
            eater:DoTaskInTime(1, function() regen_cordura(eater, cordura_count + 1) end)
        end

        -- Comienza el ciclo de regeneración de cordura
        regen_cordura(eater, 1)
		
		-- Inicia la generación del efecto "crater_steam_fx2"
        local fx_task = inst:DoPeriodicTask(1, function()
            if not (eater:HasTag("waxxxer") and eater.isLit) then
                fx_task:Cancel()
                return
            end

            -- Genera el efecto "crater_steam_fx2" sobre el consumidor
            local fx = SpawnPrefab("crater_steam_fx2")
            fx.Transform:SetPosition(eater.Transform:GetWorldPosition())
        end)

        -- Cancela la tarea periódica después de 15 segundos
        eater:DoTaskInTime(15, function()
            fx_task:Cancel()
        end)
        
		-- Inicia la generación de arañas o cuervos
        local spawn_period = 7  -- Define el periodo de generación
        local spawn_duration = 15  -- Define la duración de la generación

        local function spawn_crows_or_spiders(eater, spawn_count)
            if spawn_count > spawn_duration / spawn_period or not (eater:HasTag("waxxxer") and eater.isLit) then
                return
            end

            -- Genera un cuervo o araña
            local creature = math.random() < 0.8 and "crow" or "spider"
            local creature_inst = SpawnPrefab(creature)
            if creature_inst then
                local x, y, z = eater.Transform:GetWorldPosition()
                creature_inst.Transform:SetPosition(x, y, z)
            end

            -- Programa la próxima generación
            eater:DoTaskInTime(spawn_period, function() spawn_crows_or_spiders(eater, spawn_count + 1) end)
        end

        -- Comienza el ciclo de generación
        spawn_crows_or_spiders(eater, 1)
		
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
                local items = owner.components.inventory:FindItems(function(item) return item.prefab == "espineforest" end)
                for _, item in ipairs(items) do
                    owner.components.inventory:DropItem(item)
                end
            end
        end
    end)

    return inst
end

return  Prefab("common/inventory/espineforest", MainFunction, Assets)
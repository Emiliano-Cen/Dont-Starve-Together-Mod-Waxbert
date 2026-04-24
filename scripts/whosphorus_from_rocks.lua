local function AddWhosphorusLoot(inst, worker)
    if worker.prefab == "waxbert" then
        -- Define la cantidad de whosphorus que cae dependiendo del tipo de roca
        local whosphorus_amount = 0
        if inst.prefab == "rock1" then -- Boulder
            whosphorus_amount = math.random(1, 2)
        elseif inst.prefab == "rock2" then -- Gold Vein
            whosphorus_amount = math.random(0, 1)
        elseif inst.prefab == "rock_flintless" then -- Flintless
            whosphorus_amount = math.random(2, 3)
        end

        -- Añadir el whosphorus al loot de la roca
        for i = 1, whosphorus_amount do
            local x, y, z = inst.Transform:GetWorldPosition()
            local whosphorus = GLOBAL.SpawnPrefab("whosphorus")
            if whosphorus then
                whosphorus.Transform:SetPosition(x + math.random() * 2 - 1, y, z + math.random() * 2 - 1)
            end
        end
    end
end

-- Añadir la lógica a las rocas para que, además de su loot normal, suelten whosphorus si las trabaja Waxbert
local function AddWhosphorusLogicToRocks()
    local rocks = {"rock1", "rock2", "rock_flintless"}

    for _, rock_prefab in ipairs(rocks) do
        AddPrefabPostInit(rock_prefab, function(inst)
            if inst.components.workable ~= nil then
                -- Guardar el callback original de `onfinish` que controla cuando la roca se rompe
                local old_onfinish = inst.components.workable.onfinish

                -- Añadir una nueva función para cuando la roca se rompe
                inst.components.workable:SetOnFinishCallback(function(inst, worker)
                    -- Llamar a la función original para asegurar que se rompa la roca y suelte su loot normal
                    if old_onfinish ~= nil then
                        old_onfinish(inst, worker)
                    end
                    -- Verificar si Waxbert es quien está picando la roca y agregar whosphorus
                    AddWhosphorusLoot(inst, worker)
                end)
            end
        end)
    end
end

-- Llamar a la función para agregar la lógica a las rocas
AddWhosphorusLogicToRocks()

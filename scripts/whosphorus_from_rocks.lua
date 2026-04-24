local function AddWhosphorusLoot(inst, worker)
    if worker.prefab == "waxbert" then
        local whosphorus_amount = 0
        if inst.prefab == "rock1" then 
            whosphorus_amount = math.random(1, 2)
        elseif inst.prefab == "rock2" then
            whosphorus_amount = math.random(0, 1)
        elseif inst.prefab == "rock_flintless" then 
            whosphorus_amount = math.random(2, 3)
        end


        for i = 1, whosphorus_amount do
            local x, y, z = inst.Transform:GetWorldPosition()
            local whosphorus = GLOBAL.SpawnPrefab("whosphorus")
            if whosphorus then
                whosphorus.Transform:SetPosition(x + math.random() * 2 - 1, y, z + math.random() * 2 - 1)
            end
        end
    end
end


local function AddWhosphorusLogicToRocks()
    local rocks = {"rock1", "rock2", "rock_flintless"}

    for _, rock_prefab in ipairs(rocks) do
        AddPrefabPostInit(rock_prefab, function(inst)
            if inst.components.workable ~= nil then

                local old_onfinish = inst.components.workable.onfinish

                inst.components.workable:SetOnFinishCallback(function(inst, worker)

                    if old_onfinish ~= nil then
                        old_onfinish(inst, worker)
                    end

                    AddWhosphorusLoot(inst, worker)
                end)
            end
        end)
    end
end


AddWhosphorusLogicToRocks()

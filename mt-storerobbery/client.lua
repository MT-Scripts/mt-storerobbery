local QBCore = exports['qb-core']:GetCoreObject()

-- Event for robberies
RegisterNetEvent('mt-storerobbery:client:RoubarParteleira')
AddEventHandler("mt-storerobbery:client:RoubarParteleira", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownParteleiras", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("parteleira", "SEARCHING SHELF...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("mt-storerobbery:server:ItensParteleiras")
        TriggerServerEvent('mt-storerobbery:Server:CooldownParteleiras')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("This store was recently robber and left  empty...")
        end
    end)
end)

RegisterNetEvent('mt-storerobbery:client:RoubarParteleira2')
AddEventHandler("mt-storerobbery:client:RoubarParteleira2", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownParteleiras2", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("parteleira", "SEARCHING SHELF...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("mt-storerobbery:server:ItensParteleiras")
        TriggerServerEvent('mt-storerobbery:Server:CooldownParteleiras2')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("This store was recently robber and left  empty...")
        end
    end)
end)

-- Event para roubar registadoras
RegisterNetEvent('mt-storerobbery:client:RoubarRegistadora')
AddEventHandler("mt-storerobbery:client:RoubarRegistadora", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownRegistadora", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("registadora", "SEARCHING CASH REGISTER...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("mt-storerobbery:server:ItensRegistadoras")
        TriggerServerEvent('mt-storerobbery:Server:CooldownRegistadora')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("This store was recently robber and left  empty...")
        end
    end)
end)

-- Event para roubar cofres
RegisterNetEvent('mt-storerobbery:client:RoubarCofre')
AddEventHandler("mt-storerobbery:client:RoubarCofre", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownCofre", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("cofre", "SEARCHING SAFE...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("mt-storerobbery:server:ItensCofre")
        TriggerServerEvent('mt-storerobbery:Server:CooldownCofre')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("This store was recently robber and left  empty...")
        end
    end)
end)

-- Function de alerta a policia
function PoliceCall()
    local chance = 75
    if GetClockHours() >= 0 and GetClockHours() <= 6 then
        chance = 50
    end
    if math.random(1, 100) <= chance then
        TriggerServerEvent('police:server:policeAlert', 'STORE ROBBERY IN PROGRESS')
    end
end
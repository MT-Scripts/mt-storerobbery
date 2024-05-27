local QBCore = exports['qb-core']:GetCoreObject()

-- \\ Functions
function Dispatch()
    if Config.Dispatch == 'qb' then
        TriggerServerEvent('police:server:policeAlert', 'STORE ROBBERY IN PROGRESS')
    elseif Config.Dispatch == 'ps-dispatch' then
        exports['ps-dispatch']:StoreRobbery(camId)
    elseif Config.Dispatch == 'cd_dispatch' then
        local data = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = { 'police' },
            coords = data.coords,
            title = '10-9 Store Robbery',
            message = 'Store Robbery Going On',
            flash = 0,
            unique_id = data.unique_id,
            sound = 1,
            blip = {
                sprite = 51,
                scale = 1.2,
                colour = 1,
                flashes = false,
                text = '10-9 Store Robbery',
                time = 5,
                radius = 0,
            }
        })
    end
end

function PoliceCall()
    local chance = 75
    if GetClockHours() >= 0 and GetClockHours() <= 6 then
        chance = 50
    end
    if math.random(1, 100) <= chance then
        Dispatch()
    end
end

function RoubarParteleiraSuccess()
    PoliceCall()
    TriggerServerEvent("mt-storerobbery:server:ItensParteleiras")
    TriggerServerEvent('mt-storerobbery:Server:CooldownParteleiras')
    StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
    ClearPedTasks(playerPed)
end

function RoubarParteleiraFail()
    local pos = GetEntityCoords(PlayerPedId())
    local playerPed = PlayerPedId()
    QBCore.Functions.Notify("Failed!", "error")
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end



-- Event for robberies
RegisterNetEvent('mt-storerobbery:client:RoubarParteleira')
AddEventHandler("mt-storerobbery:client:RoubarParteleira", function()
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
        if Config.Minigame == 'qb-lock' then
            local success = exports['qb-lock']:StartLockPickCircle(1,30)
            if success then RoubarParteleiraSuccess() else RoubarParteleiraFail() end
        elseif Config.Minigame == 'ox_lib' then
            local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}}, {'w', 'a', 's', 'd'})
            if success then RoubarParteleiraSuccess() else RoubarParteleiraFail() end
        elseif Config.Minigame == 'ps-ui' then
            local success = exports['ps-ui']:Circle(function(success)
            if success then RoubarParteleiraSuccess() else RoubarParteleiraFail() end end, 2, 20)          
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
        if Config.Minigame == 'qb-lock' then
            local success = exports['qb-lock']:StartLockPickCircle(1,30)
            if success then RoubarParteleiraSuccess() else RoubarParteleiraFail() end
        elseif Config.Minigame == 'ox_lib' then
            local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}}, {'w', 'a', 's', 'd'})
            if success then RoubarParteleiraSuccess() else RoubarParteleiraFail() end
        elseif Config.Minigame == 'ps-ui' then
            local success = exports['ps-ui']:Circle(function(success)
            if success then RoubarParteleiraSuccess() else RoubarParteleiraFail() end end, 2, 20)          
        end
    end)
    else
        QBCore.Functions.Notify("This store was recently robber and left empty...")
        end
    end)
end)

function RoubarRegistadoraSuccess()
    PoliceCall()
    TriggerServerEvent("mt-storerobbery:server:ItensRegistadoras")
    TriggerServerEvent('mt-storerobbery:Server:CooldownRegistadora')
    StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
    ClearPedTasks(playerPed)
end

function RoubarRegistadoraFail()
    QBCore.Functions.Notify("Failed!", "error")
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end

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
        if Config.Minigame == 'qb-lock' then
            local success = exports['qb-lock']:StartLockPickCircle(1,30)
            if success then RoubarRegistadoraSuccess() else RoubarRegistadoraFail() end
        elseif Config.Minigame == 'ox_lib' then
            local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}}, {'w', 'a', 's', 'd'})
            if success then RoubarRegistadoraSuccess() else RoubarRegistadoraFail() end
        elseif Config.Minigame == 'ps-ui' then
            local success = exports['ps-ui']:Circle(function(success)
            if success then RoubarRegistadoraSuccess() else RoubarRegistadoraFail() end end, 2, 20)          
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


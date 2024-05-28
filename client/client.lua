local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = 0


RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)


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
    Notify(locale('failed'), "error")
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end



-- Event for robberies
RegisterNetEvent('mt-storerobbery:client:RoubarParteleira')
AddEventHandler("mt-storerobbery:client:RoubarParteleira", function()
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownParteleiras", function(cooldown)
        if not cooldown and CurrentCops >= Config.requiredCopsCount then
    QBCore.Functions.Progressbar("parteleira", locale('searching_shelf'), 5000, false, true, {
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
elseif cooldown then
    Notify(locale('empty'))
else
    Notify(locale('error_no_police'))
    end
    end)
end)

RegisterNetEvent('mt-storerobbery:client:RoubarParteleira2')
AddEventHandler("mt-storerobbery:client:RoubarParteleira2", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownParteleiras2", function(cooldown)
        if not cooldown and CurrentCops >= Config.requiredCopsCount then
    QBCore.Functions.Progressbar("parteleira", locale('searching_shelf'), 5000, false, true, {
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
elseif cooldown then
    Notify(locale('empty'))
else
    Notify(locale('error_no_police'))
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
    local pos = GetEntityCoords(PlayerPedId())
    local playerPed = PlayerPedId()
    Notify(locale('failed'), "error")
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end

-- Event para roubar registadoras
RegisterNetEvent('mt-storerobbery:client:RoubarRegistadora')
AddEventHandler("mt-storerobbery:client:RoubarRegistadora", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownRegistadora", function(cooldown)
        if not cooldown and CurrentCops >= Config.requiredCopsCount then
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
elseif cooldown then
        Notify(locale('empty'))
    else
        Notify(locale('error_no_police'))
        end
    end)
end)


function RoubarCofreSuccess()
    PoliceCall()
    TriggerServerEvent("mt-storerobbery:server:ItensCofre")
    TriggerServerEvent('mt-storerobbery:Server:CooldownCofre')
    StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
    ClearPedTasks(playerPed)
end

function RoubarCofreFail()
    local pos = GetEntityCoords(PlayerPedId())
    local playerPed = PlayerPedId()
    Notify(locale('failed'), 'error')
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end

-- Event para roubar cofres
RegisterNetEvent('mt-storerobbery:client:RoubarCofre')
AddEventHandler("mt-storerobbery:client:RoubarCofre", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownCofre", function(cooldown)
        if not cooldown and CurrentCops >= Config.requiredCopsCount then
    QBCore.Functions.Progressbar("cofre", locale('searching_safe'), 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        if Config.Safe_Config.Minigame == 'ps-ui' then
            if Config.Safe_Config.Minigame_Type == 'Scrambler' then
            exports['ps-ui']:Scrambler(function(success)
            if success then RoubarCofreSuccess() else RoubarCofreFail() end end, "numeric", 30, 0) 
            elseif Config.Safe_Config.Minigame_Type  == "Thermite" then
                exports['ps-ui']:Thermite(function(success)
                if success then RoubarCofreSuccess() else RoubarCofreFail() end end, 10, 5, 3) 
            end
        else
        if Config.Minigame == 'qb-lock' then
            local success = exports['qb-lock']:StartLockPickCircle(1,30)
            if success then RoubarCofreSuccess() else RoubarCofreFail() end
        elseif Config.Minigame == 'ox_lib' then
            local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}}, {'w', 'a', 's', 'd'})
            if success then RoubarCofreSuccess() else RoubarCofreFail() end
        elseif Config.Minigame == 'ps-ui' then
            local success = exports['ps-ui']:Circle(function(success)
            if success then RoubarCofreSuccess() else RoubarCofreFail() end end, 2, 20)          
        end
        end
    end)
elseif cooldown then
    Notify(locale('empty'))
else
    Notify(locale('error_no_police'))
    end
    end)
end)


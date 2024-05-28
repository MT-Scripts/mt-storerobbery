local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = 0


RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)


function RobshelfSuccess()
    PoliceCall()
    TriggerServerEvent("mt-storerobbery:server:ItemShelf")
    TriggerServerEvent('mt-storerobbery:Server:CooldownShelf')
    StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
    ClearPedTasks(playerPed)
end

function RobshelfFail()
    local pos = GetEntityCoords(PlayerPedId())
    local playerPed = PlayerPedId()
    Notify(locale('failed'), "error")
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end



-- Event for robberies Shelf
RegisterNetEvent('mt-storerobbery:client:Robshelf')
AddEventHandler('mt-storerobbery:client:Robshelf', function()
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownShelf", function(cooldown)
        if not cooldown and CurrentCops >= Config.requiredCopsCount then
            QBCore.Functions.Progressbar("shelf", locale('searching_shelf'), 5000, false, true, {
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
                    if success then RobshelfSuccess() else RobshelfFail() end
                elseif Config.Minigame == 'ox_lib' then
                    local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}}, {'w', 'a', 's', 'd'})
                    if success then RobshelfSuccess() else RobshelfFail() end
                elseif Config.Minigame == 'ps-ui' then
                    local success = exports['ps-ui']:Circle(function(success)
                    if success then RobshelfSuccess() else RobshelfFail() end end, 2, 20)          
                end
            end)
            elseif cooldown then
                Notify(locale('empty'))
            else
                Notify(locale('error_no_police'))
        end
        
    end)
    
end)

function Robshelf2Success()
    PoliceCall()
    TriggerServerEvent("mt-storerobbery:server:ItemShelf")
    TriggerServerEvent('mt-storerobbery:Server:CooldownShelf2')
    StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
    ClearPedTasks(playerPed)
end

function Robshelf2Fail()
    local pos = GetEntityCoords(PlayerPedId())
    local playerPed = PlayerPedId()
    Notify(locale('failed'), "error")
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end


RegisterNetEvent('mt-storerobbery:client:Robshelf2')
AddEventHandler('mt-storerobbery:client:Robshelf2', function()
    QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownShelf2", function(cooldown)
        if not cooldown and CurrentCops >= Config.requiredCopsCount then
            QBCore.Functions.Progressbar("shelf2", locale('searching_shelf'), 5000, false, true, {
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
                    if success then Robshelf2Success() else Robshelf2Fail() end
                elseif Config.Minigame == 'ox_lib' then
                    local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}}, {'w', 'a', 's', 'd'})
                    if success then Robshelf2Success() else Robshelf2Fail() end
                elseif Config.Minigame == 'ps-ui' then
                    local success = exports['ps-ui']:Circle(function(success)
                    if success then Robshelf2Success() else Robshelf2Fail() end end, 2, 20)          
                end
            end)
            elseif cooldown then
                Notify(locale('empty'))
            else
                Notify(locale('error_no_police'))
        end
        
    end)
    
end)

function RobRegisterSuccess()
    PoliceCall()
    TriggerServerEvent("mt-storerobbery:server:ItemsRegister")
    TriggerServerEvent('mt-storerobbery:Server:CooldownRegister')
    StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
    ClearPedTasks(playerPed)
end

function RobRegisterFail()
    local pos = GetEntityCoords(PlayerPedId())
    local playerPed = PlayerPedId()
    Notify(locale('failed'), "error")
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end

-- \\ Event For Rob Register
RegisterNetEvent('mt-storerobbery:client:RobRegister')
AddEventHandler("mt-storerobbery:client:RobRegister", function()
     local lockpick = Hasitem(Config.Required_Registers_item, 1)
     if lockpick then
        QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownRegister", function (cooldown)
            if not cooldown and CurrentCops >= Config.requiredCopsCount then
                QBCore.Functions.Progressbar("Register", locale('searching_register'), 5000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@break_in@0h@p_m_one@",
                    anim = "low_force_entry_ds",
                    flags = 16,
                }, {}, {}, function() 
                    if Config.Minigame == 'qb-lock' then
                        local success = exports['qb-lock']:StartLockPickCircle(1,30)
                        if success then RobRegisterSuccess() else RobRegisterFail() end
                        elseif Config.Minigame == 'ox_lib' then
                            local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}}, {'w', 'a', 's', 'd'})
                            if success then RobRegisterSuccess() else RobRegisterFail() end
                            elseif Config.Minigame == 'ps-ui' then
                                local success = exports['ps-ui']:Circle(function(success)
                                    if success then RobRegisterSuccess() else RobRegisterFail() end end, 2, 20) 
                    end
                end)
            elseif cooldown then
                Notify(locale('empty'))
            else
                Notify(locale('error_no_police'))
            end
        end)
         else
             Notify(locale('error_no_item'), "error")
     end
end)

function RobSafeSuccess()
    PoliceCall()
    TriggerServerEvent("mt-storerobbery:server:ItemSafe")
    TriggerServerEvent('mt-storerobbery:Server:CooldownSafe')
    StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
    ClearPedTasks(playerPed)
end

function RobSafeFail()
    local pos = GetEntityCoords(PlayerPedId())
    local playerPed = PlayerPedId()
    Notify(locale('failed'), 'error')
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end

-- Event for Rob Safe 
RegisterNetEvent('mt-storerobbery:client:RobSafe')
AddEventHandler("mt-storerobbery:client:RobSafe", function()
    local SafeItem = Hasitem(Config.Required_Safe_item, 1)
    if SafeItem then
        QBCore.Functions.TriggerCallback("mt-storerobbery:CooldownSafe",function(cooldown)
            if not cooldown and CurrentCops >= Config.requiredCopsCount then
                QBCore.Functions.Progressbar("safe", locale('searching_safe'), 5000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mini@repair",
                    anim = "fixing_a_player",
                    flags = 16,
                }, {}, {}, function ()
                    if Config.Safe_Config.Minigame == 'ps-ui' then
                        if Config.Safe_Config.Minigame_Type == 'Scrambler' then
                        exports['ps-ui']:Scrambler(function(success)
                        if success then RobSafeSuccess() else RobSafeFail() end end, "numeric", 30, 0) 
                        elseif Config.Safe_Config.Minigame_Type  == "Thermite" then
                            exports['ps-ui']:Thermite(function(success)
                            if success then RobSafeSuccess() else RobSafeFail() end end, 10, 5, 3) 
                        end
                    else
                    if Config.Minigame == 'qb-lock' then
                        local success = exports['qb-lock']:StartLockPickCircle(1,30)
                        if success then RobSafeSuccess() else RobSafeFail() end
                    elseif Config.Minigame == 'ox_lib' then
                        local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}}, {'w', 'a', 's', 'd'})
                        if success then RobSafeSuccess() else RobSafeFail() end
                    elseif Config.Minigame == 'ps-ui' then
                        local success = exports['ps-ui']:Circle(function(success)
                        if success then RobSafeSuccess() else RobSafeFail() end end, 2, 20)          
                    end
                    end
                end)
                elseif cooldown then
                    Notify(locale('empty'))
                else
                    Notify(locale('error_no_police'))
            end
            
        end)
        else
            Notify(locale('error_no_item'), "error")
    end
end)
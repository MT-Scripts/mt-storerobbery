
local QBCore = exports['qb-core']:GetCoreObject()

-- \\ Dispatch
Dispatch = function()
    if Config.Dispatch == 'qb' then
        TriggerServerEvent('police:server:policeAlert', locale('police_notification'))
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

PoliceCall = function()
    local chance = 75
    if GetClockHours() >= 0 and GetClockHours() <= 6 then
        chance = 50
    end
    if math.random(1, 100) <= chance then
        Dispatch()
    end
end

-- \\ Notify
Notify = function(text, type)
    if Config.Notify == 'qb' then
        QBCore.Functions.Notify(text, type)
    elseif Config.Notify == 'ox' then
        lib.notify({ description = text, type = type })
    end
end

Hasitem = function(source, item, ammount)
    if Config.Inventory == 'qb' then
        return exports['qb-inventory']:HasItem(source, item, ammount)
    end
end
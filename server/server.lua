local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = false
local cashA = Config.Registers_Reward.Min
local cashB = Config.Registers_Reward.Max

-- Itens dados ao roubar as parteleiras
RegisterServerEvent('mt-storerobbery:server:ItemShelf', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local quantity = math.random(Config.Shelf_Reward.Min, Config.Shelf_Reward.Max)
    if prob < 30 then
        if Player.Functions.AddItem(Config.Shelf_Reward.Reward_1, quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["water_bottle"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Your pockets seem to weigh too much!', 'error')
        end  
    elseif prob >= 30 and prob < 40 then
        if Player.Functions.AddItem(Config.Shelf_Reward.Reward_2, quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["sandwich"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Your pockets seem to weigh too much!', 'error')
        end 
    elseif prob >= 50 and prob < 60 then
        if Player.Functions.AddItem(Config.Shelf_Reward.Reward_3, quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["lighter"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Your pockets seem to weigh too much!', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'This Shelf is empty...', 'error')
    end      
end)

-- Items For Cash Register
RegisterServerEvent('mt-storerobbery:server:ItemsRegister', function()
	local Player =  QBCore.Functions.GetPlayer(source)
    local bags = Config.Registers_Reward.Total_Bags
	local info = {
		worth = math.random(cashA, cashB)
	}
	Player.Functions.AddItem(Config.Registers_Reward.Item, bags, false, info)
end)

-- Itens dados ao roubar o cofre
RegisterServerEvent('mt-storerobbery:server:ItemSafe', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local quantity = math.random(Config.Safe_Reward.Min, Config.Safe_Reward.Max)
    if prob < 30 then
        if Player.Functions.AddItem(Config.Safe_Reward.Reward_1, quantity) then
        else
            TriggerClientEvent('QBCore:Notify', src, 'Your pockets seem to weigh too much!', 'error')
        end  
    elseif prob >= 50 and prob < 60 then
        if Player.Functions.AddItem(Config.Safe_Reward.Reward_2, quantity) then
        else
            TriggerClientEvent('QBCore:Notify', src, 'Your pockets seem to weigh too much!', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'This safe is empty...', 'error')
    end      
end)

-- Cooldown
RegisterServerEvent('mt-storerobbery:Server:CooldownShelf')
AddEventHandler('mt-storerobbery:Server:CooldownShelf', function()
    CooldownShelf = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownShelf = false
        end
    end
end)

RegisterServerEvent('mt-storerobbery:Server:CooldownShelf2')
AddEventHandler('mt-storerobbery:Server:CooldownShelf2', function()
    CooldownShelf2 = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownShelf2 = false
        end
    end
end)

RegisterServerEvent('mt-storerobbery:Server:CooldownRegister')
AddEventHandler('mt-storerobbery:Server:CooldownRegister', function()
    CooldownRegister = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownRegister = false
        end
    end
end)

RegisterServerEvent('mt-storerobbery:Server:CooldownSafe')
AddEventHandler('mt-storerobbery:Server:CooldownSafe', function()
    CooldownSafe = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownSafe = false
        end
    end
end)

QBCore.Functions.CreateCallback("mt-storerobbery:CooldownShelf",function(source, cb)
    if CooldownShelf then
        cb(true)
    else
        cb(false)
        
    end
end)

QBCore.Functions.CreateCallback("mt-storerobbery:CooldownShelf2",function(source, cb)
    if CooldownShelf2 then
        cb(true)
    else
        cb(false)
        
    end
end)

QBCore.Functions.CreateCallback("mt-storerobbery:CooldownRegister",function(source, cb)
    if CooldownRegister then
        cb(true)
    else
        cb(false)
        
    end
end)

QBCore.Functions.CreateCallback("mt-storerobbery:CooldownSafe",function(source, cb)
    if CooldownSafe then
        cb(true)
    else
        cb(false)
        
    end
end)
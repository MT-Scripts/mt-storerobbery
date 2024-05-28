local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = false
local cashA = Config.Registers_Reward.Min
local cashB = Config.Registers_Reward.Max

-- Itens dados ao roubar as parteleiras
RegisterServerEvent('mt-storerobbery:server:ItensParteleiras', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local quantity = math.random(1, 2)
    if prob < 30 then
        if Player.Functions.AddItem("water_bottle", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["water_bottle"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Your pockets seem to weigh too much!', 'error')
        end  
    elseif prob >= 30 and prob < 40 then
        if Player.Functions.AddItem("sandwich", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["sandwich"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Your pockets seem to weigh too much!', 'error')
        end 
    elseif prob >= 50 and prob < 60 then
        if Player.Functions.AddItem("lighter", quantity) then
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
RegisterServerEvent('mt-storerobbery:Server:CooldownParteleiras')
AddEventHandler('mt-storerobbery:Server:CooldownParteleiras', function()
    CooldownParteleiras = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownParteleiras = false
        end
    end
end)

RegisterServerEvent('mt-storerobbery:Server:CooldownParteleiras2')
AddEventHandler('mt-storerobbery:Server:CooldownParteleiras2', function()
    CooldownParteleiras2 = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownParteleiras2 = false
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

QBCore.Functions.CreateCallback("mt-storerobbery:CooldownParteleiras",function(source, cb)
    if CooldownParteleiras then
        cb(true)
    else
        cb(false)
        
    end
end)

QBCore.Functions.CreateCallback("mt-storerobbery:CooldownParteleiras2",function(source, cb)
    if CooldownParteleiras2 then
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
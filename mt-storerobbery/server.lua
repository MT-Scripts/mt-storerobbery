local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = false
local cashA = 50
local cashB = 150

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
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end  
    elseif prob >= 30 and prob < 40 then
        if Player.Functions.AddItem("sandwich", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["sandwich"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end 
    elseif prob >= 50 and prob < 60 then
        if Player.Functions.AddItem("lighter", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["lighter"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'The Shelf is empty...', 'error')
    end      
end)

-- Itens dados ao roubar a registadora
RegisterServerEvent('mt-storerobbery:server:ItensRegistadoras', function()
    local src = source
	local Player =  QBCore.Functions.GetPlayer(source)
    local bags = 1
	local info = {
		worth = math.random(cashA, cashB)
	}
	Player.Functions.AddItem('markedbills', bags, false, info)
    Player.Functions.RemoveItem("trojan_usb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], "add")
end)

-- Itens dados ao roubar o cofre
RegisterServerEvent('mt-storerobbery:server:ItensCofre', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local quantity = math.random(1, 2)
    if prob < 30 then
        if Player.Functions.AddItem("goldbar", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["goldbar"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end  
    elseif prob >= 50 and prob < 60 then
        if Player.Functions.AddItem("diamond_ring", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["diamond_ring"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'The safe is empty...', 'error')
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

RegisterServerEvent('mt-storerobbery:Server:CooldownRegistadora')
AddEventHandler('mt-storerobbery:Server:CooldownRegistadora', function()
    CooldownRegistadora = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownRegistadora = false
        end
    end
end)

RegisterServerEvent('mt-storerobbery:Server:CooldownCofre')
AddEventHandler('mt-storerobbery:Server:CooldownCofre', function()
    CooldownCofre = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownCofre = false
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

QBCore.Functions.CreateCallback("mt-storerobbery:CooldownRegistadora",function(source, cb)
    if CooldownRegistadora then
        cb(true)
    else
        cb(false)
        
    end
end)

QBCore.Functions.CreateCallback("mt-storerobbery:CooldownCofre",function(source, cb)
    if CooldownCofre then
        cb(true)
    else
        cb(false)
        
    end
end)
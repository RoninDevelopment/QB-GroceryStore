local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('grocery:purchaseItem', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.RemoveMoney('cash', data.itemPrice) then
        Player.Functions.AddItem(data.itemName, 1)
        TriggerClientEvent('QBCore:Notify', src, 'You bought a ' .. data.itemName .. ' for $' .. data.itemPrice, 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'Not enough money!', 'error')
    end
end)

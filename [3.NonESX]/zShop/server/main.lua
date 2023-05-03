ESX = exports["es_extended"]:getSharedObject()


RegisterServerEvent('SpaceShop:giveItem')
AddEventHandler('SpaceShop:giveItem', function(item, count)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local playerMoney = xPlayer.getMoney()
        if playerMoney >= (item.Price * count) then
        xPlayer.addInventoryItem(item.Value, count)
        xPlayer.removeMoney(item.Price * count)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheter ~g~" ..count..  " "  ..item.Label.. "~s~ pour ~g~" ..item.Price * count .. "$")
        Citizen.Wait(6000)
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Banque', '~r~[Débit]~w~', "Vous avez été débiter de ~g~" ..item.Price * count .. "$~w~", 'CHAR_BANK_FLEECA', 9)
    else
        TriggerClientEvent('esx:showNotification', _source, "~r~Vous n'avez assez ~r~d\'argent")
    end
end)
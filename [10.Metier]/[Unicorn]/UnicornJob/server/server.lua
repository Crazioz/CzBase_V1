ESX = exports["es_extended"]:getSharedObject()

TriggerEvent('esx_phone:registerNumber', 'unicorn', 'alerte unicorn', true, true)

TriggerEvent('esx_society:registerSociety', 'unicorn', 'unicorn', 'society_unicorn', 'society_unicorn', 'society_unicorn', {type = 'public'})

RegisterServerEvent('Ouvre:unicorn')
AddEventHandler('Ouvre:unicorn', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Unicorn', '~g~Annonce', '~g~Le Unicorn est ouvert ! Venez profitez avec nous !', 'CHAR_MP_STRIPCLUB_PR', 8)
	end
end)

RegisterServerEvent('Ferme:unicorn')
AddEventHandler('Ferme:unicorn', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Unicorn', '~g~Annonce', '~r~Le Unicorn est fermer pour le moment ! ~r~Revenez Plus tard', 'CHAR_MP_STRIPCLUB_PR', 8)
	end
end)

RegisterServerEvent('Recru:unicorn')
AddEventHandler('Recru:unicorn', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Unicorn', '~g~Annonce', '~y~Recrutement en cours, rendez-vous au Unicorn !', 'CHAR_MP_STRIPCLUB_PR', 8)
	end
end)


-- Coffre 

ESX.RegisterServerCallback('unicorn:playerinventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory
	local all_items = {}
	
	for k,v in pairs(items) do
		if v.count > 0 then
			table.insert(all_items, {label = v.label, item = v.name,nb = v.count})
		end
	end

	cb(all_items)

	
end)


ESX.RegisterServerCallback('unicorn:getStockItems', function(source, cb)
	local all_items = {}
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn', function(inventory)
		for k,v in pairs(inventory.items) do
			if v.count > 0 then
				table.insert(all_items, {label = v.label,item = v.name, nb = v.count})
			end
		end

	end)
	cb(all_items)
end)

RegisterServerEvent('unicorn:putStockItems')
AddEventHandler('unicorn:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local item_in_inventory = xPlayer.getInventoryItem(itemName).count

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn', function(inventory)
		if item_in_inventory >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "- ~g~Dépot\n~s~- ~g~Item ~s~: "..itemName.."\n~s~- ~o~Quantitée ~s~: "..count.."")
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, "~r~Vous n'en avez pas assez sur vous")
		end
	end)
end)

RegisterServerEvent('unicorn:takeStockItems')
AddEventHandler('unicorn:takeStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn', function(inventory)
			xPlayer.addInventoryItem(itemName, count)
			inventory.removeItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "- ~r~Retrait\n~s~- ~g~Item ~s~: "..itemName.."\n~s~- ~o~Quantitée ~s~: "..count.."")
	end)
end)





-- Farm

RegisterNetEvent('recoltecitron') -- ok
AddEventHandler('recoltecitron', function()
    local item = "citron"
    local limiteitem = 50
    local xPlayer = ESX.GetPlayerFromId(source)
    local nbitemdansinventaire = xPlayer.getInventoryItem(item).count
    

    if nbitemdansinventaire >= limiteitem then
        TriggerClientEvent('esx:showNotification', source, "Ta pas assez de place dans ton inventaire!")
        recoltepossible = false
    else
        xPlayer.addInventoryItem(item, 1)
        TriggerClientEvent('esx:showNotification', source, "Récolte en cours...")
		return
    end
end)

RegisterNetEvent('traitementcok')
AddEventHandler('traitementcok', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    local citron = xPlayer.getInventoryItem('citron').count
    local mojito = xPlayer.getInventoryItem('mojito').count

    if mojito > 50 then
        TriggerClientEvent('esx:showNotification', source, '~r~Il semble que tu ne puisses plus porter mojito...')
    elseif citron < 5 then
        TriggerClientEvent('esx:showNotification', source, '~r~Pas assez de citron pour traiter...')
    else
        xPlayer.removeInventoryItem('citron', 5)
        xPlayer.addInventoryItem('mojito', 3)
    end
end)


-- BAR

RegisterNetEvent('bar:BuyEau')
AddEventHandler('bar:BuyEau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 3
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bar:BuyCoca')
AddEventHandler('bar:BuyCoca', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 4
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('cocacola', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


RegisterNetEvent('bar:BuyIceTea')
AddEventHandler('bar:BuyIceTea', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 4
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('icetea', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bar:Buyvodka')
AddEventHandler('bar:Buyvodka', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 4
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('vodka', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bar:Buywhisky')
AddEventHandler('bar:Buywhisky', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 4
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('whisky', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- Nourritures 


RegisterNetEvent('bar:BuyCacahuète')
AddEventHandler('bar:BuyCacahuète', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bolcacahuetes', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bar:Buypistache')
AddEventHandler('bar:Buypistache', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bolpistache', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)
ESX = exports["es_extended"]:getSharedObject()

TriggerEvent('esx_phone:registerNumber', 'mechanic', 'alerte mechanic', true, true)

TriggerEvent('esx_society:registerSociety', 'mechanic', 'mechanic', 'society_mechanic', 'society_mechanic', 'society_mechanic', {type = 'public'})

RegisterServerEvent('Ouvre:mechanic')
AddEventHandler('Ouvre:mechanic', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Benny`s', '~p~Annonce', 'Le Benny`s est désormais ~g~Ouvert~s~!', 'CHAR_LAZLOW', 8)
	end
end)

RegisterServerEvent('Ferme:mechanic')
AddEventHandler('Ferme:mechanic', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Benny`s', '~p~Annonce', 'Le Benny`s est désormais ~r~Fermer~s~!', 'CHAR_LAZLOW', 8)
	end
end)


RegisterServerEvent('esx_mecanojob:prendreitems')
AddEventHandler('esx_mecanojob:prendreitems', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mechanic', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		if count > 0 and inventoryItem.count >= count then

			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', _source, "quantité invalide")
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', _source, 'Objet retiré', count, inventoryItem.label)
			end
		else
			TriggerClientEvent('esx:showNotification', _source, "quantité invalide")
		end
	end)
end)


RegisterNetEvent('esx_mecanojob:stockitem')
AddEventHandler('esx_mecanojob:stockitem', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mechanic', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- does the player have enough of the item?
		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', _source, "Objet déposé "..count..""..inventoryItem.label.."")
		else
			TriggerClientEvent('esx:showNotification', _source, "quantité invalide")
		end
	end)
end)


ESX.RegisterServerCallback('esx_mecanojob:inventairejoueur', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb({items = items})
end)

ESX.RegisterServerCallback('esx_mecanojob:prendreitem', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mechanic', function(inventory)
		cb(inventory.items)
	end)
end)


-- Mission 

RegisterNetEvent("mecano:EndMission")
AddEventHandler("mecano:EndMission", function(job)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.job.name ~= "mechanic" then
        TriggerEvent("AC:Violations", 24, "Event: mecano:EndMission job: "..xPlayer.job.name, source)
        return
    end

    local gain = math.random(150,300)
    xPlayer.addMoney(gain)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
        if account ~= nil then
            societyAccount = account
            societyAccount.addMoney(gain * 2)
        end
    end)

    TriggerClientEvent("esx:showNotification", source, "Vous avez terminé votre mission.\nGain: ~g~"..gain.."~s~€\nGain entreprise: ~g~".. tostring(gain * 2) .."~s~€", "CHAR_LAZLOW", 5000, "danger")
end)


-- Farm

RegisterNetEvent('recolteboulont')
AddEventHandler('recolteboulont', function()
    local item = "boulont"
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

RegisterNetEvent('traitementkitrepa')
AddEventHandler('traitementkitrepa', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    local boulont = xPlayer.getInventoryItem('boulont').count
    local kitrepa = xPlayer.getInventoryItem('kitrepa').count

    if kitrepa > 50 then
        TriggerClientEvent('esx:showNotification', source, '~r~Il semble que tu ne puisses plus porter de boulont...')
    elseif boulont < 3 then
        TriggerClientEvent('esx:showNotification', source, '~r~Pas assez de boulont pour traiter...')
    else
        xPlayer.removeInventoryItem('boulont', 5)
        xPlayer.addInventoryItem('kitrepa', 1)    
    end
end)


RegisterServerEvent('sellkitrepa')
AddEventHandler('sellkitrepa', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local kitrepa = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "kitrepa" then
			kitrepa = item.count
		end
	end
    
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
        societyAccount = account
    end)
    
    if kitrepa > 0 then
        xPlayer.removeInventoryItem('kitrepa', 1)
        xPlayer.addMoney(40)
        societyAccount.addMoney(40)
        TriggerClientEvent('esx:showNotification', xPlayer.source, "~g~Vous avez gagner ~b~40$~g~ pour chaque vente d'un kit de réparation")
        TriggerClientEvent('esx:showNotification', xPlayer.source, "~g~La société gagne ~b~40$~g~ pour chaque vente d'un kit de réparation")
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, "Vous n'avez plus rien à vendre")
    end
end)
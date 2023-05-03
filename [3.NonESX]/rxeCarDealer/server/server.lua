ESX = exports["es_extended"]:getSharedObject()


TriggerEvent('esx_phone:registerNumber', 'cardealer', 'Alerte cardealer', true, true)

TriggerEvent('esx_society:registerSociety', 'cardealer', 'cardealer', 'society_cardealer', 'society_cardealer', {type = 'public'})

ESX.RegisterServerCallback('enos_concess:getStockItems', function(source, cb)
    TriggerEvent('esx_addoninventory:getSharedInventory', 'society_cardealer', function(inventory)
        cb(inventory.items)
    end)
end)

RegisterNetEvent('enos_concess:getStockItem')
AddEventHandler('enos_concess:getStockItem', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_cardealer', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- is there enough in the society?
		if count > 0 and inventoryItem.count >= count then

			-- can the player carry the said amount of x item?
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', _source, 'Objet retiré', count, inventoryItem.label)
		else
			TriggerClientEvent('esx:showNotification', _source, "Quantité invalide")
		end
	end)
end)

ESX.RegisterServerCallback('enos_concess:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb({items = items})
end)

RegisterNetEvent('enos_concess:putStockItems')
AddEventHandler('enos_concess:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_cardealer', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- does the player have enough of the item?
		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			xPlayer.showNotification(_U('have_deposited', count, inventoryItem.name))
		else
			TriggerClientEvent('esx:showNotification', _source, "Quantité invalide")
		end
	end)
end)

ESX.RegisterServerCallback('enos_concess:recuperercategorievehicule', function(source, cb)
    local catevehi = {}

    MySQL.Async.fetchAll('SELECT * FROM vehicle_categories', {}, function(result)
        for i = 1, #result, 1 do
            table.insert(catevehi, {
                name = result[i].name,
                label = result[i].label
            })
        end

        cb(catevehi)
    end)
end)

ESX.RegisterServerCallback('enos_concess:recupererlistevehicule', function(source, cb, categorievehi)
    local catevehi = categorievehi
    local listevehi = {}

    MySQL.Async.fetchAll('SELECT * FROM vehicles WHERE category = @category', {
        ['@category'] = catevehi
    }, function(result)
        for i = 1, #result, 1 do
            table.insert(listevehi, {
                name = result[i].name,
                model = result[i].model,
                price = result[i].price
            })
        end

        cb(listevehi)
    end)
end)

ESX.RegisterServerCallback('enos_concess:verifierplaquedispo', function (source, cb, plate)
    MySQL.Async.fetchAll('SELECT 1 FROM owned_vehicles WHERE plate = @plate', {
        ['@plate'] = plate
    }, function (result)
        cb(result[1] ~= nil)
    end)
end)

RegisterServerEvent('enos_concess:vendrevoiturejoueur')
AddEventHandler('enos_concess:vendrevoiturejoueur', function (playerId, vehicleProps, prix, nom)
    local xPlayer = ESX.GetPlayerFromId(playerId) 
	local levendeur = ESX.GetPlayerFromId(source)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_cardealer', function (account)
            account.removeMoney(prix)
    end)
    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)',
    {
        ['@owner']   = xPlayer.identifier,
        ['@plate']   = vehicleProps.plate,
        ['@vehicle'] = json.encode(vehicleProps)
    }, function (rowsChanged)
    TriggerClientEvent('esx:showNotification', xPlayer.source, "Tu as reçu la voiture ~g~"..nom.."~s~ immatriculé ~g~"..vehicleProps.plate.." pour ~g~" ..prix.. "$")
	sendToDiscordWithSpecialURL("Concessionnaire","Vente d'un véhicule:\n\n__Nom du véhicule vendu :__ "..nom.."\n\n__Avec l'immatriculation :__ "..vehicleProps.plate.." \n\n__L'acheteur :__ "..xPlayer.getName().." \n\n__L'employée :__ "..levendeur.getName(), 16744192, Concess.webhooks)
    end)
end)

RegisterServerEvent('shop:vehicule')
AddEventHandler('shop:vehicule', function(vehicleProps, prix, nom)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_cardealer', function (account)
        account.removeMoney(prix)
end)
    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)', {
        ['@owner']   = xPlayer.identifier,
        ['@plate']   = vehicleProps.plate,
        ['@vehicle'] = json.encode(vehicleProps)
    }, function(rowsChange)
        TriggerClientEvent('esx:showNotification', xPlayer, "Tu as reçu la voiture ~g~"..json.encode(vehicleProps).."~s~ immatriculé ~g~"..vehicleProps.plate.." pour ~g~" ..prix.. "$")
		sendToDiscordWithSpecialURL("Concessionnaire","Achat d'un véhicule:\n\n__Nom du véhicule acheter :__ "..nom.."\n\n__Avec l'immatriculation :__ "..vehicleProps.plate.." \n\n__L'employée :__ "..xPlayer.getName(), 16744192, Concess.webhooks)
    end)
end)

RegisterServerEvent('enos_concess:addToList')
AddEventHandler('enos_concess:addToList', function(target, model, plate)
	local xPlayer, xTarget = ESX.GetPlayerFromId(source), ESX.GetPlayerFromId(target)
	local dateNow = os.date('%Y-%m-%d %H:%M')

	if xPlayer.job.name ~= 'cardealer' then
		print(('esx_vehicleshop: %s attempted to add a sold vehicle to list!'):format(xPlayer.identifier))
		return
	end

	MySQL.Async.execute('INSERT INTO vehicle_sold (client, model, plate, soldby, date) VALUES (@client, @model, @plate, @soldby, @date)', {
		['@client'] = xTarget.getName(),
		['@model'] = model,
		['@plate'] = plate,
		['@soldby'] = xPlayer.getName(),
		['@date'] = dateNow
	})
end)

ESX.RegisterServerCallback('enos_concess:getSoldVehicles', function (source, cb)

	MySQL.Async.fetchAll('SELECT * FROM vehicle_sold', {}, function(result)
		cb(result)
	end)
end)

ESX.RegisterServerCallback('enos_concess:verifsousconcess', function(source, cb, prixvoiture)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_cardealer', function (account)
        if account.money >= prixvoiture then
            cb(true)
        else
            cb(false)
        end
    end)
end)

RegisterServerEvent('eConcess:Ouvert')
AddEventHandler('eConcess:Ouvert', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Concessionnaire', '~b~Annonce', 'Le Concessionnaire est désormais ~g~Ouvert~s~ !', 'CHAR_BIKESITE', 8)
	end
end)

RegisterServerEvent('eConcess:Fermer')
AddEventHandler('eConcess:Fermer', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Concessionnaire', '~b~Annonce', 'Le Concessionnaire est désormais ~r~Fermer~s~ !', 'CHAR_BIKESITE', 8)
	end
end)

RegisterServerEvent('eConcess:Perso')
AddEventHandler('eConcess:Perso', function(msg)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xPlayers    = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Concessionnaire', '~b~Annonce', msg, 'CHAR_BIKESITE', 8)
    end
end)

function sendToDiscordWithSpecialURL (name,message,color,url)
    local DiscordWebHook = url
	local embeds = {
		{
			["title"]=message,
			["type"]="rich",
			["color"] =color,
			["footer"]=  {
			["text"]= "Fataliste RP",
			},
		}
	}
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(Concess.webhooks, function(err, text, headers) end, 'POST', json.encode({ username = "eConcess",embeds = embeds}), { ['Content-Type'] = 'application/json' })
end


---------------- Clef --------------------

--Supprésion au démarrage des double de clés
AddEventHandler('onMySQLReady', function()
	MySQL.Async.fetchAll(
			'SELECT * FROM open_car WHERE NB = @NB',
			{
			['@NB']   = 2
			},
			function(result)
	
	
			for i=1, #result, 1 do
				MySQL.Async.execute(
							'DELETE FROM open_car WHERE id = @id',
							{
								['@id'] = result[i].id
							}
						)
			end
		end)
	end)

ESX.RegisterServerCallback('ddx_vehiclelock:mykey', function(source, cb, plate)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	MySQL.Async.fetchAll(
		'SELECT * FROM open_car WHERE value = @plate AND identifier = @identifier', 
		{
			['@plate'] = plate,
			['@identifier'] = xPlayer.identifier
		},
		function(result)

			local found = false
			if result[1] ~= nil then
				
				if xPlayer.identifier == result[1].identifier then 
					found = true
				end
			end
			if found then
				cb(true)
	
			else
				cb(false)
			end

		end
	)
end)


RegisterServerEvent('ddx_vehiclelock:registerkey')
AddEventHandler('ddx_vehiclelock:registerkey', function(plate, target)
local _source = source
local xPlayer = nil
if target == 'no' then
	 xPlayer = ESX.GetPlayerFromId(_source)
else
	 xPlayer = ESX.GetPlayerFromId(target)
end
MySQL.Async.execute(
		'INSERT INTO open_car (label, value, NB, got, identifier) VALUES (@label, @value, @NB, @got, @identifier)',
		{
			['@label']		  = 'Cles',
			['@value']  	  = plate,
			['@NB']   		  = 1,
			['@got']  		  = 'true',
			['@identifier']   = xPlayer.identifier

		},
		function(result)
			    TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'Clef', 'Concessionnaire', "Vous avez un nouvelle pair de clés !", 'CHAR_BIKESITE', 2)
			    TriggerClientEvent('esx:showAdvancedNotification', _source, 'Clef', 'Concessionnaire', "Clés bien enregistrer ! ", 'CHAR_BIKESITE', 2)
		end)

end)


ESX.RegisterServerCallback('ddx_vehiclelock:getVehiclesnokey', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
MySQL.Async.fetchAll(
		'SELECT * FROM open_car WHERE identifier = @owner',
		{
			['@owner'] = xPlayer.identifier
		},
		function(result2)

			MySQL.Async.fetchAll(
		'SELECT * FROM owned_vehicles WHERE owner = @owner',
		{
			['@owner'] = xPlayer.identifier
		},
		function(result)

			local vehicles = {}
			
			for i=1, #result, 1 do
				local found = false
				local vehicleData = json.decode(result[i].vehicle)
				for j=1, #result2, 1 do
					if result2[j].value == vehicleData.plate then
						
						found = true
						
					end
				end

				if found ~= true then
					
					table.insert(vehicles, vehicleData)
				end

			end
			cb(vehicles)
		end
	)
		end
	)
end)

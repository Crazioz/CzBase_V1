ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('esx_outlawalert:carJackInProgress')
AddEventHandler('esx_outlawalert:carJackInProgress', function(targetCoords, streetName, vehicleLabel, playerGender)
    mytype = 'police'
    data = {["code"] = '10-16', ["name"] = 'Vol d\'un(e) '..vehicleLabel..'.', ["loc"] = streetName}
    length = 3500
    TriggerClientEvent('esx_outlawalert:outlawNotify', -1, mytype, data, length)
    TriggerClientEvent('esx_outlawalert:combatInProgress', -1, targetCoords)
    TriggerClientEvent('esx_outlawalert:carJackInProgress', -1, targetCoords)
end, false)

RegisterServerEvent('esx_outlawalert:combatInProgress')
AddEventHandler('esx_outlawalert:combatInProgress', function(targetCoords, streetName, playerGender)
	mytype = 'police'
    data = {["code"] = '10-10', ["name"] = 'Combat en cours', ["loc"] = streetName}
    length = 3500
    TriggerClientEvent('esx_outlawalert:outlawNotify', -1, mytype, data, length)
    TriggerClientEvent('esx_outlawalert:combatInProgress', -1, targetCoords)
end, false)

RegisterServerEvent('esx_outlawalert:gunshotInProgress')
AddEventHandler('esx_outlawalert:gunshotInProgress', function(targetCoords, streetName, playerGender)
	mytype = 'police'
    data = {["code"] = '10-11', ["name"] = 'Coup de feu en cours', ["loc"] = streetName}
    length = 3500
    TriggerClientEvent('esx_outlawalert:outlawNotify', -1, mytype, data, length)
    TriggerClientEvent('esx_outlawalert:gunshotInProgress', -1, targetCoords)
end, false)

ESX.RegisterServerCallback('esx_outlawalert:isVehicleOwner', function(source, cb, plate)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
		['@owner'] = xPlayer.identifier,
		['@plate'] = plate
	}, function(result)
		if result[1] then
			cb(result[1].owner == xPlayer.identifier)
		else
			cb(false)
		end
	end)
end)

RegisterServerEvent('esx_outlawalert:vangelicoRobbery')
AddEventHandler('esx_outlawalert:vangelicoRobbery', function(streetName, playerGender)
	mytype = 'police'
    data = {["code"] = '10-65', ["name"] = 'Vol dans la bijouterie Vangelico', ["loc"] = 'Rockford Dr'}
    length = 3500
    TriggerClientEvent('esx_outlawalert:outlawNotify', -1, mytype, data, length)
    TriggerClientEvent('esx_outlawalert:vangelicoRobbery', -1 )
end, false)

RegisterServerEvent('esx_outlawalert:storeRobbery')
AddEventHandler('esx_outlawalert:storeRobbery', function(location)
    mytype = 'police'
    data = {["code"] = '10-65', ["name"] = 'Vol de magasin', ["loc"] = location}
    length = 3500
    TriggerClientEvent('esx_outlawalert:outlawNotify', -1, mytype, data, length)
end, false)

RegisterServerEvent('esx_outlawalert:cameraTriggered')
AddEventHandler('esx_outlawalert:cameraTriggered', function(camera, location)
    mytype = 'police'
    data = {["code"] = camera, ["name"] = 'Camera ' .. camera .. ' Triggered', ["loc"] = location}
    length = 3500
    TriggerClientEvent('esx_outlawalert:outlawNotify', -1, mytype, data, length)
end, false)


-- In Progress :)
RegisterServerEvent('outlaw:gettime')
AddEventHandler('outlaw:gettime', function()
    local time = os.time()
    TriggerEvent('outlaw:shootingWorking', time)
end)

RegisterServerEvent('outlaw:gettime2')
AddEventHandler('outlaw:gettime2', function()
    local time = os.time()
    TriggerClientEvent('outlaw:shootingWorking2', time)
end)

ESX = exports["es_extended"]:getSharedObject()

function getIdentity(source, callback)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT identifier, firstname, lastname, dateofbirth, sex, height FROM `users` WHERE `identifier` = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		if result[1].firstname ~= nil then
			local data = {
				identifier	= result[1].identifier,
				nickname	= result[1].name,
				firstname	= result[1].firstname,
				lastname	= result[1].lastname,
				dateofbirth	= result[1].dateofbirth,
				sex			= result[1].sex,
				height		= result[1].height
			}

			callback(data)
		else
			local data = {
				identifier	= '',
				nickname	= '',
				firstname	= '',
				lastname	= '',
				dateofbirth	= '',
				sex			= '',
				height		= ''
			}

			callback(data)
		end
	end)
end

function setIdentity(identifier, data, callback)
	MySQL.Async.execute('UPDATE `users` SET `name` = @nickname, `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier', {
		['@identifier']		= identifier,
		['@nickname']		= data.name,
		['@firstname']		= data.firstname,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(rowsChanged)
		if callback then
			callback(true)
		end
	end)
end

function updateIdentity(playerId, data, callback)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	MySQL.Async.execute('UPDATE `users` SET `name` = @nickname, `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier', {
		['@identifier']		= xPlayer.identifier,
		['@nickname']		= data.name,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(rowsChanged)
		if callback then
			TriggerEvent('esx_identity:characterUpdated', playerId, data)
			callback(true)
		end
	end)
end

function deleteIdentity(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.execute('UPDATE `users` SET `name` = @nickname, `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier', {
		['@identifier']		= xPlayer.identifier,
		['@nickname']		= '',
		['@firstname']		= '',
		['@lastname']		= '',
		['@dateofbirth']	= '',
		['@sex']			= '',
		['@height']			= '',
	})
end

RegisterServerEvent('esx_identity:setIdentity')
AddEventHandler('esx_identity:setIdentity', function(data, myIdentifiers)
	local xPlayer = ESX.GetPlayerFromId(source)
	setIdentity(myIdentifiers.steamid, data, function(callback)
		if callback then
			TriggerClientEvent('esx_identity:identityCheck', myIdentifiers.playerid, true)
			TriggerEvent('esx_identity:characterUpdated', myIdentifiers.playerid, data)
		else
			xPlayer.showNotification(_U('failed_identity'))
		end
	end)
end)


RegisterServerEvent('esx_identity:logitall')
AddEventHandler('esx_identity:logitall', function(data, myIdentifiers, playerId)
	local xPlayer = ESX.GetPlayerFromId(source)
	local webhookdata = {
		webhookLink = 'https://discord.com/api/webhooks/947626708729757737/IqZvMY5ASFRiAbg-mf1eL51eQDDngVNwTWtRjnTxFj18ZGzexnyvFJOEbj-oOZkBPQol',
		title = "Character Created",
		color = 62207,
		message =
		'**[User]: **'..xPlayer.source..'\n'..
		'**[ID]: **'..xPlayer.identifier..'\n'..
		'**[First Name]: **'..data.firstname..'\n'..
		'**[Last Name]: **'..data.lastname..'\n'..
		'**[Date of Birth]: **'..data.dateofbirth..'\n'..
		'**[Height]: **'..data.height..'\n'..
		'**[Sex]: **'..data.sex..'\n'
		}
		TriggerEvent('z64_logs:sendWebhook', webhookdata)
end)



AddEventHandler('esx:playerLoaded', function(playerId, xPlayer)
	local myID = {
		steamid = xPlayer.identifier,
		playerid = playerId
	}

	TriggerClientEvent('esx_identity:saveID', playerId, myID)

	getIdentity(playerId, function(data)
		if data.firstname == '' then
			TriggerClientEvent('esx_identity:identityCheck', playerId, false)
			TriggerClientEvent('esx_identity:showRegisterIdentity', playerId)
		else
			TriggerClientEvent('esx_identity:identityCheck', playerId, true)
			TriggerEvent('esx_identity:characterUpdated', playerId, data)
		end
	end)
end)

AddEventHandler('esx_identity:characterUpdated', function(playerId, data)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	if xPlayer then
		xPlayer.setName(('%s %s'):format(data.firstname, data.lastname))
		xPlayer.set('nickname', data.name)
		xPlayer.set('firstName', data.firstname)
		xPlayer.set('lastName', data.lastname)
		xPlayer.set('dateofbirth', data.dateofbirth)
		xPlayer.set('sex', data.sex)
		xPlayer.set('height', data.height)
	end
end)

-- Set all the client side variables for connected users one new time
AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(3000)
		local xPlayers = ESX.GetPlayers()

		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

			if xPlayer then
				local myID = {
					steamid  = xPlayer.identifier,
					playerid = xPlayer.source
				}
	
				TriggerClientEvent('esx_identity:saveID', xPlayer.source, myID)
	
				getIdentity(xPlayer.source, function(data)
					if data.firstname == '' then
						TriggerClientEvent('esx_identity:identityCheck', xPlayer.source, false)
						TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
					else
						TriggerClientEvent('esx_identity:identityCheck', xPlayer.source, true)
						TriggerEvent('esx_identity:characterUpdated', xPlayer.source, data)
					end
				end)
			end
		end
	end
end)

TriggerEvent('es:addCommand', 'register', function(xPlayer, args, showError)
	local xPlayer = ESX.GetPlayerFromId(xPlayer)
	getIdentity(xPlayer.source, function(data)
		if data.firstname ~= '' then
			xPlayer.showNotification(_U('already_registered'))
		else
			TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
		end
	end)
end, {help = _U('show_registration')})

TriggerEvent('es:addCommand', 'char', function(xPlayer, args, showError)
	local xPlayer = ESX.GetPlayerFromId(xPlayer)
	getIdentity(xPlayer.source, function(data)
		if data.firstname == '' then
			xPlayer.showNotification(_U('not_registered'))
		else
			xPlayer.showNotification(_U('active_character', data.firstname, data.lastname))
		end
	end)
end, {help = _U('show_active_character')})


TriggerEvent('es:addCommand', 'chardel', function(xPlayer, args, showError)
	local xPlayer = ESX.GetPlayerFromId(xPlayer)
	getIdentity(xPlayer.source, function(data)
		if data.firstname == '' then
			xPlayer.showNotification(_U('not_registered'))
		else
			deleteIdentity(xPlayer.source)
			xPlayer.showNotification(_U('deleted_character'))
			TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
		end
	end)
end, {help = _U('delete_character')})
local ESX

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('rBlipsBuilder:getPlayerGroup', function(source, cb)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local group = xPlayer.getGroup()
    cb(group)
end)


ESX.RegisterServerCallback('rBlipsBuilder:getAllBlips', function(source, cb)
	local allBlips = {}
	MySQL.Async.fetchAll("SELECT * FROM blipsbuilder", {}, function(data)
        for _,v in pairs(data) do
			table.insert(allBlips, {
                id = v.id,
				name = v.name,
				coords = v.coords,
				type = v.type,
                color = v.color
			})
        end
        cb(allBlips)
    end)
end)


RegisterServerEvent("rBlipsBuilder:createBlips")
AddEventHandler("rBlipsBuilder:createBlips", function(infoB)
    local _src = source
    MySQL.Async.execute('INSERT INTO blipsbuilder (name, coords, type, color) VALUES (@name, @coords, @type, @color)', {
        ['@name'] = infoB.name,
        ['@coords'] = json.encode(infoB.coords),
        ['@type'] = infoB.type,
        ['@color'] = infoB.color
    })
    TriggerClientEvent('esx:showNotification', _src, "Vous avez créé un blips.")
end)


RegisterServerEvent("rBlipsBuilder:deleteBlips")
AddEventHandler("rBlipsBuilder:deleteBlips", function(id)
    local _src = source
    MySQL.Async.execute('DELETE FROM blipsbuilder WHERE id = @id', {
        ['@id'] = id
    })
    TriggerClientEvent('esx:showNotification', _src, "Vous avez supprimé un blips.")
end)
local takingHostage = {}
--takingHostage[source] = targetSource, source is takingHostage targetSource
local takenHostage = {}
--takenHostage[targetSource] = source, targetSource is being takenHostage by source

RegisterServerEvent("TakeHostage:sync")
AddEventHandler("TakeHostage:sync", function(targetSrc)
	local source = source

	TriggerClientEvent("TakeHostage:syncTarget", targetSrc, source)
	takingHostage[source] = targetSrc
	takenHostage[targetSrc] = source
end)

RegisterServerEvent("TakeHostage:releaseHostage")
AddEventHandler("TakeHostage:releaseHostage", function(targetSrc)
	local source = source
	if takenHostage[targetSrc] then 
		TriggerClientEvent("TakeHostage:releaseHostage", targetSrc, source)
		takingHostage[source] = nil
		takenHostage[targetSrc] = nil
	end
end)

RegisterServerEvent("TakeHostage:killHostage")
AddEventHandler("TakeHostage:killHostage", function(targetSrc)
	local source = source
	if takenHostage[targetSrc] then 
		TriggerClientEvent("TakeHostage:killHostage", targetSrc, source)
		takingHostage[source] = nil
		takenHostage[targetSrc] = nil
	end
end)

RegisterServerEvent("TakeHostage:stop")
AddEventHandler("TakeHostage:stop", function(targetSrc)
	local source = source

	if takingHostage[source] then
		TriggerClientEvent("TakeHostage:cl_stop", targetSrc)
		takingHostage[source] = nil
		takenHostage[targetSrc] = nil
	elseif takenHostage[source] then
		TriggerClientEvent("TakeHostage:cl_stop", targetSrc)
		takenHostage[source] = nil
		takingHostage[targetSrc] = nil
	end
end)

AddEventHandler('playerDropped', function(reason)
	local source = source
	
	if takingHostage[source] then
		TriggerClientEvent("TakeHostage:cl_stop", takingHostage[source])
		takenHostage[takingHostage[source]] = nil
		takingHostage[source] = nil
	end

	if takenHostage[source] then
		TriggerClientEvent("TakeHostage:cl_stop", takenHostage[source])
		takingHostage[takenHostage[source]] = nil
		takenHostage[source] = nil
	end
end)

local carrying = {}
--carrying[source] = targetSource, source is carrying targetSource
local carried = {}
--carried[targetSource] = source, targetSource is being carried by source

RegisterServerEvent("CarryPeople:sync")
AddEventHandler("CarryPeople:sync", function(targetSrc)
	local source = source
	local sourcePed = GetPlayerPed(source)
   	local sourceCoords = GetEntityCoords(sourcePed)
	local targetPed = GetPlayerPed(targetSrc)
        local targetCoords = GetEntityCoords(targetPed)
	if #(sourceCoords - targetCoords) <= 3.0 then 
		TriggerClientEvent("CarryPeople:syncTarget", targetSrc, source)
		carrying[source] = targetSrc
		carried[targetSrc] = source
	end
end)

RegisterServerEvent("CarryPeople:stop")
AddEventHandler("CarryPeople:stop", function(targetSrc)
	local source = source

	if carrying[source] then
		TriggerClientEvent("CarryPeople:cl_stop", targetSrc)
		carrying[source] = nil
		carried[targetSrc] = nil
	elseif carried[source] then
		TriggerClientEvent("CarryPeople:cl_stop", carried[source])			
		carrying[carried[source]] = nil
		carried[source] = nil
	end
end)

AddEventHandler('playerDropped', function(reason)
	local source = source
	
	if carrying[source] then
		TriggerClientEvent("CarryPeople:cl_stop", carrying[source])
		carried[carrying[source]] = nil
		carrying[source] = nil
	end

	if carried[source] then
		TriggerClientEvent("CarryPeople:cl_stop", carried[source])
		carrying[carried[source]] = nil
		carried[source] = nil
	end
end)

local pushing = {}
local beingpushed = {}
local skilltrack = {}

lib.callback.register('OT_pushvehicle:startPushing', function(source, netid, direction)
    if netid == nil or direction == nil then return end
    if pushing[source] then return false end
    local vehicle = NetworkGetEntityFromNetworkId(netid)
    if beingpushed[netid] then return false end
    local owner = NetworkGetEntityOwner(vehicle)
    beingpushed[netid] = source
    pushing[source] = owner
    if Config.useOTSkills then skilltrack[source] = os.time() end
    TriggerClientEvent('OT_pushvehicle:startMove', owner, netid, direction, NetworkGetNetworkIdFromEntity(GetPlayerPed(source)))
    return true
end)

RegisterNetEvent('OT_pushvehicle:stopPushing', function(netid)
    local src = source
    if not pushing[src] then return end
    TriggerClientEvent('OT_pushvehicle:stopMove', pushing[src])
    pushing[src] = nil
    beingpushed[netid] = nil
    if Config.useOTSkills then
        local xpgain = math.round((os.time() - skilltrack[src]) / 1.5)
        if xpgain >= 2.0 then exports.OT_skills:addXP(src, 'strength', xpgain <= Config.maxReward and xpgain or Config.maxReward) end
        skilltrack[src] = nil
    end
end)

RegisterNetEvent('OT_pushvehicle:startTurn', function(netid, direction)
    local src = source
    if not pushing[src] then return end
    TriggerClientEvent('OT_pushvehicle:startTurn', pushing[src], netid, direction)
end)

RegisterNetEvent('OT_pushvehicle:stopTurn', function(netid)
    local src = source
    if not pushing[src] then return end
    TriggerClientEvent('OT_pushvehicle:stopTurn', pushing[src], netid)
end)

RegisterNetEvent('OT_pushvehicle:updateOwner', function(netid, direction)
    local src = source
    if not beingpushed[netid] then return end
    if not pushing[beingpushed[netid]] then return end
    local vehicle = NetworkGetEntityFromNetworkId(netid)
    local owner = NetworkGetEntityOwner(vehicle)
    pushing[beingpushed[netid]] = owner
    if not pushing[beingpushed[netid]] then return end
    TriggerClientEvent('OT_pushvehicle:startMove', owner, netid, direction)
end)

RegisterNetEvent('OT_pushvehicle:detach', function(netid)
    if not beingpushed[netid] then return end
    if not pushing[beingpushed[netid]] then return end
    TriggerClientEvent('OT_pushvehicle:detach', beingpushed[netid])
end)

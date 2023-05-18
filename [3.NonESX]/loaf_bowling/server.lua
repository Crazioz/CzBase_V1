local occupiedTracks = {}

RegisterServerEvent('loaf_bowling:start')
AddEventHandler('loaf_bowling:start', function()
    TriggerClientEvent('loaf_bowling:chooseTrack', source, occupiedTracks)
end)

RegisterServerEvent('loaf_bowling:end')
AddEventHandler('loaf_bowling:end', function(track)
    local src, old = source, occupiedTracks
    occupiedTracks = {}
    for k, v in pairs(old) do 
        if v ~= src then
            occupiedTracks[k] = v
        end
    end
    TriggerClientEvent('loaf_bowling:cancel', src)
end)

RegisterServerEvent('loaf_bowling:choose')
AddEventHandler('loaf_bowling:choose', function(track)
    local src = source
    if not occupiedTracks[track] then
        occupiedTracks[track] = src
        TriggerClientEvent('loaf_bowling:play', src, track)
    else
        TriggerClientEvent('loaf_bowling:cancel', src)
    end
end)

AddEventHandler('playerDropped', function()
    local src, old = source, occupiedTracks
    occupiedTracks = {}
    for k, v in pairs(old) do 
        if v ~= src then
            occupiedTracks[k] = v
        end
    end
end)
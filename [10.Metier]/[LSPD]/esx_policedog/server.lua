ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx_policedog:hasClosestDrugs')
AddEventHandler('esx_policedog:hasClosestDrugs', function(playerId)
    local target = ESX.GetPlayerFromId(playerId)
    local src = source
    local inventory = target.inventory
    for i = 1, #inventory do
        for k, v in pairs(Config.Drugs) do
            if inventory[i].name == v and inventory[i].count > 0 then
                TriggerClientEvent('esx_policedog:hasDrugs', src, true)
                return
            end
        end
    end
    TriggerClientEvent('esx_policedog:hasDrugs', src, false)
end)
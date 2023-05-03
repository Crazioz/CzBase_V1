if Config.Player then 
    RegisterNetEvent("inventory:openPlayerInventory", function(id)
        OpenInventory({id = id, type = 'player', title = GetPlayerName(GetPlayerFromServerId(id)), weight = Config.PlayerWeight, timeout = 1000})
    end)
end
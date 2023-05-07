if Config.Player then 
    if Config.PlayerWeight then 
        ESX.RegisterCommand('openinv', 'admin', function(xPlayer, args, showError)
            local target = ESX.GetPlayerFromId(args.id)
            if not target then 
                xPlayer.triggerEvent("inventory:notify", "error", "Le joueur n'existe pas")
                return 
            end
    
            if xPlayer.getIdentifier() == target.getIdentifier() then
                xPlayer.triggerEvent("inventory:notify", "error", "Vous ne pouvez pas voir votre propre inventaire")
                return
            end
    
            if GetPlayerName(args.id) then 
                xPlayer.triggerEvent("inventory:openPlayerInventory", args.id)
            else 
                xPlayer.triggerEvent("inventory:notify", "error", "Le joueur n'existe pas")
            end
        end, false, {help = "Afficher l'inventaire d'un joueur", validate = true, arguments = {
            {name = 'id', help = 'ID serveur du joueur', type = 'number'},
        }})
    else 
        TriggerEvent('es:addGroupCommand', 'openinv', 'admin', function(source, args, user)
            local xPlayer = ESX.GetPlayerFromId(args.id)
            if not xPlayer then return end
    
            local target = ESX.GetPlayerFromId(args.id)
            if not target then 
                TriggerClientEvent("inventory:notify", source, "error", "Le joueur n'existe pas")
                return 
            end
    
            if xPlayer.getIdentifier() == target.getIdentifier() then
                TriggerClientEvent("inventory:notify", source, "error", "Vous ne pouvez pas voir votre propre inventaire")
                return
            end
    
            if GetPlayerName(args.id) then 
                TriggerClientEvent("inventory:openPlayerInventory", source, args.id)
            else 
                TriggerClientEvent("inventory:notify", source, "error", "Le joueur n'existe pas")
            end
        end, function(source, args, user)
            TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Permissions insuffisantes.' } })
        end, {help = "Afficher l'inventaire d'un joueur", params = {{name = "id", help = "ID serveur du joueur"}}})
    end
end
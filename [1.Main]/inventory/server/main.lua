ESX = exports["es_extended"]:getSharedObject()
OpenInventories = {}
Inventories = {}
Drops = {}
dropId = 0

ESX.RegisterServerCallback("inventory:getInventory", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return end

    local inventory, weight, hotbar = GetPlayerInventory(xPlayer)
    cb(inventory, weight, hotbar)
end)

ESX.RegisterServerCallback("inventory:getOtherInventory", function(source, cb, otherInv)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return end

    if otherInv.type == 'shop' then
        local items = {}

        for k,v in pairs(otherInv.shopItems) do
            if v.type == 'weapon' then
                table.insert(items, {
                    type = 'item_weapon',
                    name = v.name,
                    label = ESX.GetWeaponLabel(v.name),
                    count = v.price
                })
            elseif v.type == 'item' then  
                local info = xPlayer.getInventoryItem(v.name)
                if not info then return end
                table.insert(items, {
                    type = 'item_standard',
                    name = v.name,
                    label = info.label or '',
                    count = v.price
                })
            else 
                local info = xPlayer.getInventoryItem(v.name)
                if not info then return end
                table.insert(items, {
                    type = 'item_standard',
                    name = v.name,
                    label = info.label or '',
                    count = v.price
                })
            end
        end

        cb(items, nil)
        return
    end

    if OpenInventories[otherInv.type] == nil then
        OpenInventories[otherInv.type] = {}
    end

    if OpenInventories[otherInv.type][otherInv.id] == nil then
        OpenInventories[otherInv.type][otherInv.id] = {}
    end

    OpenInventories[otherInv.type][otherInv.id][source] = true

    if otherInv.type == 'player' then
        local target = ESX.GetPlayerFromId(otherInv.id)
        if not target then return end
        
        local inventory, weight = GetPlayerInventory(target)
        cb(inventory, weight)
        return
    end

    local inventory, weight = GetInventory(xPlayer, otherInv)
    cb(inventory, weight)
end)

RegisterNetEvent('inventory:moveItemToPlayer', function(item, count, otherInv)
    local src = source

    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    if otherInv.type == 'shop' then
        if item.type == 'item_weapon' then
            if not xPlayer.hasWeapon(item.name) and xPlayer.getMoney() >= item.count then
                xPlayer.removeMoney(item.count)
                xPlayer.addWeapon(item.name, item.count)
                TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> acheté !'):format(count, item.label))
                DiscordLog(xPlayer.getName() .. " a acheté un" .. item.label)
            else 
                TriggerClientEvent('inventory:notify', src, 'error', 'Tu as déjà cette arme !')
            end
        elseif item.type == 'item_standard' then
            if Config.PlayerWeight then
                if xPlayer.canCarryItem(item.name, count) then
                    if xPlayer.getMoney() >= (count * item.count) then
                        xPlayer.removeMoney(count * item.count)
                        xPlayer.addInventoryItem(item.name, count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> acheté !'):format(count, item.label))
                        DiscordLog(xPlayer.getName() .. " a acheté " .. count .. " " .. item.label) 
                    else 
                        TriggerClientEvent('inventory:notify', src, 'error', 'Ne peut pas se permettre cet article!')
                    end
                else 
                    TriggerClientEvent('inventory:notify', src, 'error', 'Inventaire complet!')
                end
            else 
                local newCount = xPlayer.getInventoryItem(item.name).count + count
                if newCount <= xPlayer.getInventoryItem(item.name).limit then
                    if xPlayer.getMoney() >= (count * item.count) then
                        xPlayer.removeMoney(count * item.count)
                        xPlayer.addInventoryItem(item.name, count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> acheté !'):format(count, item.label))
                        DiscordLog(xPlayer.getName() .. " a acheté " .. count .. " " .. item.label)
                    else 
                        TriggerClientEvent('inventory:notify', src, 'error', 'Ne peut pas se permettre cet article!')
                    end
                else 
                    TriggerClientEvent('inventory:notify', src, 'error', 'Limite atteinte')
                end
            end
        end
    elseif otherInv.type == 'player' then 
        local target = ESX.GetPlayerFromId(otherInv.id)
        if not target then return end

        for k,v in pairs(Config.BlacklistedItems) do
            if v == item.name then
                return
            end
        end

        if item.type == 'item_account' then
            if item.name == 'cash' then
                if target.getMoney() >= count then
                    target.removeMoney(count)
                    xPlayer.addMoney(count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, 'Votre inventaire'))
                    DiscordLog(target.getName() .. " a transféré " .. count .. " " .. item.label .. " to " .. xPlayer.getName())
                end
            else 
                if target.getAccount(item.name).money >= count then
                    target.removeAccountMoney(item.name, count)
                    xPlayer.addAccountMoney(item.name, count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, 'Votre inventaire'))
                    DiscordLog(target.getName() .. " a transféré " .. count .. " " .. item.label .. " to " .. xPlayer.getName())
                end
            end
        elseif item.type == 'item_weapon' then
            if target.hasWeapon(item.name) then
                if not xPlayer.hasWeapon(item.name) then
                    target.removeWeapon(item.name)
                    xPlayer.addWeapon(item.name, item.count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('<b>%s</b> déménagé à <b>%s</b>!'):format(item.label, 'Votre inventaire'))
                    DiscordLog(target.getName() .. " a transféré a " .. item.label .. " to " .. xPlayer.getName())
                else 
                    TriggerClientEvent('inventory:notify', src, 'error', 'Tu as déjà cette arme !')
                end
            end
        elseif item.type == 'item_standard' then
            if target.getInventoryItem(item.name).count >= count then
                if Config.PlayerWeight then
                    if xPlayer.canCarryItem(item.name, count) then
                        target.removeInventoryItem(item.name, count)
                        xPlayer.addInventoryItem(item.name, count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, 'Votre inventaire'))
                        DiscordLog(target.getName() .. " a transféré " .. count .. " " .. item.label .. " to " .. xPlayer.getName())
                    else 
                        TriggerClientEvent('inventory:notify', src, 'error', 'Inventaire complet!')
                    end
                else 
                    local newCount = xPlayer.getInventoryItem(item.name).count + count
                    if newCount <= xPlayer.getInventoryItem(item.name).limit then
                        target.removeInventoryItem(item.name, count)
                        xPlayer.addInventoryItem(item.name, count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, 'Votre inventaire'))
                        DiscordLog(target.getName() .. " a transféré " .. count .. " " .. item.label .. " to " .. xPlayer.getName())
                    else 
                        TriggerClientEvent('inventory:notify', src, 'error', 'Limite atteinte')
                    end
                end
            end
        end
    else 
        if item.type == 'item_account' then
            if item.name == 'cash' then
                RemoveItemFromInventory(xPlayer, item, count, otherInv, function()
                    xPlayer.addMoney(count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, 'Votre inventaire'))
                    DiscordLog(xPlayer.getName() .. " a supprimé " .. count .. " " .. item.label .. " from " .. otherInv.title)
                end)
            else 
                RemoveItemFromInventory(xPlayer, item, count, otherInv, function()
                    xPlayer.addAccountMoney(item.name, count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, 'Votre inventaire'))
                    DiscordLog(xPlayer.getName() .. " a supprimé " .. count .. " " .. item.label .. " from " .. otherInv.title)
                end)
            end
        elseif item.type == 'item_weapon' then
            if not xPlayer.hasWeapon(item.name) then
                RemoveItemFromInventory(xPlayer, item, item.count, otherInv, function()
                    xPlayer.addWeapon(item.name, item.count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('<b>%s</b> déménagé à <b>%s</b>!'):format(item.label, 'Votre inventaire'))
                    DiscordLog(xPlayer.getName() .. " a supprimé un " .. item.label .. " depuis " .. otherInv.title)
                end)
            else 
                TriggerClientEvent('inventory:notify', src, 'error', 'Tu as déjà cette arme !')
            end
        elseif item.type == 'item_standard' then
            if Config.PlayerWeight then
                if xPlayer.canCarryItem(item.name, count) then
                    RemoveItemFromInventory(xPlayer, item, count, otherInv, function()
                        xPlayer.addInventoryItem(item.name, count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, 'Votre inventaire'))
                        DiscordLog(xPlayer.getName() .. " a supprimé " .. count .. " " .. item.label .. " from " .. otherInv.title)
                    end)
                else 
                    TriggerClientEvent('inventory:notify', src, 'error', 'Inventaire complet !')
                end
            else 
                local newCount = xPlayer.getInventoryItem(item.name).count + count
                if newCount <= xPlayer.getInventoryItem(item.name).limit then
                    RemoveItemFromInventory(xPlayer, item, count, otherInv, function()
                        xPlayer.addInventoryItem(item.name, count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, 'Votre inventaire'))
                        DiscordLog(xPlayer.getName() .. " a supprimé " .. count .. " " .. item.label .. " from " .. otherInv.title)
                    end)
                else 
                    TriggerClientEvent('inventory:notify', src, 'error', 'Limite atteinte !')
                end
            end
        end
    end
    
    TriggerClientEvent('inventory:refresh', src)
    Refresh(otherInv.type, otherInv.id)
end)

RegisterNetEvent('inventory:moveItemToOther', function(item, count, otherInv)
    local src = source

    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    if otherInv.type == 'player' then 
        local target = ESX.GetPlayerFromId(otherInv.id)
        if not target then return end

        if item.type == 'item_account' then
            if item.name == 'cash' then
                if xPlayer.getMoney() >= count then
                    xPlayer.removeMoney(count)
                    target.addMoney(count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, otherInv.title))
                    DiscordLog(xPlayer.getName() .. " a ajouté " .. count .. " " .. item.label .. " to " .. target.getName())
                end
            else 
                if xPlayer.getAccount(item.name).money >= count then
                    xPlayer.removeAccountMoney(item.name, count)
                    target.addAccountMoney(item.name, count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, otherInv.title))
                    DiscordLog(xPlayer.getName() .. " a ajouté " .. count .. " " .. item.label .. " to " .. target.getName())
                end
            end
        elseif item.type == 'item_weapon' then
            if xPlayer.hasWeapon(item.name) then
                if not target.hasWeapon(item.name) then
                    xPlayer.removeWeapon(item.name)
                    target.addWeapon(item.name, item.count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('<b>%s</b> déménagé à <b>%s</b>!'):format(item.label, otherInv.title)) 
                    DiscordLog(xPlayer.getName() .. " a ajouté a " .. item.label .. " to " .. target.getName())
                else 
                    TriggerClientEvent('inventory:notify', src, 'error', 'The player already has this weapon')
                end
            end
        elseif item.type == 'item_standard' then
            if xPlayer.getInventoryItem(item.name).count >= count then
                if Config.PlayerWeight then
                    if target.canCarryItem(item.name, count) then
                        xPlayer.removeInventoryItem(item.name, count)
                        target.addInventoryItem(item.name, count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, otherInv.title)) 
                        DiscordLog(xPlayer.getName() .. " a ajouté " .. count .. " " .. item.label .. " to " .. target.getName())
                    else 
                        TriggerClientEvent('inventory:notify', src, 'error', 'The players Inventory is Full!')
                    end
                else 
                    local newCount = target.getInventoryItem(item.name).count + count
                    if newCount <= target.getInventoryItem(item.name).limit then
                        xPlayer.removeInventoryItem(item.name, count)
                        target.addInventoryItem(item.name, count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, otherInv.title)) 
                        DiscordLog(xPlayer.getName() .. " a ajouté " .. count .. " " .. item.label .. " to " .. target.getName())
                    else 
                        TriggerClientEvent('inventory:notify', src, 'error', 'The players limit is reached!')
                    end
                end
            end
        end
    else
        if item.type == 'item_account' then
            if item.name == 'cash' then
                if xPlayer.getMoney() >= count then
                    AddItemToInventory(xPlayer, item, count, otherInv, function()
                        xPlayer.removeMoney(count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, otherInv.title))
                        DiscordLog(xPlayer.getName() .. " a ajouté " .. count .. " " .. item.label .. " to " .. otherInv.title)
                    end)
                end
            else 
                if xPlayer.getAccount(item.name).money >= count then
                    AddItemToInventory(xPlayer, item, count, otherInv, function()
                        xPlayer.removeAccountMoney(item.name, count)
                        TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, otherInv.title))
                        DiscordLog(xPlayer.getName() .. " a ajouté " .. count .. " " .. item.label .. " to " .. otherInv.title)
                    end)
                end
            end
        elseif item.type == 'item_weapon' then
            if xPlayer.hasWeapon(item.name) then
                AddItemToInventory(xPlayer, item, item.count, otherInv, function()
                    xPlayer.removeWeapon(item.name)
                    TriggerClientEvent('inventory:notify', src, 'success', ('<b>%s</b> déménagé à <b>%s</b>!'):format(item.label, otherInv.title))
                    DiscordLog(xPlayer.getName() .. " a ajouté a " .. item.label .. " to " .. otherInv.title)
                end)
            end
        elseif item.type == 'item_standard' then
            if xPlayer.getInventoryItem(item.name).count >= count then
                AddItemToInventory(xPlayer, item, count, otherInv, function()
                    xPlayer.removeInventoryItem(item.name, count)
                    TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> déménagé à <b>%s</b>!'):format(count, item.label, otherInv.title))
                    DiscordLog(xPlayer.getName() .. " a ajouté " .. count .. " " .. item.label .. " to " .. otherInv.title)
                end)
            end
        end
    end
    
    TriggerClientEvent('inventory:refresh', src)
    Refresh(otherInv.type, otherInv.id)
end)

RegisterNetEvent('inventory:addItemToHotbar', function(slot, item) 
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return end

    local identifier = xPlayer.getIdentifier()

    if item.inventory == 'hotbar' then
        Inventories['hotbar'][identifier][tostring(item.slot)] = Inventories['hotbar'][identifier][tostring(slot)]
    end

    for k,v in pairs(Inventories['hotbar'][identifier]) do
        if v.name == item.name then
            Inventories['hotbar'][identifier][k] = nil
        end
    end

    Inventories['hotbar'][identifier][tostring(slot)] = {type = item.type, name = item.name, label = item.label}

    if Config.HotbarSave then
        MySQL.Async.execute("UPDATE users SET hotbar=@hotbar WHERE identifier=@id", 
        {
            ["@id"] = identifier,
            ["@hotbar"] = json.encode(Inventories['hotbar'][identifier])
        }, function() end)
    end

    TriggerClientEvent('inventory:refresh', source)
end)

RegisterNetEvent('inventory:removeItemFromHotbar', function(slot) 
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return end

    local identifier = xPlayer.getIdentifier()

    Inventories['hotbar'][identifier][tostring(slot)] = nil

    if Config.HotbarSave then
        MySQL.Async.execute("UPDATE users SET hotbar=@hotbar WHERE identifier=@id", 
        {
            ["@id"] = identifier,
            ["@hotbar"] = json.encode(Inventories['hotbar'][identifier])
        }, function() end)
    end

    TriggerClientEvent('inventory:refresh', source)
end)


RegisterNetEvent('inventory:removeItem', function(item, count, coords)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    if item.type == 'item_account' then
        if item.name == 'cash' then
            if xPlayer.getMoney() >= count then
                xPlayer.removeMoney(count)
                CreateDrop(item, count, coords)
                TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> <b>%s</b>!'):format(count, item.label, 'Jeter'))
                DiscordLog(xPlayer.getName() .. " a tombé " .. count .. " " .. item.label)
            end
        else 
            if xPlayer.getAccount(item.name).money >= count then
                xPlayer.removeAccountMoney(item.name, count)
                CreateDrop(item, count, coords)
                TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> <b>%s</b>!'):format(count, item.label, 'Jeter'))
                DiscordLog(xPlayer.getName() .. " a tombé " .. count .. " " .. item.label)
            end
        end
    elseif item.type == 'item_weapon' then
        if xPlayer.hasWeapon(item.name) then
            xPlayer.removeWeapon(item.name)
            CreateDrop(item, item.count, coords)
            TriggerClientEvent('inventory:notify', src, 'success', ('<b>%s</b> <b>%s</b>!'):format(item.label, 'Jeter'))
            DiscordLog(xPlayer.getName() .. " a tombé a " .. item.label)
        end
    elseif item.type == 'item_standard' then
        if xPlayer.getInventoryItem(item.name).count >= count then
            xPlayer.removeInventoryItem(item.name, count)
            CreateDrop(item, count, coords)
            TriggerClientEvent('inventory:notify', src, 'success', ('%s <b>%s</b> <b>%s</b>!'):format(count, item.label, 'Jeter'))
            DiscordLog(xPlayer.getName() .. " a tombé " .. count .. " " .. item.label)
        end
    end

    TriggerClientEvent('inventory:refresh', src)
end)

RegisterNetEvent('inventory:clearHotbar', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    local identifier = xPlayer.getIdentifier()

    if not Inventories['hotbar'] then
        Inventories['hotbar'] = {}
    end
        
    Inventories['hotbar'][identifier] = {}
    
    if Config.HotbarSave then
        MySQL.Async.execute("UPDATE users SET hotbar=@hotbar WHERE identifier=@id", 
        {
            ["@id"] = identifier,
            ["@hotbar"] = json.encode(Inventories['hotbar'][identifier])
        }, function() end)
    end

    TriggerClientEvent('inventory:refresh', src)
end)

RegisterNetEvent("inventory:close", function(inventory)
    if OpenInventories[inventory.type] == nil then
        OpenInventories[inventory.type] = {}
    end

    if OpenInventories[inventory.type][inventory.id] == nil then
        OpenInventories[inventory.type][inventory.id] = {}
    end

    if OpenInventories[inventory.type][inventory.id][source] then
        OpenInventories[inventory.type][inventory.id][source] = nil 
    end
end)

AddEventHandler('esx:playerLoaded', function(source)
    TriggerClientEvent('inventory:refreshDrops', source, Drops)
end)

AddEventHandler('esx:playerDropped', function(source)
    CloseAllInventoriesForPlayer(source)
end)
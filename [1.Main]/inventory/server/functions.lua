function GetPlayerInventory(xPlayer)
    if not xPlayer then return end

    local items, weight, hotbar = {}, nil, nil

    if Config.Cash then
        local cash = xPlayer.getMoney()
        if cash > 0 then
            table.insert(items, {
                type = 'item_account',
                name = 'cash',
                label = 'Cash',
                count = cash,
                use = false,
                remove = true
            }) 
        end
    end

    if Config.DirtyCash then
        local account = xPlayer.getAccount(Config.DirtyCash)
        if account.money > 0 then
            table.insert(items, {
                type = 'item_account',
                name = account.name,
                label = account.label,
                count = account.money,
                use = false,
                remove = true
            }) 
        end
    end

    if Config.Items then
        local inventory = xPlayer.getInventory()
        for k,v in pairs(inventory) do
            if v.count > 0 then
                table.insert(items, {
                    type = 'item_standard',
                    name = v.name,
                    label = v.label,
                    count = v.count,
                    use = v.usable,
                    remove = v.canRemove
                })
            end
        end
    end

    if Config.Weapons then
        local loadout = xPlayer.getLoadout()
        for k,v in pairs(loadout) do
            table.insert(items, {
                type = 'item_weapon',
                name = v.name,
                label = v.label,
                count = v.ammo,
                use = false,
                remove = true
            })
        end
    end

    if Config.PlayerWeight then
        weight = {current = xPlayer.getWeight(), max = xPlayer.getMaxWeight()}
    else 
        weight = false
    end

    if Config.Hotbar then
        local done = promise.new()
        local identifier = xPlayer.getIdentifier()

        if not Inventories['hotbar'] then
            Inventories['hotbar'] = {}
        end

        if not Inventories['hotbar'][identifier] then
            Inventories['hotbar'][identifier] = {}
            if Config.HotbarSave then
                MySQL.Async.fetchAll("SELECT hotbar FROM users WHERE identifier=@id", 
                {
                    ["@id"] = identifier
                }, function(result)
                    if #result > 0 then
                        Inventories['hotbar'][identifier] = json.decode(result[1].hotbar) or {}
                        done:resolve()
                    end
                end) 
            else 
                done:resolve()
            end
        else 
            done:resolve()
        end

        Citizen.Await(done)
        
        for k,v in pairs(Inventories['hotbar'][identifier]) do
            if #items > 0 then
                local found = false
                for k2,v2 in pairs(items) do
                    if v2.name == v.name then
                        found = true
                    end 
                end 

                if not found then
                    Inventories['hotbar'][identifier][k] = nil
                end 
            else 
                Inventories['hotbar'][identifier][k] = nil
            end
        end

        hotbar = {slotCount = Config.HotbarSlots, items = Inventories['hotbar'][identifier]}
    end
    
    return items, weight, hotbar
end

function GetInventory(xPlayer, inventory)
    local items = {}
    local weight = nil

    if not Inventories[inventory.type] then
        Inventories[inventory.type] = {}
    end

    local done = promise.new()
    if Inventories[inventory.type][inventory.id] == nil then
        Inventories[inventory.type][inventory.id] = {}

        if inventory.save then
            MySQL.Async.fetchAll("SELECT * FROM inventories WHERE type=@type AND identifier=@id",
            {
                ["@type"] = inventory.type,
                ["@id"] = inventory.id
            }, function(result)
                if #result > 0 then
                    Inventories[inventory.type][inventory.id] = json.decode(result[1].data)
                    done:resolve()
                else 
                    MySQL.Async.execute("INSERT INTO inventories (type, identifier, data) VALUES (@type, @id, @data)",
                    {
                        ["@type"] = inventory.type,
                        ["@id"] = inventory.id,
                        ["@data"] = json.encode(Inventories[inventory.type][inventory.id])
                    }, function()
                        print(("^4Inventory created in DB ^7(%s, %s)"):format(inventory.type, inventory.id))
                        done:resolve()
                    end)
                end
            end) 
        else 
            done:resolve()
        end
    else 
        done:resolve()
    end
    
    Citizen.Await(done)

    for k,v in pairs(Inventories[inventory.type][inventory.id]) do
        if v.type == 'item_account' then
            if v.name == 'cash' then
                if Config.Cash then
                    table.insert(items, {
                        type = v.type,
                        name = v.name,
                        label = "Cash",
                        count = v.count
                    })
                end 
            else
                if Config.DirtyCash then
                    local account = xPlayer.getAccount(Config.DirtyCash)
                    table.insert(items, {
                        type = v.type,
                        name = v.name,
                        label = account.label,
                        count = v.count
                    })
                end 
            end
        elseif v.type == 'item_weapon' then
            if Config.Weapons then
                table.insert(items, {
                    type = v.type,
                    name = v.name,
                    label = ESX.GetWeaponLabel(v.name),
                    count = v.count
                }) 
            end
        elseif v.type == 'item_standard' then
            if Config.Items then
                table.insert(items, {
                    type = v.type,
                    name = v.name,
                    label = xPlayer.getInventoryItem(v.name).label or '',
                    count = v.count
                }) 
            end
        end
    end

    if inventory.weight then
        weight = {current = GetWeightOfInventory(xPlayer, items), max = inventory.weight}        
    end

    return items, weight
end

function AddItemToInventory(xPlayer, item, count, inv, cb)
    if not inv then return end

    local inventory, weight = GetInventory(xPlayer, inv)

    if inv.weight then
        local newWeight = 0

        if item.type == 'item_weapon' then
            newWeight = weight.current + GetWeightOfItem(item)
        else 
            newWeight = weight.current + (count * GetWeightOfItem(item, xPlayer.getInventoryItem(item.name)))
        end

        if newWeight > inv.weight then 
            xPlayer.triggerEvent('inventory:notify', 'error', 'Vous serait en surpoids!')
            return
        end 
    end

    local found = false
    if #inventory > 0 then
        for k,v in pairs(inventory) do
            if v.name == item.name then
                if v.type ~= 'item_weapon' then
                    inventory[k].count = inventory[k].count + count
                    found = true
                    break
                end
            end
        end 
    end

    if not found then
        table.insert(inventory, {type = item.type, name = item.name, count = count})
    end

    for k,v in pairs(inventory) do
        inventory[k].label = nil
    end

    Inventories[inv.type][inv.id] = inventory

    if inv.type == 'drop' then
        if not Drops[inv.id] then
            Drops[inv.id] = {
                coords = inv.coords,
                time = os.time()
            }
        else 
            Drops[inv.id].time = os.time()
        end
        TriggerClientEvent('inventory:refreshDrops', -1, Drops)
    end

    if inv.save then
        MySQL.Async.execute("UPDATE inventories SET data=@data WHERE type=@type AND identifier=@id",
        {
            ["@type"] = inv.type,
            ["@id"] = inv.id,
            ["@data"] = json.encode(Inventories[inv.type][inv.id])
        }, function() end)
    end

    cb()
end

function RemoveItemFromInventory(xPlayer, item, count, inv, cb)
    if not inv then return end

    local inventory, weight = GetInventory(xPlayer, inv)
    
    for k,v in pairs(inventory) do
        if v.name == item.name then
            inventory[k].label = nil

            if item.type == 'item_weapon' then
                table.remove(inventory, item.index+1) 
                cb()
            else 
                if count > v.count then return end
                
                local newcount = inventory[k].count - count

                if newcount < 1 then
                    table.remove(inventory, k)
                else 
                    inventory[k].count = inventory[k].count - count
                end
                cb()
            end
            
            break
        end
    end 

    Inventories[inv.type][inv.id] = inventory

    if inv.type == 'drop' then
        if #Inventories['drop'][inv.id] < 1 then
            Drops[inv.id] = nil
        else 
            Drops[inv.id].time = os.time()
        end
        TriggerClientEvent('inventory:refreshDrops', -1, Drops)
    end

    if inv.save then
        MySQL.Async.execute("UPDATE inventories SET data=@data WHERE type=@type AND identifier=@id",
        {
            ["@type"] = inv.type,
            ["@id"] = inv.id,
            ["@data"] = json.encode(Inventories[inv.type][inv.id])
        }, function() end)
    end
end

function CreateDrop(item, count, coords)
    dropId = dropId + 1

    if not Inventories['drop'] then Inventories['drop'] = {} end
    Inventories['drop'][dropId] = {{type = item.type, name = item.name, count = count}}
    Drops[dropId] = {
        coords = coords,
        time = os.time()
    }

    TriggerClientEvent('inventory:refreshDrops', -1, Drops)
end

function GetWeightOfInventory(xPlayer, inventory)
    local weight = 0
    
    for k,v in pairs(inventory) do
        if v.type == 'item_weapon' then
            weight = weight + GetWeightOfItem(v)
        else 
            weight = weight + (v.count * GetWeightOfItem(v, xPlayer.getInventoryItem(v.name)))
        end
    end

    return weight
end

function GetWeightOfItem(item, info)
    local weight = 0

    if item.type == 'item_standard' then 
        if Config.PlayerWeight then
            weight = info.weight or 0     
        else 
            weight = Config.Weights[item.name] or 0
        end
    else 
        weight = Config.Weights[item.name] or 0
    end

    return weight
end

function Refresh(type, id)
    if OpenInventories[type] == nil then
        OpenInventories[type] = {}
    end

    if OpenInventories[type][id] == nil then
        OpenInventories[type][id] = {}
    end

    for k,v in pairs(OpenInventories[type][id]) do
        TriggerClientEvent('inventory:refresh', k)
    end
end

function CloseAllInventoriesForPlayer(source)
    for type,v in pairs(OpenInventories) do
        for id,v in pairs(OpenInventories[type]) do
            OpenInventories[type][id][source] = nil
        end
    end
end

function DiscordLog(desc)
    if not Config.Discord then return end

    local content = {
        {
        	["color"] = '5015295',
            ["title"] = "Log Inventaire ",
            ["description"] = desc,
            ["footer"] = {
                ["text"] = GetCurrentResourceName()
            },
        }
    }
  	PerformHttpRequest(Config.WebhookURL, function(err, text, headers) end, 'POST', json.encode({embeds = content}), { ['Content-Type'] = 'application/json' })
end

function DropsSync()
    function drop()
		for k,v in pairs(Drops) do
            if v.time then
                if (os.time() - v.time) > Config.DropTimeout then
                    Drops[k] = nil
                    TriggerClientEvent('inventory:refreshDrops', -1, Drops)
                end 
            end
        end
		SetTimeout(5000, drop)
	end
	SetTimeout(5000, drop)
end

DropsSync()
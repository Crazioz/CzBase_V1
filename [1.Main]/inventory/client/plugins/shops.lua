RegisterNetEvent('inventory:openShop', function(id, title, items)
    OpenInventory({
        type = 'shop',
        id = id,
        title = title,
        shopItems = items,
        timeout = 1000
    })
end)
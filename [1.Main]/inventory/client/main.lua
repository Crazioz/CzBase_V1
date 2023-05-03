ESX = exports["es_extended"]:getSharedObject()
OtherInventory = nil
Drops = {}
hotbarLock = false
weaponEquiped = nil
weaponLock = false

CreateThread(function()
    while true do
        Wait(1)
        for k,v in pairs(Drops) do
            local distance = #(v.coords - GetEntityCoords(PlayerPedId()))
            if distance < 20.0 then
                DrawMarker(2, v.coords.x, v.coords.y, v.coords.z - 0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 255, 255, 255, 100, false, true, 0, false)
            end
        end
    end
end)

if Config.Hotbar then
    CreateThread(function()
        while true do
            Wait(1)
            if weaponLock then
                DisableControlAction(1, 25, true )
                DisableControlAction(1, 140, true)
                DisableControlAction(1, 141, true)
                DisableControlAction(1, 142, true)
                DisableControlAction(1, 23, true)
                DisablePlayerFiring(PlayerPedId(), true)
            end
        end
    end)     
end

if Config.Hotbar then
    CreateThread(function()
        while true do
            Wait(1)
            BlockWeaponWheelThisFrame()
            HideHudComponentThisFrame(19)
            HideHudComponentThisFrame(20)
            HideHudComponentThisFrame(17)
            DisableControlAction(0, 37, true) --Disable Tab
            for k,v in pairs(Config.HotbarKeys) do
                if IsDisabledControlJustPressed(0, v) then
                    UseItemFromHotbar(tostring(k-1))
                end
            end
        end
    end) 
end

RegisterNetEvent('inventory:refresh', function()
    GetInventory()
    if OtherInventory then
        GetInventory(OtherInventory, true)
    end
end)

RegisterNetEvent('inventory:refreshDrops', function(nDrops) 
    Drops = nDrops
end)

RegisterNetEvent('inventory:notify', function(type, msg)
    SendNUIMessage({
        action = 'notify',
        type = type,
        msg = msg
    })
end)

-- NUI callbacks
RegisterNUICallback('MoveItemToPlayer', function(data, cb)
    TriggerServerEvent('inventory:moveItemToPlayer', data.item, tonumber(data.count), OtherInventory)
    Wait(150)
    cb(200)
end)

RegisterNUICallback('MoveItemToOther', function(data, cb)
    TriggerServerEvent('inventory:moveItemToOther', data.item, tonumber(data.count), OtherInventory)
    Wait(150)
    cb(200)
end)

RegisterNUICallback('AddItemToHotbar', function(data)
    TriggerServerEvent('inventory:addItemToHotbar', data.slot, data.item)
end)

RegisterNUICallback('RemoveItemFromHotbar', function(data)
    TriggerServerEvent('inventory:removeItemFromHotbar', data.slot)
end)

RegisterNUICallback('GetPlayers', function(data, cb)
    cb(GetPlayersInArea())
end)

RegisterNUICallback('UnlockHotbar', function()
    hotbarLock = false
end)

RegisterNUICallback('UseItem', function(data)
    for k,v in pairs(Config.CloseOnUse) do
        if v == data.item.name then
            SendNUIMessage({
                action = 'close',
                invName = GetCurrentResourceName()
            })    
            break
        end
    end

    TriggerServerEvent('esx:useItem', data.item.name)
    Wait(150)
    TriggerEvent("inventory:refresh") 
end)

RegisterNUICallback('GiveItem', function(data)
    local target = GetPlayerFromServerId(data.src)
    local distance = #(GetEntityCoords(GetPlayerPed(target)) - GetEntityCoords(PlayerPedId()))

    if distance <= 5.0 then
        if data.item.type == 'item_account' then
            if data.item.name == 'cash' then
                if not Config.PlayerWeight then
                    TriggerServerEvent("esx:giveInventoryItem", data.src, 'item_money', 'cash', tonumber(data.count)) 
                else 
                    TriggerServerEvent("esx:giveInventoryItem", data.src, data.item.type, 'money', tonumber(data.count)) 
                end
            else 
                TriggerServerEvent("esx:giveInventoryItem", data.src, data.item.type, data.item.name, tonumber(data.count)) 
            end
        else
            TriggerServerEvent("esx:giveInventoryItem", data.src, data.item.type, data.item.name, tonumber(data.count)) 
        end
    
        Wait(150)
        TriggerEvent("inventory:refresh") 
    end
end)

RegisterNUICallback('RemoveItem', function(data, cb)
    if IsPedInAnyVehicle(PlayerPedId(), true) then 
        Wait(50)
        cb(200)
        return 
    end

    if data.item.type == 'item_weapon' then
        if weaponEquiped then
            if weaponEquiped.name == data.item.name then
                weaponEquiped = nil 
            end
        end
    end
    
    for k,v in pairs(Drops) do
        local distance = #(v.coords - GetEntityCoords(PlayerPedId()))
        if distance < 2.0 then
            TriggerServerEvent('inventory:moveItemToOther', data.item, tonumber(data.count), {id = k, type = 'drop', title = '🗑️ Jeter - ' .. k})
            Wait(50)
            cb(200)
            return
        end
    end 

    TriggerServerEvent('inventory:removeItem', data.item, tonumber(data.count), GetEntityCoords(PlayerPedId()))
    Wait(50)
    cb(200)
end)

RegisterNUICallback('close', function()
    CloseInventory()
end)

-- Keymappings
RegisterCommand('openInventory', function()
    if IsEntityDead(PlayerPedId()) then return end

    if IsPedInAnyVehicle(PlayerPedId(), true) then
        if Config.Glovebox then
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        
            if not DoesEntityExist(vehicle) then return end

            for k,v in pairs(Config.BlacklistedVehicleTypesGB) do
                if v == GetVehicleClass(vehicle) then
                    OpenInventory()
                    return
                end
            end
    
            local plate = ESX.Math.Trim(GetVehicleNumberPlateText(vehicle))

            if Config.GloveboxSave then
                ESX.TriggerServerCallback("inventory:isVehicleOwned", function(owned)
                    OpenInventory({
                        id = plate, 
                        type = 'glovebox', 
                        title = 'Boite à gants - <b>' .. plate .. '</b>',
                        weight = Config.GloveboxWeight, 
                        save = owned,
                        timeout = Config.GloveboxTimeout
                    }) 
                end, plate)
            else 
                OpenInventory({
                    id = plate, 
                    type = 'glovebox', 
                    title = 'Boite à gants - <b>' .. plate .. '</b>',
                    weight = Config.GloveboxWeight, 
                    save = false,
                    timeout = Config.GloveboxTimeout
                }) 
            end
        else 
            OpenInventory()
        end
    else 
        for k,v in pairs(Drops) do
            local distance = #(v.coords - GetEntityCoords(PlayerPedId()))
            if distance < 2.0 then
                OpenInventory({id = k, type = 'drop', title = '🗑️ Jeter - ' .. k, coords = v.coords, weight = false, timeout = 1000})
                return
            end
        end 
        OpenInventory()
    end
end, true)
RegisterKeyMapping('openInventory', 'Ouvrir l\'inventaire', 'keyboard', Config.DefaultOpenKey)

if Config.Hotbar then
    RegisterCommand('hotbar', function()
        ShowHotbar()
    end, true)
    RegisterKeyMapping('hotbar', 'Afficher la barre de raccourcis', 'keyboard', Config.HotbarKey) 
end
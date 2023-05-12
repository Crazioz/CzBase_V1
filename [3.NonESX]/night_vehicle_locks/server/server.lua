RegisterServerEvent("night_vehicle_locks:registerVehicle")
AddEventHandler("night_vehicle_locks:registerVehicle", function(vehNetId)
    TriggerClientEvent("night_vehicle_locks:registerVehicle_client", -1, vehNetId)
end)

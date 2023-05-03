if Config.Trunk or Config.Glovebox then 
    if Config.TrunkSave or Config.GloveboxSave then
        ESX.RegisterServerCallback("inventory:isVehicleOwned", function(source, cb, plate)
            MySQL.Async.fetchScalar("SELECT COUNT(1) FROM owned_vehicles WHERE plate=@plate", 
            {
                ["@plate"] = plate
            }, function(count) 
                if not count then return end

                if count > 0 then
                    cb(true)
                else 
                    cb(false)
                end
            end)
        end) 
    end
end
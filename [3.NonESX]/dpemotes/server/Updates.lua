if Config.CheckForUpdates then
    Citizen.CreateThread(function()
        updatePath = "/TayMcKenzieNZ/dpemotes"
        resourceName = "dp Emotes (" .. GetCurrentResourceName() .. ")"
        PerformHttpRequest("https://raw.githubusercontent.com" .. updatePath .. "/master/version", checkVersion, "GET")
    end)
end

RegisterServerEvent("dp:CheckVersion")
AddEventHandler("dp:CheckVersion", function()
    if updateavail then
        TriggerClientEvent("dp:Update", source, true)
    else
        TriggerClientEvent("dp:Update", source, false)
    end
end)


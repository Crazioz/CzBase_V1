inVehicle = false
currentVehicle = nil
vehicleClass = nil
plyPed = PlayerPedId()
plyId = PlayerId()
plyLoc = GetEntityCoords(plyPed)
cooldown = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        plyId = PlayerId()
        plyPed = PlayerPedId()
        plyLoc = GetEntityCoords(plyPed)
        inVehicle = IsPedInAnyVehicle(plyPed, false)
        if inVehicle then
            currentVehicle = GetVehiclePedIsIn(plyPed, false)
            vehicleClass = GetVehicleClass(currentVehicle)   
        end
    end
end)
  
-- Car Locks

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if cooldown then return end
        if IsControlJustPressed(0, Config.HotKeys.ToggleVehicleLock) then
            cooldown = true
            local dict = "anim@mp_player_intmenu@key_fob@"
            RequestAnimDict(dict)
            while not HasAnimDictLoaded(dict) do
                Citizen.Wait(5)
            end

            if IsPedInAnyVehicle(plyPed, true) then -- In vehicle
                if not IsPlayerAuthorisedToLockThisVehicle(vehicleClass, VehToNet(currentVehicle)) then --> c_functions.lua
                    Wait(500)
                    cooldown = false
                    return 
                end

                local lock = GetVehicleDoorLockStatus(currentVehicle)
                local coords = GetEntityCoords(plyPed)
                local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(currentVehicle))
                vehicleLabel = GetLabelText(vehicleLabel)
                if lock == 1 or lock == 0 then
                    SetVehicleDoorShut(currentVehicle, 0, false)
                    SetVehicleDoorShut(currentVehicle, 1, false)
                    SetVehicleDoorShut(currentVehicle, 2, false)
                    SetVehicleDoorShut(currentVehicle, 3, false)
                    SetVehicleDoorsLocked(currentVehicle, 2)
                    PlayVehicleDoorCloseSound(currentVehicle, 1)

                    if vehicleLabel == "NULL" then
                        notify(Config.Messages.VehicleLocked)
                    else
                        notify(Config.Messages.VehicleLocked2.." "..vehicleLabel.."~s~.")
                    end

                    if Config.EnableSound then
                        SoundVolume = Config.SoundVolume
                        SoundLimit = 0.5
                        if SoundVolume > SoundLimit then
                            SoundVolume = 0.15
                        end
                        local pos = GetEntityCoords(currentVehicle)
                        TriggerServerEvent("Server:SoundToCoords", pos.x, pos.y, pos.z, Config.SoundReach, Config.SoundFileName, SoundVolume)
                    end 

                    SetVehicleLights(currentVehicle, 2)
                    Citizen.Wait(150)
                    SetVehicleLights(currentVehicle, 0)
                    Citizen.Wait(150)
                    SetVehicleLights(currentVehicle, 2)
                    Citizen.Wait(150)
                    SetVehicleLights(currentVehicle, 0)
                    Wait(500)
                    cooldown = false
                elseif lock == 2 then
                    SetVehicleDoorsLocked(currentVehicle, 1)
                    PlayVehicleDoorOpenSound(currentVehicle, 0)

                    if vehicleLabel == "NULL" then
                        notify(Config.Messages.VehicleUnlocked)
                    else
                        notify(Config.Messages.VehicleUnlocked2..""..vehicleLabel.."~s~.")
                    end

                    if Config.EnableSound then
                        SoundVolume = Config.SoundVolume
                        SoundLimit = 0.5
                        if SoundVolume > SoundLimit then
                            SoundVolume = 0.15
                        end
                        local pos = GetEntityCoords(currentVehicle)
                        TriggerServerEvent("Server:SoundToCoords", pos.x, pos.y, pos.z, Config.SoundReach, Config.SoundFileName, SoundVolume)
                    end

                    SetVehicleLights(currentVehicle, 2)
                    Citizen.Wait(150)
                    SetVehicleLights(currentVehicle, 0)
                    Citizen.Wait(150)
                    SetVehicleLights(currentVehicle, 2)
                    Citizen.Wait(150)
                    SetVehicleLights(currentVehicle, 0)
                    hasAlreadyLocked = true
                    isOwnerOfVehiclePedIsIn = false
                    Wait(500)
                    cooldown = false
                elseif lock == 7 then
                    notify("This vehicle is ~r~not ~w~to be used.")
                end
            else -- Out of vehicle
                local coordA = GetEntityCoords(plyPed, true)
                local coordB = GetOffsetFromEntityInWorldCoords(plyPed, 0.0, 20.0, 0.0)
                local targetVehicle = GetVehicleInDirection(coordA, coordB)
                if targetVehicle ~= nil and targetVehicle ~= 0 then
                    if not IsPlayerAuthorisedToLockThisVehicle(GetVehicleClass(targetVehicle), VehToNet(targetVehicle)) then --> c_functions.lua
                        Wait(500)
                        cooldown = false
                        return 
                    end

                    local lock = GetVehicleDoorLockStatus(targetVehicle)
                    local vehPlate = GetVehicleNumberPlateText(targetVehicle)
                    local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(targetVehicle))
                    vehicleLabel = GetLabelText(vehicleLabel)
                    local x, y, z = table.unpack(GetEntityCoords(targetVehicle, true))

                    if lock == 1 or lock == 0 then
                        SetVehicleDoorShut(targetVehicle, 0, false)
                        SetVehicleDoorShut(targetVehicle, 1, false)
                        SetVehicleDoorShut(targetVehicle, 2, false)
                        SetVehicleDoorShut(targetVehicle, 3, false)
                        SetVehicleDoorsLocked(targetVehicle, 2)
                        PlayVehicleDoorCloseSound(targetVehicle, 1)

                        if vehicleLabel == "NULL" then
                            notify(Config.Messages.VehicleLocked)
                        else
                            notify(Config.Messages.VehicleLocked2.." "..vehicleLabel.."~s~.")
                        end

                        if Config.EnableSound then
                            SoundVolume = Config.SoundVolume
                            SoundLimit = 0.5
                            if SoundVolume > SoundLimit then
                                SoundVolume = 0.15
                            end
                            local pos = GetEntityCoords(targetVehicle)
                            TriggerServerEvent("Server:SoundToCoords", pos.x, pos.y, pos.z, Config.SoundReach, Config.SoundFileName, SoundVolume)
                        end

                        if not IsPedInAnyVehicle(plyPed, true) then
                            TaskPlayAnim(plyPed, dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
                        end

                        SetVehicleLights(targetVehicle, 2)
                        Citizen.Wait(150)
                        SetVehicleLights(targetVehicle, 0)
                        Citizen.Wait(150)
                        SetVehicleLights(targetVehicle, 2)
                        Citizen.Wait(150)
                        SetVehicleLights(targetVehicle, 0)
                        Wait(500)
                        cooldown = false
                    elseif lock == 2 then
                        SetVehicleDoorsLocked(targetVehicle, 1)
                        PlayVehicleDoorOpenSound(targetVehicle, 0)

                        if vehicleLabel == "NULL" then
                            notify(Config.Messages.VehicleUnlocked)
                        else
                            notify(Config.Messages.VehicleUnlocked2..""..vehicleLabel.."~s~.")
                        end

                        if Config.EnableSound then
                            SoundVolume = Config.SoundVolume
                            SoundLimit = 0.5
                            if SoundVolume > SoundLimit then
                                SoundVolume = 0.15
                            end
                            local pos = GetEntityCoords(targetVehicle)
                            TriggerServerEvent("Server:SoundToCoords", pos.x, pos.y, pos.z, Config.SoundReach, Config.SoundFileName, SoundVolume)
                        end

                        if not IsPedInAnyVehicle(plyPed, true) then
                            TaskPlayAnim(plyPed, dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
                        end

                        SetVehicleLights(targetVehicle, 2)
                        Citizen.Wait(150)
                        SetVehicleLights(targetVehicle, 0)
                        Citizen.Wait(150)
                        SetVehicleLights(targetVehicle, 2)
                        Citizen.Wait(150)
                        SetVehicleLights(targetVehicle, 0)
                        Wait(500)
                        cooldown = false
                    elseif lock == 7 then
                        notify(Config.Messages.VehicleNotToBeUsed)
                    end
                else
                    notify(Config.Messages.NotInRange)
                    Wait(500)
                    cooldown = false
                end
            end
        end
    end
end)
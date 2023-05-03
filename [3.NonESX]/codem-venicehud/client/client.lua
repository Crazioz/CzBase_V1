

local toggleHud = true
local pedInVeh = false
local seatbeltIsOn = false
local cruiseIsOn = false
local cruiseSpeed = 999.0
local Zone = "No name."

ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    Wait(1000)
    if Config.speedUnit == 1 then
        speedMultiplier = 3.6
        local kmh = 'kmh'
        SendNUIMessage({changeSpeedUnit = 'kmh'})
    elseif Config.speedUnit == 2 then
        speedMultiplier = 2.236936
        local mph = 'mph'
        SendNUIMessage({changeSpeedUnit = 'mph'})
    end
end)




Citizen.CreateThread(function()
    local ped = PlayerPedId()
    while true do
        Citizen.Wait()
        if IsPedOnFoot(ped) then 
            SetRadarZoom(1100)
        elseif IsPedInAnyVehicle(ped, true) then
            SetRadarZoom(1100)
        end
    end
end)


Citizen.CreateThread(function()
    local minimap = RequestScaleformMovie("minimap")
    SetRadarBigmapEnabled(false, false)
    Citizen.Wait(0)
    SetRadarBigmapEnabled(false, false)
    while true do
        Citizen.Wait(0)
        Citizen.InvokeNative(0xF6E48914C7A8694E, minimap, "SETUP_HEALTH_ARMOUR")
        Citizen.InvokeNative(0xC3D0841A0CC546A6, 3)
        Citizen.InvokeNative(0xC6796A8FFA375E53)
        Citizen.InvokeNative(0xF6E48914C7A8694E, minimap, "HIDE_SATNAV")
        Citizen.InvokeNative(0xC6796A8FFA375E53)
    end
end)



Citizen.CreateThread(function()
    Citizen.Wait(100)
    while true do
        if toggleHud == true then

            local player = PlayerPedId()
            local health = (GetEntityHealth(player) - 100)
            local armour = GetPedArmour(player)
            
            if IsEntityInWater(player) then
                oxygen = GetPlayerUnderwaterTimeRemaining(PlayerId()) * 10

            else
                oxygen = 100 - GetPlayerSprintStaminaRemaining(PlayerId())

            end
      
            SendNUIMessage({health = health, armour = armour, oxygen = oxygen})
        end
        Citizen.Wait(300)
    end
end)




Citizen.CreateThread(function()
    Citizen.Wait(100)
  
        while true do
            if toggleHud == true then
                TriggerEvent('esx_status:getStatus', 'hunger', function(hunger)
                    TriggerEvent('esx_status:getStatus', 'thirst', function(thirst)
                    
                            local myhunger = hunger.getPercent()
                            local mythirst = thirst.getPercent()
                          
                         
                            SendNUIMessage({food = myhunger, water = mythirst})
                    end)
                end)
            end
            Citizen.Wait(5000)
        end
    
end)



RegisterKeyMapping('seatbelt', 'Seat Bealt', 'keyboard', Config.seatbeltkey)
RegisterKeyMapping('cruise', 'Cruise Control', 'keyboard', Config.cruisekey)

RegisterCommand('seatbelt', function()
    if pedInVeh == true then
        local player = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(player, false)
        local vehicleClass = GetVehicleClass(vehicle)
        if vehicleClass ~= 13 and vehicleClass ~= 8 then
            seatbeltIsOn = not seatbeltIsOn
            SendNUIMessage({seated = seatbeltIsOn})
            PlaySoundFrontend(-1, "Faster_Click", "RESPAWN_ONLINE_SOUNDSET", 1)
            if seatbeltIsOn == true then
                if Config.VeniceNotify == true then 
                 
                    Config.VeniceUseNotify(Config.Notify1.text,Config.Notify1.time,Config.Notify1.type )
                else 

                ESX.ShowNotification(Config.Notify1.text)
                end
                  
                SetFlyThroughWindscreenParams(Config.SeatBeltMaxSpeed, 2.2352, 0.0, 0.0)
                while seatbeltIsOn do
                    DisableControlAction(0,75)
                    Citizen.Wait(5)
                end
            else
                if Config.VeniceNotify == true then 
                    Config.VeniceUseNotify(Config.Notify2.text,Config.Notify1.time,Config.Notify1.type )
                    SetFlyThroughWindscreenParams(Config.SeatBeltMinSpeed, 2.2352, 0.0, 0.0)
                    SetPedConfigFlag(PlayerPedId(), 32, true)
                else
                    ESX.ShowNotification(Config.Notify2.text)
                    SetFlyThroughWindscreenParams(Config.SeatBeltMinSpeed, 2.2352, 0.0, 0.0)
                    SetPedConfigFlag(PlayerPedId(), 32, true)
                end
          
            end
        end
    end
end, false)



RegisterCommand('cruise', function()
    local player = PlayerPedId()
    if pedInVeh == true then
        local vehicle = GetVehiclePedIsIn(player, false)
        if (GetPedInVehicleSeat(vehicle, -1) == player) then
            cruiseIsOn = not cruiseIsOn
            local currSpeed = GetEntitySpeed(vehicle)
            cruiseSpeed = currSpeed
            local maxSpeed = cruiseIsOn and cruiseSpeed or GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDriveMaxFlatVel")
            SetEntityMaxSpeed(vehicle, maxSpeed)
            if cruiseIsOn == true then
                if Config.VeniceNotify == true then 
                 
                    Config.VeniceUseNotify(Config.Notify3.text,Config.Notify3.time,Config.Notify3.type )
                else 

                ESX.ShowNotification(Config.Notify3.text)
                end
              
            else
                if Config.VeniceNotify == true then 
                 
                    Config.VeniceUseNotify(Config.Notify4.text,Config.Notify4.time,Config.Notify4.type )
                else 
                ESX.ShowNotification(Config.Notify4.text)
                end
              
            end
            SendNUIMessage({cruised = cruiseIsOn})
        else
            cruiseIsOn = false
        end
    end
end, false)

local deneme = true
RegisterCommand('hud', function()

    SendNUIMessage({hud = deneme})
    deneme = not deneme
    SendNUIMessage({hud = deneme})
end)

local frame = 1 
Citizen.CreateThread(function()
    Citizen.Wait(100)
    local currSpeed = 0.0

    while true do
        if toggleHud then
            if IsPauseMenuActive() then
                SendNUIMessage({hideHud = true})
            elseif frame == 1 then
                SendNUIMessage({hideHud = false})
            end

            local player = PlayerPedId()
            local position = GetEntityCoords(player)
            local vehicle = GetVehiclePedIsIn(player, false)
         
            if IsPedInAnyVehicle(player, false) then
                pedInVeh = true
                Citizen.Wait(1500)
                DisplayRadar(true)
                local motor = GetIsVehicleEngineRunning(vehicle)
              
                SendNUIMessage({ motor = motor})
               

            else
                local kimlik = GetPlayerServerId(NetworkGetEntityOwner(player))
              
                SendNUIMessage({showVehiclePart = false , kimlik = kimlik})
                pedInVeh = false
                cruiseIsOn = false
                seatbeltIsOn = false
                DisplayRadar(false)
                SendNUIMessage({seated = seatbeltIsOn, cruised = cruiseIsOn})
            
            end

            if pedInVeh == true then
             
           
                local vehicleClass = GetVehicleClass(vehicle)
                if pedInVeh and GetIsVehicleEngineRunning(vehicle) and vehicleClass ~= 13 then
                    local prevSpeed = currSpeed
                    currSpeed = GetEntitySpeed(vehicle)			
                    local motor = GetIsVehicleEngineRunning(vehicle)
     
        
                    SetPedConfigFlag(PlayerPedId(), 32, true)

                     local fuel = 0
                     if Config.useLegacyFuel then
                         fuel = exports[Config.Fuelexport]:GetFuel(vehicle)
                     else
                         fuel = GetVehicleFuelLevel(vehicle)
                     end
                
                    local vhealth = GetEntityHealth(vehicle)

                    local locked = true
                    if GetVehicleDoorLockStatus(vehicle) == 1 or GetVehicleDoorLockStatus(vehicle) == 0 then locked = false end
                    
                    SendNUIMessage({showVehiclePart = true, motor = motor, fuel = fuel})
                    if vehicleClass == 8 then
                        SendNUIMessage({hideseat = true})
                    else
                        SendNUIMessage({hideseat = false})
                    end
                end
            end
        end
        Citizen.Wait(1000)
    end
end)

Citizen.CreateThread(function()
    while true do 
        if pedInVeh then
            local player = PlayerPedId()
            local vehicle = GetVehiclePedIsIn(player, true)
            local vehicleVal,vehicleLights,vehicleHighlights  = GetVehicleLightsState(vehicle)
            local vehicleIsLightsOn
            if vehicleLights == 1 and vehicleHighlights == 0 then
                vehicleIsLightsOn = 'normal'
            elseif (vehicleLights == 1 and vehicleHighlights == 1) or (vehicleLights == 0 and vehicleHighlights == 1) then
       
                vehicleIsLightsOn = 'high'
            else
                vehicleIsLightsOn = 'off'
            end
            SendNUIMessage({isiklar = vehicleIsLightsOn})
        end

        Citizen.Wait(100)
    end


end)



Citizen.CreateThread(function()
    Citizen.Wait(100)
    while true do
        local sleepTime = 1000
        local player = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(player, false)
        if toggleHud == true and pedInVeh == true and vehicle then
            local currSpeed = GetEntitySpeed(vehicle)
            local speed = ("%.3d"):format(math.ceil(currSpeed * speedMultiplier))
         
            
            local rpm =  GetVehicleEngineHealth(vehicle)
   
            SendNUIMessage({speed = speed, rpm = rpm})
            sleepTime = 200
        end
        Citizen.Wait(sleepTime)
    end
end)



RegisterNetEvent('SaltyChat_VoiceRangeChanged')
AddEventHandler('SaltyChat_VoiceRangeChanged', function(voiceRange, index, availableVoiceRanges) 


    SendNUIMessage({talkingRadius = index })
 end)

RegisterNetEvent('SaltyChat_TalkStateChanged')
AddEventHandler('SaltyChat_TalkStateChanged', function(isTalking)
    SendNUIMessage({talking = isTalking})
end)



Citizen.CreateThread(function()
    Citizen.Wait(100)
    if Config.voice == 2 or Config.voice == 3 then
        while true do
          
            SendNUIMessage({talking = NetworkIsPlayerTalking(PlayerId())})
            Citizen.Wait(200)
        end
    end
end)
RegisterNetEvent('pma-voice:setTalkingMode')
AddEventHandler('pma-voice:setTalkingMode', function(voiceMode) 
    SendNUIMessage({talkingRadius = voiceMode})

end)




RegisterNetEvent("mumble:SetVoiceData")
AddEventHandler("mumble:SetVoiceData", function(player, key, value) 
    if GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId())) == player and key == 'mode' then
         SendNUIMessage({talkingRadius = value})
    end
 end)

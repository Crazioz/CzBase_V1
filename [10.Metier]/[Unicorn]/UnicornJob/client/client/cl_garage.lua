ESX = exports["es_extended"]:getSharedObject()
Citizen.CreateThread(function()
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

-- MENU FUNCTION --

local open = false 
local mainMenu6 = RageUI.CreateMenu('~p~Garage', '~p~Interaction')
mainMenu6.Display.Header = true 
mainMenu6.Closed = function()
  open = false
end

function OpenGarageUnicorn()
     if open then 
         open = false
         RageUI.Visible(mainMenu6, false)
         return
     else
         open = true 
         RageUI.Visible(mainMenu6, true)
         CreateThread(function()
         while open do 
            RageUI.IsVisible(mainMenu6,function() 
              
              RageUI.Button("Ranger votre véhicule", nil, {RightLabel = "→→"}, true , {
                onSelected = function()
                  local playerPed = PlayerPedId()
      
                  if IsPedSittingInAnyVehicle(playerPed) then
                    local vehicle = GetVehiclePedIsIn(playerPed, false)
            
                    if GetPedInVehicleSeat(vehicle, -1) == playerPed then
                      ESX.ShowNotification('La voiture a été mis dans le garage')
                      ESX.Game.DeleteVehicle(vehicle)
                       
                    else
                      ESX.ShowNotification('Mais toi place conducteur, ou sortez de la voiture.')
                    end
                  else
                    local vehicle = ESX.Game.GetVehicleInDirection()
            
                    if DoesEntityExist(vehicle) then
                      ESX.ShowNotification('La voiture à été placer dans le garage.')
                      ESX.Game.DeleteVehicle(vehicle)
            
                    else
                      ESX.ShowNotification('Aucune voitures autours')
                    end
                  end
              end,})
              
              RageUI.Button("Limousine", nil, {RightLabel = "→→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("stretch")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, 87.28, -1281.11, 29.13, 126.16, true, true)
                      SetVehicleCustomPrimaryColour(vehicle, 13, 17, 22)
                      SetVehicleCustomSecondaryColour(vehicle, 13, 17, 22)
                      RageUI.CloseAll()
                    end
                })

                RageUI.Button("Van", nil, {RightLabel = "→→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("sadler")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, 87.28, -1281.11, 29.13, 126.16, true, true)
                      SetVehicleCustomPrimaryColour(vehicle, 13, 17, 22)
                      SetVehicleCustomSecondaryColour(vehicle, 13, 17, 22)
                      RageUI.CloseAll()
                    end
                })

            end)
          Wait(0)
         end
      end)
   end
end

----OUVRIR LE MENU------------

local position = {
	{x = 87.28, y = -1281.11, z = 29.13}  
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'unicorn' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 4.0 then
            wait = 0
            DrawMarker(22, 87.28, -1281.11, 29.13, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 136, 14, 79, 255, true, true, p19, true)  

        
            if dist <= 5.0 then
               wait = 0
                Visual.Subtitle("Appuyez sur [~p~E~w~] pour accéder au garage", 1) 
                if IsControlJustPressed(1,51) then
                  OpenGarageUnicorn()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

--- BLIPS ---

Citizen.CreateThread(function()
 
  local blip = AddBlipForCoord(123.37, -1290.06, 29.26)  

  SetBlipSprite (blip, 121) -- Model du blip
  SetBlipDisplay(blip, 4)
  SetBlipScale  (blip, 0.6) -- Taille du blip
  SetBlipColour (blip, 19) -- Couleur du blip
  SetBlipAsShortRange(blip, true)

  BeginTextCommandSetBlipName('STRING')
  AddTextComponentSubstringPlayerName('Unicorn') -- Nom du blip
  EndTextCommandSetBlipName(blip)
end)






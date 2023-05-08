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
local mainMenu6 = RageUI.CreateMenu('Garage', 'Interaction')
mainMenu6.Display.Header = true 
mainMenu6.Closed = function()
  open = false
end

function OpenMenu6()
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
              
              RageUI.Button("FlatBed", nil, {RightLabel = "→→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("flatbed")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, -182.521484375, -1319.9547119141, 31.902782440186, 4.141, true, true)
                      RageUI.CloseAll()
                    end
                })

                RageUI.Button("Tow-truck 1", nil, {RightLabel = "→→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("towtruck")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, -182.521484375, -1319.9547119141, 31.902782440186, 4.141, true, true)
                      RageUI.CloseAll()
                    end
                })

                RageUI.Button("Tow-truck 2", nil, {RightLabel = "→→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("towtruck2")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, -182.521484375, -1319.9547119141, 31.902782440186, 4.141, true, true)
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
	{x = -197.75, y = -1309.16, z = 31.29}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'mechanic' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 5.0 then
            wait = 0
            DrawMarker(22, -197.75, -1309.16, 31.29, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 142, 36, 170, 255, true, true, p19, true)  

        
            if dist <= 1.0 then
               wait = 0
                Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour ~p~intéragir", 1) 
                if IsControlJustPressed(1,51) then
                  OpenMenu6()
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

    local blip = AddBlipForCoord(-211.08851623535, -1324.0513916016, 30.890407562256)

    SetBlipSprite (blip, 402) -- Model du blip
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.9) -- Taille du blip
    SetBlipColour (blip, 5) -- Couleur du blip
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('Mécano') -- Nom du blip
    EndTextCommandSetBlipName(blip)
end)

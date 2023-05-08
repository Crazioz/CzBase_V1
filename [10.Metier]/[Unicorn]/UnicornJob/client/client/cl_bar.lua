ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

--- MENU ---
local open = false 
local mainMenu = RageUI.CreateMenu("Bar", "UNICORN")
mainMenu.Closed = function()
	open = false
end

function OpenMenuBar()
     if open then 
         open = false
         RageUI.Visible(mainMenu, false)
         return
     else
         open = true 
         RageUI.Visible(mainMenu, true)
         CreateThread(function()
         while open do 
            RageUI.IsVisible(mainMenu,function() 

                RageUI.Separator("↓ ~r~Boissons ~s~↓")


				RageUI.Button("Eau", nil, {RightLabel = "~g~3 $"}, true , {
					onSelected = function()
						TriggerServerEvent('bar:BuyEau')	
					end
				})

                RageUI.Button("Coca", nil, {RightLabel = "~g~4 $"}, true , {
					onSelected = function()
						TriggerServerEvent('bar:BuyCoca')	
					end
				})

                RageUI.Button("Ice-Tea", nil, {RightLabel = "~g~4 $"}, true , {
					onSelected = function()
						TriggerServerEvent('bar:BuyIceTea')	
					end
				})
                
                 RageUI.Button("Vodka", nil, {RightLabel = "~g~4 $"}, true , {
					onSelected = function()
						TriggerServerEvent('bar:Buyvodka')	
					end
				})   
                            
                 RageUI.Button("Whisky", nil, {RightLabel = "~g~4 $"}, true , {
					onSelected = function()
						TriggerServerEvent('bar:Buywhisky')	
					end
				})            



				RageUI.Separator("↓ ~r~Nourritures ~s~↓")

                RageUI.Button("Bol de cacahuètes", nil, {RightLabel = "~g~5 $"}, true , {
					onSelected = function()
						TriggerServerEvent('bar:BuyCacahuète')
					end
				})

                
                RageUI.Button("Bol de pistache", nil, {RightLabel = "~g~5 $"}, true , {
					onSelected = function()
						TriggerServerEvent('bar:Buypistache')
					end
				})

                                
                RageUI.Button("Bol de noix de cajou", nil, {RightLabel = "~g~4 $"}, true , {
					onSelected = function()
						TriggerServerEvent('bar:Buycajou')
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
	{x = 136.04, y = -1283.45, z = 29.26}  
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
            DrawMarker(22, 136.04, -1283.45, 29.26, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 136, 14, 79, 255, true, true, p19, true)  

        
            if dist <= 5.0 then
               wait = 0
                Visual.Subtitle("Appuyez sur [~p~E~w~] pour accéder au bar", 1) 
                if IsControlJustPressed(1,51) then
                    OpenMenuBar()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)
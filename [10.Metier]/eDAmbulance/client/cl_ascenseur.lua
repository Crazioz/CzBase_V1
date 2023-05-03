ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
while ESX == nil do Wait(0) end 
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)


--- MENU ---

local open = false 
local mainMenu = RageUI.CreateMenu('~b~Ascenseur', '~b~Ambulance') 
mainMenu.Display.Header = true 
mainMenu.Closed = function()
  open = false
end

--- FUNCTION OPENMENU ---

function OpenMenuAscenseurAmbulance() 
    if open then 
		open = false
		RageUI.Visible(mainMenu, false)
		return
	else
		open = true 
		RageUI.Visible(mainMenu, true)
		CreateThread(function()
		while open do 
        RageUI.IsVisible(mainMenu, function()


			RageUI.Button("~g~0 ~s~: ~s~[~o~Accueil~s~]", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    local coords = GetEntityCoords(PlayerPedId())
                    if GetDistanceBetweenCoords(coords,-664.21, 326.46, 78.12, true) > 0.5 then
                    SetEntityCoords(PlayerPedId(), -664.21, 326.46, 78.12, 0.0, 0.0, 0.0, true)
                    SetEntityHeading(PlayerPedId(), 356.94)
                    RageUI.CloseAll()
				end
            end
			})

			RageUI.Button("~g~1 ~s~: ~s~[~o~1 etage~s~]", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    local coords = GetEntityCoords(PlayerPedId())
                    if GetDistanceBetweenCoords(coords, -664.28, 326.12, 83.09, true) > 0.5 then
                    SetEntityCoords(PlayerPedId(), -664.28, 326.12, 83.09, 0.0, 0.0, 0.0, true)
                    SetEntityHeading(PlayerPedId(), 175.3)
                    RageUI.CloseAll()
				end
            end
			})


			RageUI.Button("~g~1 ~s~: ~s~[~o~2 etage~s~]", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    local coords = GetEntityCoords(PlayerPedId())
                    if GetDistanceBetweenCoords(coords, -664.13, 326.49, 88.02, true) > 0.5 then
                    SetEntityCoords(PlayerPedId(), -664.13, 326.49, 88.02, 0.0, 0.0, 0.0, true)
                    SetEntityHeading(PlayerPedId(), 175.3)
                    RageUI.CloseAll()
				end
            end
			})


            RageUI.Button("~g~2 ~s~: ~s~[~o~3 etage~s~]", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    local coords = GetEntityCoords(PlayerPedId())
                    if GetDistanceBetweenCoords(coords, -664.16, 326.13, 92.74, true) > 0.5 then
                    SetEntityCoords(PlayerPedId(), -664.16, 326.13, 92.74, 0.0, 0.0, 0.0, true)
                    SetEntityHeading(PlayerPedId(), 81.38)
                    RageUI.CloseAll()
				end
            end
			})

			RageUI.Button("~g~1 ~s~: ~s~[~o~Héliport~s~]", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    local coords = GetEntityCoords(PlayerPedId())
                    if GetDistanceBetweenCoords(coords, -664.26, 326.21, 140.12, true) > 0.5 then
                    SetEntityCoords(PlayerPedId(), -664.26, 326.21, 140.12, 0.0, 0.0, 0.0, true)
                    SetEntityHeading(PlayerPedId(), 175.3)
                    RageUI.CloseAll()
				end
            end
			})


		end)			
		Wait(0)
	   end
	end)
 end
end

Citizen.CreateThread(function()
    while true do 
        local wait = 750
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' then
            for k in pairs(Config.Ascenseur) do 
                local plyCoords = GetEntityCoords(PlayerPedId(), false)
                local pos = Config.Ascenseur
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)
  
                if dist <= 5.0 then 
                    wait = 0
                    DrawMarker(Config.MarkerType, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
                end
  
                if dist <= 2.0 then 
                    wait = 0
                    Visual.Subtitle(Config.TextAscenseur, 1)
                    if IsControlJustPressed(1,51) then
                        OpenMenuAscenseurAmbulance()
                    end
                end
            end
        end
    Citizen.Wait(wait)
    end
  end)
  
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
local mainMenu = RageUI.CreateMenu('~b~Pharmacie', '~b~Ambulance') 
mainMenu.Display.Header = true 
mainMenu.Closed = function()
  open = false
end

--- FUNCTION OPENMENU ---

function PharmacieAmbulance() 
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

			RageUI.Separator("↓   ~b~Pharmaci    ~s~↓")

			for k, v in pairs(Config.Pharmacie) do
			RageUI.Button(v.Nom, nil, {RightLabel = "(x1)"}, true, {
				onSelected = function()
					TriggerServerEvent('Pharmacy:giveItem', v.Nom, v.Item)
				end
			})
	
			
		end
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
			for k in pairs(Config.Position.Pharmacie) do
                local plyCoords = GetEntityCoords(PlayerPedId(), false)
                local pos = Config.Position.Pharmacie
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

                if dist <= Config.MarkerDistance then
                    wait = 0
                    DrawMarker(Config.MarkerType, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
                end

                if dist <= 1.0 then
                    wait = 0
                    Visual.Subtitle(Config.TextPharmacie, 1)
                    if IsControlJustPressed(1,51) then
                        PharmacieAmbulance()
                    end
                end
            end
		end
    Citizen.Wait(wait)
    end
end)
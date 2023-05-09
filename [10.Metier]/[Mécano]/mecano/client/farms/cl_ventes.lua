ESX = exports["es_extended"]:getSharedObject()

--- MENU ---

local open = false 
local mainMenu = RageUI.CreateMenu('Ventes', 'Mecano')
mainMenu.Display.Header = true 
mainMenu.Closed = function()
  open = false
end

--- FUNCTION OPENMENU ---

function VentesMeca()
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

			RageUI.Button("Vendre Kit de réparation", nil, {RightLabel = "~r~40$"}, true , {
				onSelected = function()
                    TriggerServerEvent('sellkitrepa')
				end
			}, subMenu)

		   end)
		Wait(0)
	   end
	end)
 end
end
		-------------------------------------------------------------------------------------------------------

local position = {
	{x = 739.52, y = -546.27, z = 26.87}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'mechanic' then 
            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 20.0 then
            wait = 0
			DrawMarker(22, 739.52, -546.27, 26.87, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 1.0, 1.0, 1.0, 142, 36, 170, 255, true, true, p19, true)   

        
            if dist <= 1.0 then
               wait = 0
                Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour ~p~intéragir", 1) 
                if IsControlJustPressed(1,51) then
					VentesMeca()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

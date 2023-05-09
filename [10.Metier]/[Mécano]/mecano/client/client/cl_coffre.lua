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
local mainMenu7 = RageUI.CreateMenu('Mecano', 'Interaction')
mainMenu7.Display.Header = true 
mainMenu7.Closed = function()
  open = false
end

function CoffreMecano()
     if open then 
         open = false
         RageUI.Visible(mainMenu7, false)
         return
     else
         open = true 
         RageUI.Visible(mainMenu7, true)
         CreateThread(function()
         while open do 
            RageUI.IsVisible(mainMenu7,function() 

				RageUI.Button("Prendre Objet(s)", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						OpenGetStocksMecanoMenu()
					RageUI.CloseAll()
					end
				})

				RageUI.Button("Déposer Objet(s)", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						OpenPutStocksLSPDMenu()
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
	{x = -215.34, y = -1339.64, z = 34.89}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'mechanic' then 
            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 5.0 then
            wait = 0
            DrawMarker(22, -215.34, 1339.64, 34.89, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 142, 36, 170, 255, true, true, p19, true)  

        
            if dist <= 1.0 then
               wait = 0
                Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour ~p~intéragir", 1) 
                if IsControlJustPressed(1,51) then
					CoffreMecano()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

-----FONCTION
function OpenGetStocksMecanoMenu()
	ESX.TriggerServerCallback('esx_mecanojob:prendreitem', function(items)
		local elements = {}

		for i=1, #items, 1 do
            table.insert(elements, {
                label = 'x' .. items[i].count .. ' ' .. items[i].label,
                value = items[i].name
            })
        end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
            css      = 'mechanic',
			title    = 'mecano stockage',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			local itemName = data.current.value

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count', {
                css      = 'mechanic',
				title = 'quantité'
			}, function(data2, menu2)
				local count = tonumber(data2.value)

				if not count then
					ESX.ShowNotification('quantité invalide')
				else
					menu2.close()
					menu.close()
					TriggerServerEvent('esx_mecanojob:prendreitems', itemName, count)

					Citizen.Wait(300)
					OpenGetStocksMecanoMenu()
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end)
end

function OpenPutStocksLSPDMenu()
	ESX.TriggerServerCallback('esx_mecanojob:inventairejoueur', function(inventory)
		local elements = {}

		for i=1, #inventory.items, 1 do
			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {
					label = item.label .. ' x' .. item.count,
					type = 'item_standard',
					value = item.name
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
            css      = 'police',
			title    = 'inventaire',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			local itemName = data.current.value

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count', {
                css      = 'police',
				title = 'quantité'
			}, function(data2, menu2)
				local count = tonumber(data2.value)

				if not count then
					ESX.ShowNotification('quantité invalide')
				else
					menu2.close()
					menu.close()
					TriggerServerEvent('esx_mecanojob:stockitem', itemName, count)

					Citizen.Wait(300)
					OpenPutStocksLSPDMenu()
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end)
end
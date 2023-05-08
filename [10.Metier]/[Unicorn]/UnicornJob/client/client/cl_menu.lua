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
local mainMenu8 = RageUI.CreateMenu('~p~Unicorn', '~p~Interaction')
local subMenu8 = RageUI.CreateSubMenu(mainMenu8, "~p~Annonces", "~p~Interaction")
local subMenu10 = RageUI.CreateSubMenu(mainMenu8, "~p~Farm", "~p~Interaction")
mainMenu8.Display.Header = true 
mainMenu8.Closed = function()
  open = false
end

function OpenUnicornF6()
	if open then 
		open = false
		RageUI.Visible(mainMenu8, false)
		return
	else
		open = true 
		RageUI.Visible(mainMenu8, true)
		CreateThread(function()
		while open do 
		   RageUI.IsVisible(mainMenu8,function() 

			RageUI.Separator("~p~↓ Annonce ↓")

			RageUI.Button("Annonces Unicorn", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu8)

			RageUI.Separator("~p~↓ Facture ↓")

			RageUI.Button("Faire une Facture", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					OpenFactureUnicorn()
                    RageUI.CloseAll()
				end
			})
			

			end)

			RageUI.IsVisible(subMenu8,function() 

			 RageUI.Button("Annonce Ouvertures", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					TriggerServerEvent('Ouvre:unicorn')
				end
			})

			RageUI.Button("Annonce Fermetures", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					TriggerServerEvent('Ferme:unicorn')
				end
			})

			RageUI.Button("Annonce Recrutement", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					TriggerServerEvent('Recru:unicorn')
				end
			})

		   end)

		   RageUI.IsVisible(subMenu10,function() 

			RageUI.Button("Obtenir le point de récolte", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					SetNewWaypoint(2324.39, 4746.05, 36.06)  
				end
			})

			RageUI.Button("Obtenir le point de traitement", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					SetNewWaypoint(2491.27, 4961.4, 44.68) 
				end 
			})


			end)

		 Wait(0)
		end
	 end)
  end
end




-- FUNCTION BILLING --

function OpenFactureUnicorn()

	ESX.UI.Menu.Open(
	  'dialog', GetCurrentResourceName(), 'billing',
	  {
		title = "Facture"
	  },
	  function(data, menu)
	  
		local amount = tonumber(data.value)
		local player, distance = ESX.Game.GetClosestPlayer()
  
		if player ~= -1 and distance <= 3.0 then
  
		  menu.close()
		  if amount == nil then
			  ESX.ShowNotification("~r~Problèmes~s~: Montant invalide")
		  else
			local playerPed        = GetPlayerPed(-1)
			TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TIME_OF_DEATH', 0, true)
			Citizen.Wait(5000)
			  TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(player), 'society_unicorn', ('unicorn'), amount)
			  Citizen.Wait(100)
			  ESX.ShowNotification("~r~Vous avez bien envoyer la facture")
		  end
  
		else
		  ESX.ShowNotification("~r~Problèmes~s~: Aucun joueur à proximitée")
		end
  
	  end,
	  function(data, menu)
		  menu.close()
	  end
	)
  end

-- OUVERTURE DU MENU --

Keys.Register('F6', 'unicorn', 'Ouvrir le menu unicorn', function()
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'unicorn' then
    	OpenUnicornF6()
	end
end)


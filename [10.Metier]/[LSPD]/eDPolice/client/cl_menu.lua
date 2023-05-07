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

-- MenuFouille

local Items = {}      
local Armes = {}    
local ArgentSale = {} 

local PlayerData = {}

local function MarquerJoueur()
	local ped = GetPlayerPed(ESX.Game.GetClosestPlayer())
	local pos = GetEntityCoords(ped)
	local target, distance = ESX.Game.GetClosestPlayer()
	if distance <= 4.0 then
	DrawMarker(2, pos.x, pos.y, pos.z+1.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 0, 255, 0, 170, 0, 1, 2, 1, nil, nil, 0)
end
end

local function getPlayerInv(player)
	Items = {}
	Armes = {}
	ArgentSale = {}
	
	ESX.TriggerServerCallback('police:getOtherPlayerData', function(data)
		for i=1, #data.accounts, 1 do
			if data.accounts[i].name == 'black_money' and data.accounts[i].money > 0 then
				table.insert(ArgentSale, {
					label    = ESX.Math.Round(data.accounts[i].money),
					value    = 'black_money',
					itemType = 'item_account',
					amount   = data.accounts[i].money
				})
	
				break
			end
		end
	
		for i=1, #data.weapons, 1 do
			table.insert(Armes, {
				label    = ESX.GetWeaponLabel(data.weapons[i].name),
				value    = data.weapons[i].name,
				right    = data.weapons[i].ammo,
				itemType = 'item_weapon',
				amount   = data.weapons[i].ammo
			})
		end
	
		for i=1, #data.inventory, 1 do
			if data.inventory[i].count > 0 then
				table.insert(Items, {
					label    = data.inventory[i].label,
					right    = data.inventory[i].count,
					value    = data.inventory[i].name,
					itemType = 'item_standard',
					amount   = data.inventory[i].count
				})
			end
		end
	end, GetPlayerServerId(player))
	end


-- MENU FUNCTION --

local open = false 
local mainMenu8 = RageUI.CreateMenu('Police', 'LSPD')
local subMenu8 = RageUI.CreateSubMenu(mainMenu8, "Demande renfort", "LSPD")
local subMenu9 = RageUI.CreateSubMenu(mainMenu8, "Infos LSPD", "LSPD")
local subMenu10 = RageUI.CreateSubMenu(mainMenu8, "Intéraction", "LSPD")
local subMenu11 = RageUI.CreateSubMenu(mainMenu8, "Intéraction", "LSPD")
local subMenu12 = RageUI.CreateSubMenu(mainMenu8, "Intéraction Personelle", "LSPD")
local subMenu13 = RageUI.CreateSubMenu(mainMenu8, "Fouille", "LSPD")
local subMenu14 = RageUI.CreateSubMenu(mainMenu8, "Amende", "LSPD")
local subMenu15 = RageUI.CreateSubMenu(mainMenu8, "Chien", "LSPD")
local subMenu16 = RageUI.CreateSubMenu(mainMenu8, "License", "LSPD")
mainMenu8.Display.Header = true 
mainMenu8.Closed = function()
  open = false
end

function OpenMenuPolice()
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
			RageUI.Checkbox("Prendre son service", nil, servicepolice, {}, {
                onChecked = function(index, items)
                    servicepolice = true
                    local info = 'prise'
                    TriggerServerEvent('police:PriseEtFinservice', info)
                end,
                onUnChecked = function(index, items)
                    servicepolice = false
                    local info = 'fin'
                    TriggerServerEvent('police:PriseEtFinservice', info)
                end
            })

			if servicepolice then

			RageUI.Separator('↓ ~g~Communication ↓')

			RageUI.Button("Demande de renfort", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu8)

			RageUI.Button("Code Radio", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu9)
			
			RageUI.Separator('↓ ~o~Intération ↓')

			RageUI.Button("Gerés les license", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
		   }, subMenu16)

			RageUI.Button("Intéraction Personelle", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu12)

			RageUI.Button("Intéraction sur une Personne", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu10)

			RageUI.Button("Intéraction sur un Chien", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu15)

			RageUI.Button("Intéraction sur un Véhicule", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu11)


		    end
			end)

			RageUI.IsVisible(subMenu8,function() 

				RageUI.Button("Petite demande", nil, {RightLabel = "→"}, not codesCooldown1 , {
					onSelected = function()
						codesCooldown1 = true 
						local raison = 'petit'
						local elements  = {}
						local playerPed = PlayerPedId()
						local coords  = GetEntityCoords(playerPed)
						local name = GetPlayerName(PlayerId())
					TriggerServerEvent('renfort', coords, raison)
					Citizen.SetTimeout(10000, function() codesCooldown1 = false end)
				end
			})
		
			RageUI.Button("Moyenne demande", nil, {RightLabel = "→"}, not codesCooldown2 , {
				onSelected = function()
					codesCooldown2 = true 
					local raison = 'importante'
					local elements  = {}
					local playerPed = PlayerPedId()
					local coords  = GetEntityCoords(playerPed)
					local name = GetPlayerName(PlayerId())
				TriggerServerEvent('renfort', coords, raison)
				Citizen.SetTimeout(10000, function() codesCooldown2 = false end)
			end
		})
		
		RageUI.Button("Grosse demande", nil, {RightLabel = "→"}, not codesCooldown3 , {
			onSelected = function()
				codesCooldown3 = true 
				local raison = 'omgad'
				local elements  = {}
				local playerPed = PlayerPedId()
				local coords  = GetEntityCoords(playerPed)
				local name = GetPlayerName(PlayerId())
			TriggerServerEvent('renfort', coords, raison)
			Citizen.SetTimeout(10000, function() codesCooldown3 = false end)
		end
	})

	RageUI.Button("Quadriller la zone", nil, {RightLabel = "→"}, not codesCooldown3 , {
		onSelected = function()
			codesCooldown3 = true 
			local raison = 'danger'
			local elements  = {}
			local playerPed = PlayerPedId()
			local coords  = GetEntityCoords(playerPed)
			local name = GetPlayerName(PlayerId())
		TriggerServerEvent('renfort', coords, raison)
		Citizen.SetTimeout(10000, function() codesCooldown3 = false end)
	end
})

	RageUI.Button("Course de rue en cours", nil, {RightLabel = "→"}, not codesCooldown3 , {
		onSelected = function()
			codesCooldown3 = true 
			local raison = 'race'
			local elements  = {}
			local playerPed = PlayerPedId()
			local coords  = GetEntityCoords(playerPed)
			local name = GetPlayerName(PlayerId())
		TriggerServerEvent('renfort', coords, raison)
		Citizen.SetTimeout(10000, function() codesCooldown3 = false end)
	end
	
})

		   end)

		   RageUI.IsVisible(subMenu9,function() 


			RageUI.Button("Pause de service", nil, {RightLabel = "→"}, not codesCooldown4 , {
				onSelected = function()
					codesCooldown4 = true 
					local info = 'pause'
					TriggerServerEvent('police:PriseEtFinservice', info)
					Citizen.SetTimeout(10000, function() codesCooldown4 = false end)
					end
	})
			RageUI.Button("Standby", nil, {RightLabel = "→"}, not codesCooldown5 , {
				onSelected = function()
					codesCooldown5 = true 
					local info = 'standby'
					TriggerServerEvent('police:PriseEtFinservice', info)
					Citizen.SetTimeout(10000, function() codesCooldown5 = false end)
					end
	})
			RageUI.Button("Control en cours", nil, {RightLabel = "→"}, not codesCooldown6 , {
				onSelected = function()
					codesCooldown6 = true 
					local info = 'control'
					TriggerServerEvent('police:PriseEtFinservice', info)
					Citizen.SetTimeout(10000, function() codesCooldown6 = false end)
					end
	})
			RageUI.Button("Refus d'obtempérer", nil, {RightLabel = "→"}, not codesCooldown7 , {
				onSelected = function()
					codesCooldown7 = true 
					local info = 'refus'
					TriggerServerEvent('police:PriseEtFinservice', info)
					Citizen.SetTimeout(10000, function() codesCooldown7 = false end)
					end
	})
			RageUI.Button("Crime en cours", nil, {RightLabel = "→"}, not codesCooldown8 , {
				onSelected = function()
					codesCooldown8 = true 
					local info = 'crime'
					TriggerServerEvent('police:PriseEtFinservice', info)
					Citizen.SetTimeout(10000, function() codesCooldown8 = false end)
					end
	})

end)

		RageUI.IsVisible(subMenu10,function() 

		RageUI.Button("Amender une Personne", nil, {RightLabel = "→"}, true , {
			onSelected = function()
			end
		}, subMenu14)

			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

			if closestDistance <= 3.0 then 
				RageUI.Button("Fouiller", nil, {RightLabel = "→"}, true, {
					onActive = function()
						if closestPlayer ~= -1 then
							MarquerJoueur()
						end
					end,
					onSelected = function() 
						if closestDistance <= 5.0 then 
							getPlayerInv(closestPlayer)
							ExecuteCommand("me fouille l'individu")	
						end
					end,
				}, subMenu13)
			else
				RageUI.Button("Fouiller", "~r~Personnes aux Alentours !", {RightLabel = ">"}, false, {
					onSelected = function() 
					end
				})
			end

			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			RageUI.Button("Menotter/démenotter", nil, {RightLabel = "→"}, true, {
				onSelected = function() 
					if closestDistance <= 5.0 then 
					TriggerServerEvent('police:handcuff', GetPlayerServerId(closestPlayer))
				else
					ESX.ShowNotification('Aucun joueurs à proximité')
				end
			end
		})


	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	RageUI.Button("Escorter", nil, {RightLabel = "→"}, true, {
		onSelected = function() 
			if closestDistance <= 5.0 then 
			TriggerServerEvent('police:drag', GetPlayerServerId(closestPlayer))
		else
			ESX.ShowNotification('Aucun joueurs à proximité')
		end
	end
})

      local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
      RageUI.Button("Mettre dans un véhicule", nil, {RightLabel = "→"}, true, {
	       onSelected = function() 
		if closestDistance <= 5.0 then 
		TriggerServerEvent('police:putInVehicle', GetPlayerServerId(closestPlayer))
	else
		ESX.ShowNotification('Aucun joueurs à proximité')
	end
end
})

      local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
      RageUI.Button("Sortir du véhicule", nil, {RightLabel = "→"}, true, {
	     onSelected = function() 
		 if closestDistance <= 5.0 then 
		 TriggerServerEvent('police:OutVehicle', GetPlayerServerId(closestPlayer))
	 else
		 ESX.ShowNotification('Aucun joueurs à proximité')
	 end
  end
  })

end)

RageUI.IsVisible(subMenu11,function() 

	RageUI.Button("Rechercher une plaque", nil, {RightLabel = "→"}, true , {
		onSelected = function()
			local numplaque = KeyboardInput("Combien ?", "", 10)
			local length = string.len(numplaque)
			if not numplaque or length < 2 or length > 8 then
				ESX.ShowNotification("Ce n'est ~r~pas~s~ un numéro enregistrement dans les fichier de ~b~police")
			else
				Rechercherplaquevoiture(numplaque)
				RageUI.CloseAll()
			end
		end,})

	RageUI.Button("Mettre véhicule en fourriere", nil, {RightLabel = "→"}, true , {
		onSelected = function()
			local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
			local playerPed = PlayerPedId()
			if dist4 < 5 then
				TaskStartScenarioInPlace(PlayerPedId(), 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
				Citizen.Wait(7500)
				DeleteEntity(veh)
				ClearPedTasksImmediately(playerPed)
				ESX.ShowNotification("Véhicule en fourrière ")
			end
		end,})

	RageUI.Button("Ouvrir / fermer de force", nil, {RightLabel = "→"}, true , {
		onSelected = function()
			local playerPed = PlayerPedId()
			local vehicle = ESX.Game.GetVehicleInDirection()
			local coords = GetEntityCoords(playerPed)

			if IsPedSittingInAnyVehicle(playerPed) then
				ESX.ShowNotification('Action impossible')
				return
			end

			if DoesEntityExist(vehicle) then
				isBusy = true
				TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
				Citizen.CreateThread(function()
					Citizen.Wait(10000)

					SetVehicleDoorsLocked(vehicle, 1)
					SetVehicleDoorsLockedForAllPlayers(vehicle, false)
					ClearPedTasksImmediately(playerPed)

					ESX.ShowNotification('Véhicule dévérouiller')
					isBusy = false
				end)
			else
				ESX.ShowNotification('Pas de véhicules à proximité')
			end
	end,})

    end)

	RageUI.IsVisible(subMenu12, function()

        RageUI.Checkbox("Sortir/Rentrer un Bouclier", nil, bouclier, {}, {
            onChecked = function(index, items)
                bouclier = true
                EnableShield()
            end,
            onUnChecked = function(index, items)
				bouclier = false
                DisableShield()
            end
        })

		RageUI.Button("Porps LSPD", nil , {RightLabel = "→"}, true , {
			onSelected = function()
		    ExecuteCommand("props")
			RageUI.CloseAll()
		end
	})


	end)
			RageUI.IsVisible(subMenu13,function()


			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
			RageUI.Separator("↓ ~r~Argent(s) sale(s) ~s~↓")
			for k,v  in pairs(ArgentSale) do
				RageUI.Button("Argent sale :", nil, {RightLabel = "~g~"..v.label.."$"}, true, {
					onSelected = function() 
						local combien = KeyboardInput("Combien ?", '' , '', 8)
						if tonumber(combien) > v.amount then
							RageUI.Popup({message = "~r~quantité invalide"})
						else
							TriggerServerEvent('police:confiscatePlayerItem', GetPlayerServerId(closestPlayer), v.itemType, v.value, tonumber(combien))
						end
						RageUI.GoBack()
					end
				})
			end
	
			RageUI.Separator("↓ ~r~Objet(s) ~s~↓")
			for k,v  in pairs(Items) do
				RageUI.Button(v.label, nil, {RightLabel = "~g~x"..v.right}, true, {
					onSelected = function() 
						local combien = KeyboardInput("Combien ?", '' , '', 8)
						if tonumber(combien) > v.amount then
							RageUI.Popup({message = "~r~quantité invalide"})
						else
							TriggerServerEvent('police:confiscatePlayerItem', GetPlayerServerId(closestPlayer), v.itemType, v.value, tonumber(combien))
						end
						RageUI.GoBack()
					end
				})
			end

			RageUI.Separator("↓ ~r~Arme(s) ~s~↓")

			for k,v  in pairs(Armes) do
				RageUI.Button(v.label, nil, {RightLabel = "com ~g~"..v.right.. " ~s~munitions"}, true, {
					onSelected = function() 
						local combien = KeyboardInput("Combien ?", '' , '', 8)
						if tonumber(combien) > v.amount then
							RageUI.Popup({message = "~r~quantité invalide"})
						else
							TriggerServerEvent('police:confiscatePlayerItem', GetPlayerServerId(closestPlayer), v.itemType, v.value, tonumber(combien))
						end
						RageUI.GoBack()
					end
				})
			end
	
			end)

			RageUI.IsVisible(subMenu14,function()

				RageUI.Button("Amende personnalisé", nil , {RightLabel = "→"}, true , {
					onSelected = function()  
						amount = KeyboardInput("Montant de la facture",nil,3)
						amount = tonumber(amount)
						local player, distance = ESX.Game.GetClosestPlayer()
		
						if player ~= -1 and distance <= 3.0 then
				
						if amount == nil then
							ESX.ShowNotification("~r~Problèmes~s~: Montant invalide")
						else
							local playerPed        = PlayerPedId()
							Citizen.Wait(5000)
							TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(player), 'society_mcdo', ('Mcdo'), amount)
							Citizen.Wait(100)
							ESX.ShowNotification("~g~Vous avez bien envoyer la facture")
						end
				
						else
						ESX.ShowNotification("~r~Problèmes~s~: Aucun joueur à proximitée")
						end
					end
				});

				for k,v in pairs(Config.amende) do
				for _,i in pairs(v) do
				RageUI.Button(i.label, nil, {RightLabel = "~g~"..i.price.."$"}, true , {
					onSelected = function() 
						local player, distance = ESX.Game.GetClosestPlayer()
						local sID = GetPlayerServerId(player)

						if player ~= -1 and distance <= 3.0 then
							TriggerServerEvent("police:SendFacture", sID, i.price)
							RageUI.CloseAll()
							open = false
						else
							TriggerEvent("esx:showNotification", "Aucun joueur proche", 3000, "warning") 
						end
					end
				})

			end
			end
			end)

	RageUI.IsVisible(subMenu15,function()


RageUI.Checkbox("Sortir/Rentrer le chien", nil, chienpolice, {}, {
    onChecked = function(index, items)
        chienpolice = true
        if not DoesEntityExist(policeDog) then
        RequestModel(351016938)
        while not HasModelLoaded(351016938) do Wait(0) end
        policeDog = CreatePed(4, 351016938, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 1.0, -0.98), 0.0, true, false)
        SetEntityAsMissionEntity(policeDog, true, true)
        ESX.ShowNotification('~g~Chien Spawn')
        end
    end,
    onUnChecked = function(index, items)
        chienpolice = false
        ESX.ShowNotification('~r~Chien Rentrer')
        DeleteEntity(policeDog)
    end
})


RageUI.Button("Assis", nil, {RightLabel = "→"}, true , {
	onSelected = function()
		if DoesEntityExist(policeDog) then
			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(policeDog), true) <= 5.0 then
				if IsEntityPlayingAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 3) then
					ClearPedTasks(policeDog)
				else
					loadDict('rcmnigel1c')
					TaskPlayAnim(PlayerPedId(), 'rcmnigel1c', 'hailing_whistle_waive_a', 8.0, -8, -1, 120, 0, false, false, false)
					Wait(2000)
					loadDict("creatures@rottweiler@amb@world_dog_sitting@base")
					TaskPlayAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 8.0, -8, -1, 1, 0, false, false, false)
				end
			else
				ESX.ShowNotification('~r~Le chien est trop loin de vous !')
			end
		else
			ESX.ShowNotification('~r~Vous n\'avez pas de chien !')
		end
	end
	})

	RageUI.Button("Dire d'attaquer", nil, {RightLabel = "→"}, true , {
		onSelected = function()
			if DoesEntityExist(policeDog) then
				if not IsPedDeadOrDying(policeDog) then
					if GetDistanceBetweenCoords(GetEntityCoords(policeDog), GetEntityCoords(PlayerPedId()), true) <= 3.0 then
						local player, distance = ESX.Game.GetClosestPlayer()
						if distance ~= -1 then
							if distance <= 3.0 then
								local playerPed = GetPlayerPed(player)
								if not IsPedInCombat(policeDog, playerPed) then
									if not IsPedInAnyVehicle(playerPed, true) then
										TaskCombatPed(policeDog, playerPed, 0, 16)
									end
								else
									ClearPedTasksImmediately(policeDog)
								end
							end
						else
							ESX.ShowNotification("~r~Probleme~s~: Aucuns joueurs proche")
						end
					else
						ESX.ShowNotification('~r~Le chien est trop loin de vous !')
					end
				else
					ESX.ShowNotification('Votre chien est mort !')
				end
			else
				ESX.ShowNotification('~r~Vous n\'avez pas de chien')
			end
		end
		})

		RageUI.Button("Monter/sortir du véhicule", nil, {RightLabel = "→"}, true , {
			onSelected = function()
			    if DoesEntityExist(policeDog) then
                    if not IsPedInAnyVehicle(policeDog, false) then
                        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(policeDog)) <= 10.0 then
                            local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 7.5, 0, 70)
                            print(vehicle)
                            if DoesEntityExist(vehicle) then
                                for i = 0, GetVehicleMaxNumberOfPassengers(vehicle) do
                                    if IsVehicleSeatFree(vehicle, i) then
                                        TaskEnterVehicle(policeDog, vehicle, 15.0, i, 1.0, 1, 0)
                                        break
                                    end
                                end
                            else
                                ESX.ShowNotification('~r~vous n\'avez pas de véhicule !')
                            end
                        else
                            ESX.ShowNotification('~r~Le chien est trop loin de vous !')
                        end
                    else
                        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(policeDog)) <= 5.0 then
                            TaskLeaveVehicle(policeDog, GetVehiclePedIsIn(policeDog, false), 0)
                        else
                            ESX.ShowNotification('~r~Le chien est trop loin de vous !')
                        end
                    end
                else
                    ESX.ShowNotification('~r~Vous n\'avez pas de chien !')
				end
			end
			})

			RageUI.Button("Suis-moi", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				    local playerPed = PlayerPedId()
                    if DoesEntityExist(policeDog) then
                        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(policeDog), true) <= 5.0 then
                            TaskGoToEntity(policeDog, playerPed, -1, 1.0, 10.0, 1073741824, 1)
                        else
                            ESX.ShowNotification('~r~Le chien est trop loin de vous !')
                        end
                    else
                        ESX.ShowNotification('~r~Vous n\'avez pas de chien !')
					end
				end
				})

			end)

			RageUI.IsVisible(subMenu16, function()

				RageUI.Separator("↓ License ↓")

  RageUI.Button('Saisir le permis de conduire (Voiture)', nil, {RightLabel = "→"}, true , {
	  onHovered = function()
		  DisplayClosetPlayer()
	  end,
	  onSelected = function()
		  local player, dst = GetClosestPlayer()
		  if dst ~= nil and dst < 2 then
			  local sID = GetPlayerServerId(player)
			  TriggerServerEvent("esx_license:removeLicense", sID, "drive")
			  ESX.ShowNotification("Vous avez retiré le permis de la personne.")
		  end
	  end,
  })

  RageUI.Button('Saisir le permis de conduire (Poids lourd)', nil, {RightLabel = "→"}, true , {
	  onHovered = function()
		  DisplayClosetPlayer()
	  end,
	  onSelected = function()
		  local player, dst = GetClosestPlayer()
		  if dst ~= nil and dst < 2 then
			  local sID = GetPlayerServerId(player)
			  TriggerServerEvent("esx_license:removeLicense", sID, "drive_truck")
			  ESX.ShowNotification("Vous avez retiré le permis de la personne.")
		  end
	  end,
  })

  RageUI.Button('Saisir le permis de conduire (Moto)', nil, {RightLabel = "→"}, true , {
	  onHovered = function()
		  DisplayClosetPlayer()
	  end,
	  onSelected = function()
		  local player, dst = GetClosestPlayer()
		  if dst ~= nil and dst < 2 then
			  local sID = GetPlayerServerId(player)
			  TriggerServerEvent("esx_license:removeLicense", sID, "drive_bike")
			  ESX.ShowNotification("Vous avez retiré le permis de la personne.")
		  end
	  end,
  })

  RageUI.Separator("License d'arme")

  RageUI.Button("Permis d'arme", nil, {RightLabel = "~g~2500$"}, true , {
	  onSelected = function()
		  local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
		  if closestPlayer ~= -1 and closestDistance <= 3.0 then
			  TriggerServerEvent('esx_license:addLicense', GetPlayerServerId(closestPlayer), 'weapon')
			  ESX.ShowNotification('Permis d\'arme attribuer avec suces.')
		  else
			  ESX.ShowNotification('Aucun joueurs à proximité')
		  end
	  end
	  })

	  RageUI.Button('Saisir le permis d\'arme', nil, {RightLabel = "→"}, true , {
		  onHovered = function()
			  DisplayClosetPlayer()
		  end,
		  onSelected = function()
			  local player, dst = GetClosestPlayer()
			  if dst ~= nil and dst < 2 then
				  local sID = GetPlayerServerId(player)
				  TriggerServerEvent("esx_license:removeLicense", sID, "weapon")
				  ESX.ShowNotification("Vous avez retiré le permis de la personne.")
			  end
		  end,
	  })

			
			
			end)

		 Wait(0)
		end
	 end)
  end
end

-- OUVERTURE DU MENU --

Keys.Register('F6', 'yrz', 'Ouvrir le menu yrz', function()
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
		OpenMenuPolice()
	end
end)

-- Infos Police

RegisterNetEvent('police:InfoService')
AddEventHandler('police:InfoService', function(service, nom)
	if service == 'prise' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Prise de service', 'Agent: '..nom..'\n~w~Code: 10-8\n~w~Information: ~g~Prise de service.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'fin' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Fin de service', 'Agent: '..nom..'\n~w~Code: 10-10\n~w~Information: ~r~Fin de service.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'pause' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Pause de service', 'Agent: '..nom..'\n~w~Code: 10-6\n~w~Information: ~o~Pause de service.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'standby' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Mise en standby', 'Agent: '..nom..'\n~w~Code: 10-12\n~w~Information: Standby, en attente de dispatch.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'control' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Control routier', 'Agent: '..nom..'\n~w~Code: 10-48\n~w~Information: Control routier en cours.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'refus' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Refus d\'obtemperer', 'Agent: '..nom..'\n~w~Code: 10-30\n~w~Information: Refus d\'obtemperer / Delit de fuite en cours.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'crime' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Crime en cours', 'Agent: '..nom..'\n~w~Code: 10-31\n~w~Information: Crime en cours / poursuite en cours.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	end
end)

-- Renfort

RegisterNetEvent('renfort:setBlip')
AddEventHandler('renfort:setBlip', function(coords, raison)
	if raison == 'petit' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: CODE-2\n~w~Importance: ~g~Légère.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		color = 2
	elseif raison == 'importante' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: CODE-3\n~w~Importance: ~o~Importante.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		color = 47
	elseif raison == 'omgad' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		PlaySoundFrontend(-1, "FocusIn", "HintCamSounds", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: CODE-99\n~w~Importance: ~r~URGENTE !', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "FocusOut", "HintCamSounds", 1)
		color = 1
	elseif raison == 'danger' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		PlaySoundFrontend(-1, "Zone_Enemy_Capture", "DLC_Apartments_Drop_Zone_Sounds", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Quadrillage de la zone demandé.\nRéponse: CODE 10-108\n~w~Importance: ~b~ Importante', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "FocusOut", "HintCamSounds", 1)
		PlaySoundFrontend(-1, "Crash", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1)
		color = 57
	elseif raison == 'race' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		PlaySoundFrontend(-1, "Crash", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Course de rue en cours.\nRéponse: CODE 10-94\n~w~Importance: ~o~ Importante', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "FocusOut", "HintCamSounds", 1)
		color = 17
	end
	local blipId = AddBlipForCoord(coords)
	SetBlipSprite(blipId, 161)
	SetBlipScale(blipId, 1.2)
	SetBlipColour(blipId, color)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Demande renfort')
	EndTextCommandSetBlipName(blipId)
	Wait(80 * 1000)
	RemoveBlip(blipId)
end)

---- KeyboardInput

function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)


    AddTextEntry('FMMC_KEY_TIP1', TextEntry) 
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
    blockinput = true

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do 
        Citizen.Wait(0)
    end
        
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult() 
        Citizen.Wait(500) 
        blockinput = false
        return result 
    else
        Citizen.Wait(500) 
        blockinput = false 
        return nil 
    end
end
-------------------------- Intéraction 


RegisterNetEvent('police:handcuff')
AddEventHandler('police:handcuff', function()

  IsHandcuffed    = not IsHandcuffed;
  local playerPed = PlayerPedId()

  Citizen.CreateThread(function()

    if IsHandcuffed then

        RequestAnimDict('mp_arresting')
        while not HasAnimDictLoaded('mp_arresting') do
            Citizen.Wait(100)
        end

      TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)
      DisableControlAction(2, 37, true)
      SetEnableHandcuffs(playerPed, true)
      SetPedCanPlayGestureAnims(playerPed, false)
      FreezeEntityPosition(playerPed,  true)
      DisableControlAction(0, 24, true) -- Attack
      DisableControlAction(0, 257, true) -- Attack 2
      DisableControlAction(0, 25, true) -- Aim
      DisableControlAction(0, 263, true) -- Melee Attack 1
      DisableControlAction(0, 37, true) -- Select Weapon
      DisableControlAction(0, 47, true)  -- Disable weapon
      

    else

      ClearPedSecondaryTask(playerPed)
      SetEnableHandcuffs(playerPed, false)
      SetPedCanPlayGestureAnims(playerPed,  true)
      FreezeEntityPosition(playerPed, false)

    end

  end)
end)


RegisterNetEvent('police:putInVehicle')
AddEventHandler('police:putInVehicle', function()

  local playerPed = PlayerPedId()
  local coords    = GetEntityCoords(playerPed)

  if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

    local vehicle = GetClosestVehicle(coords.x,  coords.y,  coords.z,  5.0,  0,  71)

    if DoesEntityExist(vehicle) then

      local maxSeats = GetVehicleMaxNumberOfPassengers(vehicle)
      local freeSeat = nil

      for i=maxSeats - 1, 0, -1 do
        if IsVehicleSeatFree(vehicle,  i) then
          freeSeat = i
          break
        end
      end

      if freeSeat ~= nil then
        TaskWarpPedIntoVehicle(playerPed,  vehicle,  freeSeat)
      end

    end

  end

end)


RegisterNetEvent("police:OutVehicle")
AddEventHandler("police:OutVehicle", function()
    TaskLeaveAnyVehicle(PlayerPedId(), 0, 0)
end)


local EnTrainEscorter = false
local PolicierEscorte = nil
RegisterNetEvent("police:drag")
AddEventHandler("police:drag", function(player)
    EnTrainEscorter = not EnTrainEscorter
    print(EnTrainEscorter)
    PolicierEscorte = tonumber(player)
    if EnTrainEscorter then
        escort()
    end
end)

function escort()
    Citizen.CreateThread(function()
        local pPed = PlayerPedId()
	    while EnTrainEscorter do
            Wait(1)
            pPed = PlayerPedId()
	    	local targetPed = GetPlayerPed(GetPlayerFromServerId(PolicierEscorte))

	    	if not IsPedSittingInAnyVehicle(targetPed) then
	    		AttachEntityToEntity(pPed, targetPed, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
	    	else
	    		EnTrainEscorter = false
	    		DetachEntity(pPed, true, false)
	    	end

	    	if IsPedDeadOrDying(targetPed, true) then
	    		EnTrainEscorter = false
	    		DetachEntity(pPed, true, false)
	    	end
        end
        DetachEntity(pPed, true, false)
    end)
end

function GetClosestPlayer()
	local pPed = PlayerPedId()
	local players = GetActivePlayers()
	local coords = GetEntityCoords(pPed)
	local pCloset = nil
	local pClosetPos = nil
	local pClosetDst = nil
	for k,v in pairs(players) do
		if GetPlayerPed(v) ~= pPed then
			local oPed = GetPlayerPed(v)
			local oCoords = GetEntityCoords(oPed)
			local dst = GetDistanceBetweenCoords(oCoords, coords, true)
			if pCloset == nil then
				pCloset = v
				pClosetPos = oCoords
				pClosetDst = dst
			else
				if dst < pClosetDst then
					pCloset = v
					pClosetPos = oCoords
					pClosetDst = dst
				end
			end
		end
	end

	return pCloset, pClosetDst
end


function Rechercherplaquevoiture(plaquerechercher)
    local PlaqueMenu = RageUI.CreateMenu("plaque d'immatriculation", "Informations")
    ESX.TriggerServerCallback('police:getVehicleInfos', function(retrivedInfo)
    RageUI.Visible(PlaqueMenu, not RageUI.Visible(PlaqueMenu))
        while PlaqueMenu do
            Citizen.Wait(0)
					RageUI.IsVisible(PlaqueMenu,function()
                            RageUI.Button("Numéro de plaque : ", nil, {RightLabel = retrivedInfo.plate}, true, {
                                	onSelected = function()
                                    end
                                })
						
                            if not retrivedInfo.owner then
                                RageUI.Button("Propriétaire : ", nil, {RightLabel = "Inconnu"}, true, {
                                    	onSelected = function()
                                		end
                                    })
                            else
                                RageUI.Button("Propriétaire : ", nil, {RightLabel = retrivedInfo.owner}, true, {
                                    	onSelected = function()
										end
                                    })

								local hashvoiture = retrivedInfo.vehicle.model
								local nomvoituremodele = GetDisplayNameFromVehicleModel(hashvoiture)
								local nomvoituretexte  = GetLabelText(nomvoituremodele)

                                RageUI.Button("Modèle du véhicule : ", nil, {RightLabel = nomvoituretexte}, true, {
                                    	onSelected = function()
										end
                                    })
                            end
                end, function()
                end)
            if not RageUI.Visible(PlaqueMenu) then
            PlaqueMenu = RMenu:DeleteType("plaque d'immatriculation", true)
        end
    end
end, plaquerechercher)
end

loadDict = function(dict)
    while not HasAnimDictLoaded(dict) do Wait(0) RequestAnimDict(dict) end
end

-- ANIM
local animDict = "combat@gestures@gang@pistol_1h@beckon"
local animName = "0"

local prop = "prop_ballistic_shield"

function EnableShield()
    shieldActive = true
    local ped = PlayerPedId()
    local pedPos = GetEntityCoords(ped, false)
    
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(250)
    end

    TaskPlayAnim(ped, animDict, animName, 8.0, -8.0, -1, (2 + 16 + 32), 0.0, 0, 0, 0)

    RequestModel(GetHashKey(prop))
    while not HasModelLoaded(GetHashKey(prop)) do
        Citizen.Wait(250)
    end

    local shield = CreateObject(GetHashKey(prop), pedPos.x, pedPos.y, pedPos.z, 1, 1, 1)
    shieldEntity = shield
    AttachEntityToEntity(shieldEntity, ped, GetEntityBoneIndexByName(ped, "IK_L_Hand"), 0.0, -0.05, -0.10, -30.0, 180.0, 40.0, 0, 0, 1, 0, 0, 1)
    SetWeaponAnimationOverride(ped, GetHashKey("Gang1H"))
    SetEnableHandcuffs(ped, true)
end

function DisableShield()
    local ped = PlayerPedId()
    DeleteEntity(shieldEntity)
    ClearPedTasksImmediately(ped)
    SetWeaponAnimationOverride(ped, GetHashKey("Default"))
    SetEnableHandcuffs(ped, false)
    shieldActive = false
end

Citizen.CreateThread(function()
    while true do
        if shieldActive then
            local ped = PlayerPedId()
            if not IsEntityPlayingAnim(ped, animDict, animName, 1) then
                RequestAnimDict(animDict)
                while not HasAnimDictLoaded(animDict) do
                    Citizen.Wait(100)
                end
            
                TaskPlayAnim(ped, animDict, animName, 8.0, -8.0, -1, (2 + 16 + 32), 0.0, 0, 0, 0)
            end
        end
        Citizen.Wait(500)
    end
end)

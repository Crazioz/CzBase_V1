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
local mainMenu8 = RageUI.CreateMenu('Mecano', 'Interaction')
local subMenu8 = RageUI.CreateSubMenu(mainMenu8, "Annonces", "Interaction")
local subMenu9 = RageUI.CreateSubMenu(mainMenu8, "Interaction véhicule", "Interaction")
--local subMenu10 = RageUI.CreateSubMenu(mainMenu8, "Farm", "Interaction")
mainMenu8.Display.Header = true 
mainMenu8.Closed = function()
  open = false
end

function OpenMenu8()
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

			RageUI.Button("Annonces Mécano", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu8)

			RageUI.Button("Faire une Facture", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					OpenBillingMenu2()
                    RageUI.CloseAll()
				end
			})


			RageUI.Button("Interaction sur véhicule", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu9)

--[[			RageUI.Button("Pour accéder au farms", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu10)]]

			RageUI.Button('Commencer une mission flatbed', nil, { Color = {BackgroundColor = { 76, 175, 80, 50}} }, true, {
				onSelected = function()
					StartMecanoMission()
				end,
			})

			end)

			RageUI.IsVisible(subMenu8,function() 

			 RageUI.Button("Annonce Ouvertures", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					TriggerServerEvent('Ouvre:mechanic')
				end
			})

			RageUI.Button("Annonce Fermetures", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					TriggerServerEvent('Ferme:mechanic')
				end
			})

		   end)

		   RageUI.IsVisible(subMenu10,function() 

			RageUI.Button("Obtenir le point de récolte", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					SetNewWaypoint(1189.44, -3108.60)
				end
			})

			RageUI.Button("Obtenir le point de traitement", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					SetNewWaypoint(473.88, -1952.02) 
				end
			})

			RageUI.Button("Obtenir le point de vente", nil, {RightLabel = "→"}, true , {
				onSelected = function()
					SetNewWaypoint(739.52, -546.27)
				end
			})

		end)


		   RageUI.IsVisible(subMenu9,function() 

			RageUI.Button("Réparer le véhicule", nil, {RightLabel = "→→"}, true, {
				onSelected = function()
					local playerPed = PlayerPedId()
					local vehicle   = ESX.Game.GetVehicleInDirection()
					local coords    = GetEntityCoords(playerPed)
		
					if IsPedSittingInAnyVehicle(playerPed) then
						ESX.ShowNotification('Veuillez descendre de la voiture.')
						return
					end
		
					if DoesEntityExist(vehicle) then
						isBusy = true
						TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, true)
						Citizen.CreateThread(function()
							Citizen.Wait(20000)
		
							SetVehicleFixed(vehicle)
							SetVehicleDeformationFixed(vehicle)
							SetVehicleUndriveable(vehicle, false)
							SetVehicleEngineOn(vehicle, true, true)
							ClearPedTasksImmediately(playerPed)
		
							ESX.ShowNotification('la voiture est correctement réparer')
							isBusy = false
						end)
					else
						ESX.ShowNotification('Aucun véhicule à proximiter')
					end
		 
				end,}) 
				
				RageUI.Button("Nettoyer véhicule", nil, {RightLabel = "→→"}, true , {
					onSelected = function()
						local playerPed = PlayerPedId()
						local vehicle   = ESX.Game.GetVehicleInDirection()
						local coords    = GetEntityCoords(playerPed)
			
						if IsPedSittingInAnyVehicle(playerPed) then
							ESX.ShowNotification('Veuillez sortir de la voiture?')
							return
						end
			
						if DoesEntityExist(vehicle) then
							isBusy = true
							TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_MAID_CLEAN', 0, true)
							Citizen.CreateThread(function()
								Citizen.Wait(10000)
			
								SetVehicleDirtLevel(vehicle, 0)
								ClearPedTasksImmediately(playerPed)
			
								ESX.ShowNotification('Voiture néttoyé')
								isBusy = false
							end)
						else
							ESX.ShowNotification('Aucun véhicule trouvée')
						end
						end,})
						
				   RageUI.Button("Mettre véhicule en fourriere", nil, {RightLabel = "→→"}, true , {
					onSelected = function()
						local playerPed = PlayerPedId()

						if IsPedSittingInAnyVehicle(playerPed) then
							local vehicle = GetVehiclePedIsIn(playerPed, false)
			
							if GetPedInVehicleSeat(vehicle, -1) == playerPed then
								ESX.ShowNotification('la voiture a été mis en fourrière')
								ESX.Game.DeleteVehicle(vehicle)
							   
							else
								ESX.ShowNotification('Mais toi place conducteur, ou sortez de la voiture.')
							end
						else
							local vehicle = ESX.Game.GetVehicleInDirection()
			
							if DoesEntityExist(vehicle) then
								ESX.ShowNotification('La voiture à été placer en fourriere.')
								ESX.Game.DeleteVehicle(vehicle)
			
							else
								ESX.ShowNotification('Aucune voitures autours')
							end
						end
				end,})

				
				RageUI.Button("Placer/enlever de la remorque", nil, {RightLabel = "→→"}, true , {
                    onSelected = function()
				local playerPed = PlayerPedId()
				local vehicle = GetVehiclePedIsIn(playerPed, true)
	
				local towmodel = GetHashKey('flatbed')
				local isVehicleTow = IsVehicleModel(vehicle, towmodel)
	
				if isVehicleTow then
					local targetVehicle = ESX.Game.GetVehicleInDirection()
	
					if CurrentlyTowedVehicle == nil then
						if targetVehicle ~= 0 then
							if not IsPedInAnyVehicle(playerPed, true) then
								if vehicle ~= targetVehicle then
									AttachEntityToEntity(targetVehicle, vehicle, 20, -0.5, -5.0, 1.001, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									CurrentlyTowedVehicle = targetVehicle
									ESX.ShowNotification(_U('vehicle_success_attached'))
	
									if NPCOnJob then
										if NPCTargetTowable == targetVehicle then
											ESX.ShowNotification(_U('please_drop_off'))
											Config.Zones.VehicleDelivery.Type = 1
	
											if Blips['NPCTargetTowableZone'] then
												RemoveBlip(Blips['NPCTargetTowableZone'])
												Blips['NPCTargetTowableZone'] = nil
											end
	
											Blips['NPCDelivery'] = AddBlipForCoord(Config.Zones.VehicleDelivery.Pos.x, Config.Zones.VehicleDelivery.Pos.y, Config.Zones.VehicleDelivery.Pos.z)
											SetBlipRoute(Blips['NPCDelivery'], true)
										end
									end
								else
									ESX.ShowNotification(_U('cant_attach_own_tt'))
								end
							end
						else
							ESX.ShowNotification(_U('no_veh_att'))
						end
					else
						AttachEntityToEntity(CurrentlyTowedVehicle, vehicle, 20, -0.5, -12.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						DetachEntity(CurrentlyTowedVehicle, true, true)
	
						if NPCOnJob then
							if NPCTargetDeleterZone then
	
								if CurrentlyTowedVehicle == NPCTargetTowable then
									ESX.Game.DeleteVehicle(NPCTargetTowable)
									TriggerServerEvent('esx_mechanicjob:onNPCJobMissionCompleted')
									StopNPCJob()
									NPCTargetDeleterZone = false
								else
									ESX.ShowNotification(_U('not_right_veh'))
								end
	
							else
								ESX.ShowNotification(_U('not_right_place'))
							end
						end
	
						CurrentlyTowedVehicle = nil
						ESX.ShowNotification(_U('veh_det_succ'))
					end
				else
					ESX.ShowNotification(_U('imp_flatbed'))
                end
            end,})

				
		
				RageUI.Button("Crocheter véhicule", nil, {RightLabel = "→→"}, true , {
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

		 Wait(0)
		end
	 end)
  end
end



-- FUNCTION BILLING --

function OpenBillingMenu2()

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
			  TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(player), 'society_mechanic', ('mechanic'), amount)
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

Keys.Register('F6', 'mechanic', 'Ouvrir le menu mecano', function()
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'mechanic' then
    	OpenMenu8()
	end
end)

-- Remorque

RageUI.Button("Placer sur la remorque", nil, {RightLabel = "→→"}, true , {
	onSelected = function()
local playerPed = PlayerPedId()
local vehicle = GetVehiclePedIsIn(playerPed, true)

local towmodel = GetHashKey('flatbed')
local isVehicleTow = IsVehicleModel(vehicle, towmodel)

if isVehicleTow then
	local targetVehicle = ESX.Game.GetVehicleInDirection()

	if CurrentlyTowedVehicle == nil then
		if targetVehicle ~= 0 then
			if not IsPedInAnyVehicle(playerPed, true) then
				if vehicle ~= targetVehicle then
					AttachEntityToEntity(targetVehicle, vehicle, 20, -0.5, -5.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					CurrentlyTowedVehicle = targetVehicle
					ESX.ShowNotification(_U('vehicle_success_attached'))

					if NPCOnJob then
						if NPCTargetTowable == targetVehicle then
							ESX.ShowNotification(_U('please_drop_off'))
							Config.Zones.VehicleDelivery.Type = 1

							if Blips['NPCTargetTowableZone'] then
								RemoveBlip(Blips['NPCTargetTowableZone'])
								Blips['NPCTargetTowableZone'] = nil
							end

							Blips['NPCDelivery'] = AddBlipForCoord(Config.Zones.VehicleDelivery.Pos.x, Config.Zones.VehicleDelivery.Pos.y, Config.Zones.VehicleDelivery.Pos.z)
							SetBlipRoute(Blips['NPCDelivery'], true)
						end
					end
				else
					ESX.ShowNotification(_U('cant_attach_own_tt'))
				end
			end
		else
			ESX.ShowNotification(_U('no_veh_att'))
		end
	else
		AttachEntityToEntity(CurrentlyTowedVehicle, vehicle, 20, -0.5, -12.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
		DetachEntity(CurrentlyTowedVehicle, true, true)

		if NPCOnJob then
			if NPCTargetDeleterZone then

				if CurrentlyTowedVehicle == NPCTargetTowable then
					ESX.Game.DeleteVehicle(NPCTargetTowable)
					TriggerServerEvent('esx_mechanicjob:onNPCJobMissionCompleted')
					StopNPCJob()
					NPCTargetDeleterZone = false
				else
					ESX.ShowNotification(_U('not_right_veh'))
				end

			else
				ESX.ShowNotification(_U('not_right_place'))
			end
		end

		CurrentlyTowedVehicle = nil
		ESX.ShowNotification(_U('veh_det_succ'))
	end
else
	ESX.ShowNotification(_U('imp_flatbed'))
end
end,})


-- Mission

local possible_pos = {
    vector4(491.89169311523, -845.50604248047, 24.980794906616, 39.033138275146),
    vector4(513.06481933594, -637.29772949219, 24.74239730835, 38.930896759033),
    vector4(149.83453369141, -714.80883789062, 33.055198669434, 38.471733093262),
    vector4(257.74771118164, -377.36575317383, 44.566967010498, 129.87409973145),
    vector4(-168.8092956543, -407.89593505859, 34.11901473999, 275.58102416992),
    vector4(-580.96728515625, -656.76361083984, 33.009841918945, 153.74195861816),
    vector4(-1082.517578125, -1244.4296875, 5.1372656822205, 149.92752075195),
    vector4(-848.04577636719, -1724.7478027344, 19.595062255859, 149.49687194824),
    vector4(-598.51202392578, -2359.5065917969, 13.826570510864, 156.93809509277),
}

local possible_veh = {
    "blista",
    "brioso",
    "prairie",
    "exemplar",
    "f620",
    "felon",
    "blade",
    "buccaneer",
    "chino2",
    "dominator",
    "dominator3",
    "hotknife",
    "baller3",
    "contender",
    "entityxf",
    "fmj",
}

local zoneForJob = {
    ["mecano"] = vector4(-182.19206237793, -1315.3775634766, 31.295955657959, 186.79428100586),
    ["mecano2"] = vector4(915.40838623047, -964.46362304688, 39.753158569336, 74.211723327637),
}

local isInMission = false
local veh_mission = {}
local blip = nil


function GerRandomZone()
    return possible_pos[math.random(1,#possible_pos)]
end

function GerRandomVeh()
    return possible_veh[math.random(1,#possible_veh)]
end

function GenerateRandomMods(veh)
    SetVehicleModKit(veh, 0)
    for i = 0,49 do
        local num = GetNumVehicleMods(veh, i)
        if num ~= nil and num ~= 0 then
            SetVehicleMod(veh, i, math.random(0,num), true)
        end
    end

    SetVehicleDirtLevel(veh, math.random(1,10) / 100)
    for i = 1,50 do
        SetVehicleDamage(veh, math.random(1, 50) / 100, math.random(1, 50) / 100,math.random(1, 50) / 100, 200.0, 100.0, true)
    end
end

function StopMission()
    RemoveBlip(blip)
    TriggerServerEvent("DeleteEntity", veh_mission)
    veh_mission = {}
    isInMission = false
end

function StartMecanoMission()
    if isInMission then
        isInMission = false
        PlaySoundFrontend(-1, "Nav_Arrow_Ahead", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 1)
        TriggerEvent("esx:showNotification", "~r~Vous avez annulé votre mission.", "CHAR_CHAT_CALL", 5000, "danger")
        return
    else
        Citizen.CreateThread(function()
            isInMission = true
            local zone = GerRandomZone()
            local veh = GerRandomVeh()

            local pPed = GetPlayerPed(-1)
            local pCoords = GetEntityCoords(pPed)
            local dst = GetDistanceBetweenCoords(pCoords, zone, true)

            PlaySoundFrontend(-1, "Menu_Accept", "Phone_SoundSet_Default", 1)
            TriggerEvent("esx:showNotification", "~g~Une mission vous à été attribué! Regarder votre GPS!", "CHAR_CHAT_CALL", 5000, "danger")

            blip = AddBlipForCoord(zone)
            SetBlipScale(blip, 1.2)
            SetBlipRoute(blip, true)

            while dst > 130.0 and isInMission do
                pCoords = GetEntityCoords(pPed)
                dst = GetDistanceBetweenCoords(pCoords, zone, true)
                Visual.Subtitle("Allez sur la zone GPS", 500)
                Wait(500)
            end

            if not isInMission then StopMission() return end

            local model = GetHashKey(veh)
            RequestModel(model)
            while not HasModelLoaded(model) do Wait(1) end
            local veh = CreateVehicle(GetHashKey(veh), zone, 1, 1)
            SetEntityAsMissionEntity(veh, 1, 1)
            GenerateRandomMods(veh)
            table.insert(veh_mission, NetworkGetNetworkIdFromEntity(veh))

            while not IsEntityAttached(veh) and isInMission do
                Visual.Subtitle("Attacher le véhicule sur le flatbed", 500)
                Wait(500)
            end

            if not isInMission then StopMission() return end

            SetBlipCoords(blip, zoneForJob[pJob])
            SetBlipRoute(blip, true)

            while dst > 5.0 and isInMission do
                pCoords = GetEntityCoords(pPed)
                dst = GetDistanceBetweenCoords(pCoords, zoneForJob[pJob], true)
                Visual.Subtitle("Déposer le véhicule dans votre garage", 500)
                Wait(500)
            end

            if not isInMission then StopMission() return end

            while IsEntityAttached(veh) and isInMission do
                Visual.Subtitle("Détacher le véhicule", 500)
                Wait(500)
            end

            if not isInMission then StopMission() return end

            TriggerServerEvent("mecano:EndMission", pJob)
            PlaySoundFrontend(-1, "BASE_JUMP_PASSED", "HUD_AWARDS", 1)
            StopMission()
        end)
    end
end 
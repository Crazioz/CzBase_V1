function generateBlips()
	if PL.ActivateSingle then
	    for _, v in pairs(PL.BlipsSingle) do
		   blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
		   SetBlipDisplay(blip, 4)
		   SetBlipSprite(blip, v.sprite)
		   SetBlipColour(blip, v.color)
		   SetBlipScale(blip, v.scale)
		   SetBlipAsShortRange(blip, true)
		   BeginTextCommandSetBlipName("STRING")
		   AddTextComponentString(v.name)
		   EndTextCommandSetBlipName(blip)
	    end
	end
 
	if PL.ActivateRadius then
	    for _, v in pairs(PL.BlipsRadius) do
		   blip = AddBlipForRadius(v.coords.x, v.coords.y, v.coords.z, v.radius)
		   SetBlipSprite(blip, v.sprite)
		   SetBlipColour(blip, v.color)
		   SetBlipAlpha(blip, v.transparency)
	    end
	end
 end
 
 -------------------------------------------------------------------------------------------
 
 PL = {}

 PL.ActivateSingle = true
 PL.ActivateRadius = true
 
 PL.BlipsSingle = {
 
		 [1] = {
				 name = "Maze Bank Arena",
				 sprite = 304,
				 color = 0,
				 scale = 0.6,
				 coords = vector3(-254.26171875,-2027.1669921875,29.940134048462),
		 },
 
		 --[2] = {
		 --    name = "Frontière Los santos",                                 --display name
		 --    sprite = 461,                                   --https://docs.fivem.net/docs/game-references/blips/
		 --    color = 44,                                      --https://docs.fivem.net/docs/game-references/blips/
		 --    scale = 0.6,                                    --scale
		 --    coords = vector3(1446.7485351563,-2621.4538574219,48.442108154297)       --coordinates
		 --},
 --
		 --[3] = {
		 --    name = "Frontière Cayo Perico",
		 --    sprite = 461,
		 --    color = 44,
		 --    scale = 0.6,
		 --    coords = vector3(4588.7827148438,-4322.0502929688,9.9577894210815),
		 --},
		 
 }
 --Radius---------------------------------------------------------------------------------------------------------------------------------------
 
 PL.BlipsRadius = {
		-- [1] = {
		--     sprite = 9,                                    --https://docs.fivem.net/docs/game-references/blips/
		--     color = 1,                                     --https://docs.fivem.net/docs/game-references/blips/
		--     coords = vector3(1446.7485351563,-2621.4538574219,48.435733795166),     --coordinates
		--     radius = 100.0,                                --radius. float value
		--     transparency = 90,                             --transparency. 0-255
		-- },
 --
		-- [2] = {
		--     sprite = 9,                                    --https://docs.fivem.net/docs/game-references/blips/
		--     color = 1,                                     --https://docs.fivem.net/docs/game-references/blips/
		--     coords = vector3(4583.4331054688,-4317.1811523438,12.135783195496),     --coordinates
		--     radius = 100.0,                                --radius. float value
		--     transparency = 90,                             --transparency. 0-255
		-- },
 }
 
 function DisplayHelpText(text)
	 SetTextComponentFormat("STRING")
	 AddTextComponentString(text)
	 DisplayHelpTextFromStringLabel(0, 0, 0, -1)
 end
 
 function ShowInfo(text)
	--  SetNotificationTextEntry("STRING")
	--  AddTextComponentString(text)
	--  DrawNotification(true, false)
	ESX.ShowNotification(text)
 end
 
 local takeHostage = {
	 allowedWeapons = {
		 `WEAPON_PISTOL`,
		 `WEAPON_COMBATPISTOL`,
		 `WEAPON_PISTOL50`,
	 },
	 InProgress = false,
	 type = "",
	 targetSrc = -1,
	 agressor = {
		 animDict = "anim@gangops@hostage@",
		 anim = "perp_idle",
		 flag = 49,
	 },
	 hostage = {
		 animDict = "anim@gangops@hostage@",
		 anim = "victim_idle",
		 attachX = -0.24,
		 attachY = 0.11,
		 attachZ = 0.0,
		 flag = 49,
	 }
 }
 
 local function GetClosestPlayer(radius)
	-- local players = GetActivePlayers()
	-- local closestDistance = -1
	-- local closestPlayer = -1
	-- local playerPed = PlayerPedId()
	-- local playerCoords = GetEntityCoords(playerPed)
 
	-- for _,playerId in ipairs(players) do
	--     local targetPed = PlayerPedId(playerId)
	--     if targetPed ~= playerPed then
	-- 	   local targetCoords = GetEntityCoords(targetPed)
	-- 	   local distance = #(targetCoords-playerCoords)
	-- 	   if closestDistance == -1 or closestDistance > distance then
	-- 		  closestPlayer = playerId
	-- 		  closestDistance = distance
	-- 	   end
	--     end
	-- end
	--  if closestDistance ~= -1 and closestDistance <= radius then
	-- 	 return closestPlayer
	--  else
	-- 	 return nil
	--  end
	return ESX.Game.GetClosestPlayer()
 end
 
 local function ensureAnimDict(animDict)
	if not HasAnimDictLoaded(animDict) then
	    RequestAnimDict(animDict)
	    while not HasAnimDictLoaded(animDict) do
		   Wait(0)
	    end
	end
	return animDict
 end
 
 local function drawNativeText(str)
	 SetTextEntry_2("STRING")
	 AddTextComponentString(str)
	 EndTextCommandPrint(1000, 1)
 end
 
 RegisterCommand("otage",function()
	 callTakeHostage()
 end)
 
 function callTakeHostage()
	 ClearPedSecondaryTask(PlayerPedId())
	 DetachEntity(PlayerPedId(), true, false)
 
	 local canTakeHostage = false
	 for i=1, #takeHostage.allowedWeapons do
		 if HasPedGotWeapon(PlayerPedId(), takeHostage.allowedWeapons[i], false) then
			 if GetAmmoInPedWeapon(PlayerPedId(), takeHostage.allowedWeapons[i]) > 0 then
				 canTakeHostage = true 
				 foundWeapon = takeHostage.allowedWeapons[i]
				 break
			 end 					
		 end
	 end
 
	 if not canTakeHostage then 
		 exports["esx_notify"]:Notify("info", 5000, "Tu doit avoir un pistolet avec des balles pour prendre en otage")
	 end
 
	 if not takeHostage.InProgress and canTakeHostage then			
		 local closestPlayer = GetClosestPlayer(3)
		 if closestPlayer then
			 local targetSrc = GetPlayerServerId(closestPlayer)
			 if targetSrc ~= -1 then
				 SetCurrentPedWeapon(PlayerPedId(), foundWeapon, true)
				 takeHostage.InProgress = true
				 takeHostage.targetSrc = targetSrc
				 TriggerServerEvent("TakeHostage:sync",targetSrc)
				 ensureAnimDict(takeHostage.agressor.animDict)
				 takeHostage.type = "agressor"
			 else
				 exports["esx_notify"]:Notify("info", 5000, "Personne à proximité à prendre en otage")
			 end
		 else
			 exports["esx_notify"]:Notify("info", 5000, "Personne à proximité à prendre en otage")
		 end
	 end
 end 
 
 RegisterNetEvent("TakeHostage:syncTarget")
 AddEventHandler("TakeHostage:syncTarget", function(target)
	 local targetPed = PlayerPedId(GetPlayerFromServerId(target))
	 takeHostage.InProgress = true
	 ensureAnimDict(takeHostage.hostage.animDict)
	 AttachEntityToEntity(PlayerPedId(), targetPed, 0, takeHostage.hostage.attachX, takeHostage.hostage.attachY, takeHostage.hostage.attachZ, 0.5, 0.5, 0.0, false, false, false, false, 2, false)
	 takeHostage.type = "hostage"
 end)
 
 RegisterNetEvent("TakeHostage:releaseHostage")
 AddEventHandler("TakeHostage:releaseHostage", function()
	 takeHostage.InProgress = false 
	 takeHostage.type = ""
	 DetachEntity(PlayerPedId(), true, false)
	 ensureAnimDict("reaction@shove")
	 TaskPlayAnim(PlayerPedId(), "reaction@shove", "shoved_back", 8.0, -8.0, -1, 0, 0, false, false, false)
	 Wait(250)
	 ClearPedSecondaryTask(PlayerPedId())
 end)
 
 RegisterNetEvent("TakeHostage:killHostage")
 AddEventHandler("TakeHostage:killHostage", function()
	 takeHostage.InProgress = false 
	 takeHostage.type = ""
	 SetEntityHealth(PlayerPedId(),0)
	 DetachEntity(PlayerPedId(), true, false)
	 ensureAnimDict("anim@gangops@hostage@")
	 TaskPlayAnim(PlayerPedId(), "anim@gangops@hostage@", "victim_fail", 8.0, -8.0, -1, 168, 0, false, false, false)
 end)
 
 RegisterNetEvent("TakeHostage:cl_stop")
 AddEventHandler("TakeHostage:cl_stop", function()
	 takeHostage.InProgress = false
	 takeHostage.type = "" 
	 ClearPedSecondaryTask(PlayerPedId())
	 DetachEntity(PlayerPedId(), true, false)
 end)
 
 Citizen.CreateThread(function()
	 generateBlips()
	 local sleep = 0
	  while true do
		  -- ReduceNPC
		 SetVehicleDensityMultiplierThisFrame(0.8)
		 SetPedDensityMultiplierThisFrame(0.8)
		 SetRandomVehicleDensityMultiplierThisFrame(0.8)
		 SetParkedVehicleDensityMultiplierThisFrame(0.8)
		 SetScenarioPedDensityMultiplierThisFrame(0.8, 0.8)
  
		 -- No Close Combat
		 if (not IsPedArmed(PlayerPedId(), 1)) and (GetSelectedPedWeapon(PlayerPedId()) ~= GetHashKey('weapon_unarmed')) then
	  
		  DisableControlAction(0, 140, true) 
		  DisableControlAction(0, 141, true) 
		  DisableControlAction(0, 142, true) 
		  end
		  -- 
  
		  local locations = Config.Locations
			  for i = 1, #locations do
					  local x = locations[i][1];
					  local y = locations[i][2];
					  local z = locations[i][3];
					  local radius = Config.Radius
					  sleep = 1000
					  if #(GetEntityCoords(PlayerPedId()) - vector3(x, y, z)) <= radius then
						sleep = 0
							  DisplayHelpText(Config.Alert) 
							  if IsControlJustPressed(0, 106) then
									  ShowInfo(Config.Warning)
							  end
							  SetPlayerCanDoDriveBy(player, false)
							  DisablePlayerFiring(player, true)
							  DisableControlAction(0, 140)
					  end
			  end
	  --	TakeHostage
	  if takeHostage.type == "agressor" then
		sleep = 0
		 DisableControlAction(0,24,true) -- disable attack
		 DisableControlAction(0,25,true) -- disable aim
		 DisableControlAction(0,47,true) -- disable weapon
		 DisableControlAction(0,58,true) -- disable weapon
		 DisableControlAction(0,21,true) -- disable sprint
		 DisablePlayerFiring(PlayerPedId(),true)
		 drawNativeText("Appuyer sur [G] pour liberer, [H] pour tirer")
 
		 if IsEntityDead(PlayerPedId()) then	
			 takeHostage.type = ""
			 takeHostage.InProgress = false
			 ensureAnimDict("reaction@shove")
			 TaskPlayAnim(PlayerPedId(), "reaction@shove", "shove_var_a", 8.0, -8.0, -1, 168, 0, false, false, false)
			 TriggerServerEvent("TakeHostage:releaseHostage", takeHostage.targetSrc)
		 end 
 
		 if IsDisabledControlJustPressed(0,47) then --release	
			 takeHostage.type = ""
			 takeHostage.InProgress = false 
			 ensureAnimDict("reaction@shove")
			 TaskPlayAnim(PlayerPedId(), "reaction@shove", "shove_var_a", 8.0, -8.0, -1, 168, 0, false, false, false)
			 TriggerServerEvent("TakeHostage:releaseHostage", takeHostage.targetSrc)
		 elseif IsDisabledControlJustPressed(0,74) then --kill 			
			 takeHostage.type = ""
			 takeHostage.InProgress = false 		
			 ensureAnimDict("anim@gangops@hostage@")
			 TaskPlayAnim(PlayerPedId(), "anim@gangops@hostage@", "perp_fail", 8.0, -8.0, -1, 168, 0, false, false, false)
			 TriggerServerEvent("TakeHostage:killHostage", takeHostage.targetSrc)
			 TriggerServerEvent("TakeHostage:stop",takeHostage.targetSrc)
			 Wait(100)
			 SetPedShootsAtCoord(PlayerPedId(), 0.0, 0.0, 0.0, 0)
		 end
	 elseif takeHostage.type == "hostage" then 
		sleep = 0
		 DisableControlAction(0,21,true) -- disable sprint
		 DisableControlAction(0,24,true) -- disable attack
		 DisableControlAction(0,25,true) -- disable aim
		 DisableControlAction(0,47,true) -- disable weapon
		 DisableControlAction(0,58,true) -- disable weapon
		 DisableControlAction(0,263,true) -- disable melee
		 DisableControlAction(0,264,true) -- disable melee
		 DisableControlAction(0,257,true) -- disable melee
		 DisableControlAction(0,140,true) -- disable melee
		 DisableControlAction(0,141,true) -- disable melee
		 DisableControlAction(0,142,true) -- disable melee
		 DisableControlAction(0,143,true) -- disable melee
		 DisableControlAction(0,75,true) -- disable exit vehicle
		 DisableControlAction(27,75,true) -- disable exit vehicle  
		 DisableControlAction(0,22,true) -- disable jump
		 DisableControlAction(0,32,true) -- disable move up
		 DisableControlAction(0,268,true)
		 DisableControlAction(0,33,true) -- disable move down
		 DisableControlAction(0,269,true)
		 DisableControlAction(0,34,true) -- disable move left
		 DisableControlAction(0,270,true)
		 DisableControlAction(0,35,true) -- disable move right
		 DisableControlAction(0,271,true)
	 end
 
	 -- TakeHostage 2
	 if takeHostage.type == "agressor" then
		sleep = 200
		 if not IsEntityPlayingAnim(PlayerPedId(), takeHostage.agressor.animDict, takeHostage.agressor.anim, 3) then
			 TaskPlayAnim(PlayerPedId(), takeHostage.agressor.animDict, takeHostage.agressor.anim, 8.0, -8.0, 100000, takeHostage.agressor.flag, 0, false, false, false)
		 end
	 elseif takeHostage.type == "hostage" then
		sleep = 200
		 if not IsEntityPlayingAnim(PlayerPedId(), takeHostage.hostage.animDict, takeHostage.hostage.anim, 3) then
			 TaskPlayAnim(PlayerPedId(), takeHostage.hostage.animDict, takeHostage.hostage.anim, 8.0, -8.0, 100000, takeHostage.hostage.flag, 0, false, false, false)
		 end
	 end

	 Wait(0)
	  end
  end)
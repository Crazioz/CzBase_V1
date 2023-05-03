ESX = exports["es_extended"]:getSharedObject()


local playerCars = {}

enos_conc = {
	catevehi = {},
	listecatevehi = {},
}

local derniervoituresorti = {}
local sortirvoitureacheter = {}
local CurrentAction, CurrentActionMsg, LastZone, currentDisplayVehicle, CurrentVehicleData
local CurrentActionData, Vehicles, Categories = {}, {}, {}

inview = false

function CatalogueMenu()
	local catalogueee = RageUI.CreateMenu("Catalogue", "Véhicules")
	local vehiclemenu = RageUI.CreateSubMenu(catalogueee, "Catalogue", "Catégorie véhicule")
	local vehiclemenuparam = RageUI.CreateSubMenu(vehiclemenu, "Catalogue", "Options")
	catalogueee:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
	vehiclemenu:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
	vehiclemenuparam:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
	
	catalogueee.Closed = function()
        supprimervehiculecata()
    end
	vehiclemenu.Closed = function()
        supprimervehiculecata()
    end
	vehiclemenuparam.Closed = function()
        supprimervehiculecata()
    end

        RageUI.Visible(catalogueee, not RageUI.Visible(catalogueee))

        while catalogueee do
            Citizen.Wait(0)
            RageUI.IsVisible(catalogueee, true, true, true, function()

		
            for i = 1, #enos_conc.catevehi, 1 do
            RageUI.ButtonWithStyle("Catégorie - "..enos_conc.catevehi[i].label, nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                        nomcategorie = enos_conc.catevehi[i].label
                        categorievehi = enos_conc.catevehi[i].name
                        ESX.TriggerServerCallback('enos_concess:recupererlistevehicule', function(listevehi)
                                enos_conc.listecatevehi = listevehi
                        end, categorievehi)
                    end
                end, vehiclemenu)
            end

	end, function()
	end)

	RageUI.IsVisible(vehiclemenu, true, true, true, function()
	RageUI.Separator("↓ Catégorie : "..nomcategorie.." ↓")
            
	for i2 = 1, #enos_conc.listecatevehi, 1 do
	RageUI.ButtonWithStyle(enos_conc.listecatevehi[i2].name, nil, {RightLabel =  "→"},true, function(Hovered, Active, Selected)
	if (Selected) then
			local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
			nomvoiture = enos_conc.listecatevehi[i2].name
			modelevoiture = enos_conc.listecatevehi[i2].model
		end
	end, vehiclemenuparam)
	
	end
	end, function()
	end)

	RageUI.IsVisible(vehiclemenuparam, true, true, true, function()

		if inview == true then 
			RageUI.ButtonWithStyle("~r~Quitter la prévisualisation", nil, {RightLabel =  "→→"}, true, function(h, a, s)
				if s then
					SetEntityCoords(PlayerPedId(), posavant)
					inview = false
					supprimervehiculecata()
				end
			end)
		else

		RageUI.ButtonWithStyle("Prévisualiser le véhicule", nil, {RightLabel =  "→→"}, true, function(h, a, s)
			if s then
				posavant = GetEntityCoords(PlayerPedId())
				lookveh(modelevoiture)
		--		RageUI.Popup({ message = "<C>Catalogue\n~w~Regardez en face de vous le véhicule", time_display = 1 })
				inview = true
			end
		end)

		RageUI.ButtonWithStyle("Essayer le véhicule", nil, {RightLabel =  "→→"}, true, function(h, a, s)
			if s then
				posessaie = GetEntityCoords(PlayerPedId())
				spawnuniCarCatalogue(modelevoiture)
			end
		end)
	end

	end, function()
	end)

    if not RageUI.Visible(catalogueee) and not RageUI.Visible(vehiclemenu) and not RageUI.Visible(vehiclemenuparam) then
        catalogueee = RMenu:DeleteType("Catalogue", true)
        end
    end
end

Citizen.CreateThread(function()
	while true do
		local Timer = 500
		local plycrdjob = GetEntityCoords(GetPlayerPed(-1), false)
		local jobdist = Vdist(plycrdjob.x, plycrdjob.y, plycrdjob.z, Concess.pos.catalogue.position.x, Concess.pos.catalogue.position.y, Concess.pos.catalogue.position.z)
		if jobdist <= Marker.DrawDistance and Concess.jeveuxmarker then
			Timer = 0
			DrawMarker(Marker.Type, Concess.pos.catalogue.position.x, Concess.pos.catalogue.position.y, Concess.pos.catalogue.position.z-0.99, nil, nil, nil, -90, nil, nil, Marker.Size.x, Marker.Size.y, Marker.Size.z, Marker.Color.R, Marker.Color.G, Marker.Color.B, 200)
			end
			if jobdist <= 1.0 then
				Timer = 0
					RageUI.Text({ message = "Appuyez sur ~b~[E]~s~ pour ouvrir →→ ~b~Catalogue", time_display = 1 })
					if IsControlJustPressed(1,51) then
						ESX.TriggerServerCallback('enos_concess:recuperercategorievehicule', function(catevehi)
							enos_conc.catevehi = catevehi
						end)
						CatalogueMenu()
				end   
			end
	Citizen.Wait(Timer)   
end
end)

function lookveh(car)

	DoScreenFadeOut(100)
	Citizen.Wait(750)

	local car = GetHashKey(car)
    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local vehicle = CreateVehicle(car, Concess.pos.viewvehicatalogue.position.x, Concess.pos.viewvehicatalogue.position.y, Concess.pos.viewvehicatalogue.position.z, Concess.pos.viewvehicatalogue.position.h, true, false)
	table.insert(derniervoituresorti, vehicle)
	FreezeEntityPosition(vehicle, true)
	TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
	SetModelAsNoLongerNeeded(vehicle)
	SetVehicleDoorsLocked(vehicle, 4)
	SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)

	DoScreenFadeIn(100)

-- posavant

end

function spawnuniCarCatalogue(car)
    local car = GetHashKey(car)
    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Concess.pos.posEssai.position.x, Concess.pos.posEssai.position.y, Concess.pos.posEssai.position.z, Concess.pos.posEssai.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
	SetVehicleDoorsLocked(vehicle, 4)
    RageUI.Popup({ message = "~o~Vous avez 30 secondes pour tester le véhicule", time_display = 1 })
	local timer =30
	local breakable = false
	breakable = false
	while not breakable do
		Wait(1000)
		timer = timer - 1
		if timer == 15 then
            RageUI.Popup({ message = "~o~Il vous reste 15 secondes", time_display = 1 })
		end
		if timer == 5 then
            RageUI.Popup({ message = "~r~Il vous reste 5 secondes", time_display = 1 })
		end
		if timer <= 0 then
			local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
			DeleteEntity(vehicle)
            RageUI.Popup({ message = "~r~Vous avez terminé la période d'essai", time_display = 1 })
			SetEntityCoords(PlayerPedId(), posessaie)
			breakable = true
			break
		end
	end
end

function supprimervehiculecata()
	while #derniervoituresorti > 0 do
		local vehicle = derniervoituresorti[1]

		ESX.Game.DeleteVehicle(vehicle)
		table.remove(derniervoituresorti, 1)
	end
end

function Notify(text)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(text)
	DrawNotification(false, true)
end

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end

function CatalogueKeyboardInput(TextEntry, ExampleText, MaxStringLenght)
    AddTextEntry('FMMC_KEY_TIP1', TextEntry)
    blockinput = true
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do 
        Wait(0)
    end 
        
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Wait(500)
        blockinput = false
        return result
    else
        Wait(500)
        blockinput = false
        return nil
    end
end

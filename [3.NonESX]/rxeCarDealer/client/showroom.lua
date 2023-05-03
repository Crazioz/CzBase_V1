local firstplaceshowroomsortie = {}
local secondplaceshowroomsortie = {}
local threeplaceshowroomsortie = {}

function ShowRoomOpenEnBas()
	local ShowroomMain = RageUI.CreateMenu("ShowRoom", "Concessionnaire")
    ShowroomMain:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)

        RageUI.Visible(ShowroomMain, not RageUI.Visible(ShowroomMain))
            while ShowroomMain do
            Citizen.Wait(0)
            RageUI.IsVisible(ShowroomMain, true, true, true, function()

                if FirstPlaceTake then 
                    RageUI.ButtonWithStyle("~r~Supprimer le 1", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                        if Selected then 
                            supprimervehiculeshowroom1()
                            FirstPlaceTake = false
                        end
                    end)
                else
                    RageUI.ButtonWithStyle("Emplacement 1", nil, {RightLabel = "Libre"}, true, function(Hovered, Active, Selected)
                        if Selected then 
                            spawn1()
                        end
                    end)
                end

                if SecondPlaceTake then 
                    RageUI.ButtonWithStyle("~r~Supprimer le 2", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                        if Selected then 
                            supprimervehiculeshowroom2()
                            SecondPlaceTake = false
                        end
                    end)
                else
                    RageUI.ButtonWithStyle("Emplacement 2", nil, {RightLabel = "Libre"}, true, function(Hovered, Active, Selected)
                        if Selected then 
                            spawn2()
                        end
                    end)
                end

                if ThreePlaceTake then 
                    RageUI.ButtonWithStyle("~r~Supprimer le 3", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                        if Selected then 
                            supprimervehiculeshowroom3()
                            ThreePlaceTake = false
                        end
                    end)
                else
                    RageUI.ButtonWithStyle("Emplacement 3", nil, {RightLabel = "Libre"}, true, function(Hovered, Active, Selected)
                        if Selected then 
                            spawn3()
                        end
                    end)
                end

            end, function()
            end)

            if not RageUI.Visible(ShowroomMain) then
            ShowroomMain = RMenu:DeleteType("ShowroomMain", true)
        end
    end
end

Citizen.CreateThread(function()
    while true do
        local Timer = 500
        local plycrdjob = GetEntityCoords(GetPlayerPed(-1), false)
        local jobdist = Vdist(plycrdjob.x, plycrdjob.y, plycrdjob.z, Concess.pos.showroom.menu.x, Concess.pos.showroom.menu.y, Concess.pos.showroom.menu.z)
        if jobdist <= Marker.DrawDistance and Concess.jeveuxmarker then
            Timer = 0
            DrawMarker(Marker.Type, Concess.pos.showroom.menu.x, Concess.pos.showroom.menu.y, Concess.pos.showroom.menu.z-0.99, nil, nil, nil, -90, nil, nil, Marker.Size.x, Marker.Size.y, Marker.Size.z, Marker.Color.R, Marker.Color.G, Marker.Color.B, 200)
            end
            if jobdist <= 1.0 then
                Timer = 0
                    RageUI.Text({ message = "Appuyez sur ~b~[E]~s~ pour ouvrir →→ ~b~Showroom", time_display = 1 })
                    if IsControlJustPressed(1,51) then
                        ShowRoomOpenEnBas()
                    end   
                end 
        Citizen.Wait(Timer)   
    end
end)

function supprimervehiculeshowroom1()
	while #firstplaceshowroomsortie > 0 do
		local vehicle = firstplaceshowroomsortie[1]

		ESX.Game.DeleteVehicle(vehicle)
		table.remove(firstplaceshowroomsortie, 1)
	end
end

function supprimervehiculeshowroom2()
	while #secondplaceshowroomsortie > 0 do
        local vehiclede = secondplaceshowroomsortie[1]

		ESX.Game.DeleteVehicle(vehiclede)
		table.remove(secondplaceshowroomsortie, 1)
	end
end

function supprimervehiculeshowroom3()
	while #threeplaceshowroomsortie > 0 do
        local vehicletr = threeplaceshowroomsortie[1]

		ESX.Game.DeleteVehicle(vehicletr)
		table.remove(threeplaceshowroomsortie, 1)
	end
end

function spawn1()
    local modele = KeyboardInput("Entrez le modèle", "", 100)
    RageUI.Popup({ message = "<C>Chargement du véhicule...", time_display = 1 })
    Wait(500)
    local car = GetHashKey(modele)
    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local vehicle = CreateVehicle(car, Concess.pos.showroom.show1.x, Concess.pos.showroom.show1.y, Concess.pos.showroom.show1.z, Concess.pos.showroom.show1.h, true)
    FreezeEntityPosition(vehicle, true)
    SetVehicleDoorsLocked(vehicle, 4)
    SetEntityAsMissionEntity(vehicle, true, true) 
    table.insert(firstplaceshowroomsortie, vehicle)
    FirstPlaceTake = true
end

function spawn2()
    local modelede = KeyboardInput("Entrez le modèle", "", 100)
    RageUI.Popup({ message = "<C>Chargement du véhicule...", time_display = 1 })
    Wait(500)
    local carde = GetHashKey(modelede)
    RequestModel(carde)
    while not HasModelLoaded(carde) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local vehiclede = CreateVehicle(carde, Concess.pos.showroom.show2.x, Concess.pos.showroom.show2.y, Concess.pos.showroom.show2.z, Concess.pos.showroom.show2.h, true)
    FreezeEntityPosition(vehiclede, true)
    SetVehicleDoorsLocked(vehiclede, 4)
    SetEntityAsMissionEntity(vehiclede, true, true) 
    table.insert(secondplaceshowroomsortie, vehiclede)
    SecondPlaceTake = true
end

function spawn3()
    local modeletrois = KeyboardInput("Entrez le modèle", "", 100)
    RageUI.Popup({ message = "<C>Chargement du véhicule...", time_display = 1 })
    Wait(500)
    local cartr = GetHashKey(modeletrois)
    RequestModel(cartr)
    while not HasModelLoaded(cartr) do
        RequestModel(cartr)
        Citizen.Wait(0)
    end

    local vehicletr = CreateVehicle(cartr, Concess.pos.showroom.show3.x, Concess.pos.showroom.show3.y, Concess.pos.showroom.show3.z, Concess.pos.showroom.show3.h, true)
    FreezeEntityPosition(vehicletr, true)
    SetVehicleDoorsLocked(vehicletr, 4)
    SetEntityAsMissionEntity(vehicletr, true, true) 
    table.insert(threeplaceshowroomsortie, vehicletr)
    ThreePlaceTake = true
end

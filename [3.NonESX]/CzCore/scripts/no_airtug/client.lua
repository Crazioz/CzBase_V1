--Modification autorisé, mais appropriation intellectuel interdite. Merci de me contacter en cas de problème. 
--Ce script optimise et désactive certains scénarion et véhicule. 

Citizen.CreateThread(function()
    -- Ici ce sont les scènarios que on désactive. NE SURTOUT PAS AJOUTER DES SCENARION QUI N'EXISTE PAS SINON CRASH
    local SCENARIO_TYPES = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL", -- Petit avion base militaire
        "WORLD_VEHICLE_MILITARY_PLANES_BIG", -- Gros avion base militiaire
    }
    local SCENARIO_GROUPS = {
        2017590552, -- LSIA avions
        2141866469, -- Sandy Shores avions
        1409640232, -- Grapeseed avions
        "ng_planes", -- Jet
    }
	-- Ici ce sont les véhicules qui ne spawn plus naturellement. 
    local SUPPRESSED_MODELS = {
        "SHAMAL", -- Ils apparaissent sur LSIA et essaient de décoller
        "LUXOR", -- Ils apparaissent sur LSIA et essaient de décoller
        "LUXOR2", -- Ils apparaissent sur LSIA et essaient de décoller
        "JET", -- Ils apparaissent sur LSIA et essaient de décoller et d'atterrir.
        "LAZER", -- Ils apparaissent sur Zancudo et essaient de décoller
        "TITAN", -- Ils apparaissent sur Zancudo et essaient de décoller
        "BARRACKS", -- Conduit régulièrement autour de la surface de l'aéroport de Zancudo
        "BARRACKS2", -- Conduit régulièrement autour de la surface de l'aéroport de Zancudo
        "CRUSADER", -- Conduit régulièrement autour de la surface de l'aéroport de Zancudo
        "RHINO", -- Conduit régulièrement autour de la surface de l'aéroport de Zancudo
        "AIRTUG", -- Apparaît régulièrement sur la surface de l'aéroport LSIA
        "RIPLEY", -- Apparaît régulièrement sur la surface de l'aéroport LSIA
	"BLIMP", -- Les foutus dirigeable
	"BLIMP2", -- dirigeable
	"BLIMP3", -- Dirigeable
	"Buzzard", -- Hélico lambda je sais plus le nom de l'hélico noir qui crash no stop
	"Buzzard2", --
    "polmav", --
		
    }

-- Ne pas modifier la boucle risque de perte de performance
    while true do
        for _, sctyp in next, SCENARIO_TYPES do
            SetScenarioTypeEnabled(sctyp, false)
        end
        for _, scgrp in next, SCENARIO_GROUPS do
            SetScenarioGroupEnabled(scgrp, false)
        end
        for _, model in next, SUPPRESSED_MODELS do
            SetVehicleModelIsSuppressed(GetHashKey(model), true)
        end
        Wait(10000)
    end
end)

Citizen.CreateThread(function()
    while true do
    local plyPed = PlayerPedId()
    if IsPedSittingInAnyVehicle(plyPed) then
    local plyVehicle = GetVehiclePedIsIn(plyPed, false)
    CarSpeed = GetEntitySpeed(plyVehicle) * 3.6 -- On définit la vitesse du véhicule en km/h
    if CarSpeed <= 300.0 then -- On ne peux pas changer de place si la vitesse du véhicule est au dessus ou égale à 300 km/h
    if IsControlJustReleased(0, 157) then -- conducteur : 1
    SetPedIntoVehicle(plyPed, plyVehicle, -1)
    Citizen.Wait(10)
    end
    if IsControlJustReleased(0, 158) then -- avant droit : 2
    SetPedIntoVehicle(plyPed, plyVehicle, 0)
    Citizen.Wait(10)
    end
    if IsControlJustReleased(0, 160) then -- arriere gauche : 3
    SetPedIntoVehicle(plyPed, plyVehicle, 1)
    Citizen.Wait(10)
    end
    if IsControlJustReleased(0, 164) then -- arriere droite : 4
    SetPedIntoVehicle(plyPed, plyVehicle, 2)
    Citizen.Wait(10)
    end
    end
    end
    Citizen.Wait(10) -- anti crash
    end
   end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if NetworkIsSessionStarted() then
            SetStaticEmitterEnabled('LOS_SANTOS_VANILLA_UNICORN_01_STAGE', false)
            SetStaticEmitterEnabled('LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM', false)
            SetStaticEmitterEnabled('LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM', false)
            return
        end
    end
end)

AddEventHandler("playerSpawned", function()
    NetworkSetFriendlyFireOption(true)
    SetCanAttackFriendly(PlayerPedId(), true, true)
end)
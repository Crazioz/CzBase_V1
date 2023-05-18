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

DensityMultiplier = 0.8
Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
	    SetVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetPedDensityMultiplierThisFrame(DensityMultiplier)
	    SetRandomVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetParkedVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetScenarioPedDensityMultiplierThisFrame(DensityMultiplier, DensityMultiplier)
	end
end)

Citizen.CreateThread(function()
    generateBlips()
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

    [2] = {
        name = "Poste de police",
        sprite = 60,
        color = 29,
        scale = 1.0,
        coords = vector3(425.35772705078,-977.53735351563,30.710916519165),
    },

    --[3] = {
    --    name = "Frontière Los santos",                                 --display name
    --    sprite = 461,                                   --https://docs.fivem.net/docs/game-references/blips/
    --    color = 44,                                      --https://docs.fivem.net/docs/game-references/blips/
    --    scale = 0.6,                                    --scale
    --    coords = vector3(1446.7485351563,-2621.4538574219,48.442108154297)       --coordinates
    --},
--
    --[4] = {
    --    name = "Frontière Cayo Perico",
    --    sprite = 461,
    --    color = 44,
    --    scale = 0.6,
    --    coords = vector3(4588.7827148438,-4322.0502929688,9.9577894210815),
    --},
    
}
--Radius---------------------------------------------------------------------------------------------------------------------------------------

--PL.BlipsRadius = {
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
--}
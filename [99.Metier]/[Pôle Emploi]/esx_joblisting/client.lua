ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('joblisting', 'main', RageUI.CreateMenu("Centre des Métiers", "Bienvenue au ~g~Centre des Métiers"))
RMenu.Add('joblisting', 'public', RageUI.CreateSubMenu(RMenu:Get('joblisting', 'main'), "Métiers Publics", "Métiers sans Candidature "))
RMenu.Add('joblisting', 'leave', RageUI.CreateSubMenu(RMenu:Get('joblisting', 'main'), "Démission", "~r~Démissionner de son Emploi"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('joblisting', 'main'), true, true, true, function()

            RageUI.Button("Métiers Publics", "Métiers sans Candidature", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('joblisting', 'public'))

            RageUI.Button("Métiers Privé", "Métier avec Patron", {RightLabel = "→ ~r~Voir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour obtenir un métier privé rendez-vous sur le discord du serveur : ~g~https://discord.gg/srsup5tr8v", "CHAR_CHAT_CALL", 1)
                end
            end)
            
            RageUI.Button("~r~Démission", "Démissionner de son Emploi", {RightLabel = ""},true, function()
            end, RMenu:Get('joblisting', 'leave'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('joblisting', 'public'), true, true, true, function()
		
	    RageUI.Button("Pécheur", "Vous devez faire une suite de précesus pour vendre du poison !", {RightLabel = "→ ~g~Signez ICI"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:pecheur')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(100)
                    ESX.ShowNotification('~g~Félicitation~w~ ! Vous avez signez le ~r~contrat~w~ avec l\'agence !')
                end
            end)
            RageUI.Button("Smirgeom", "Vous devez ramasser les poubelle de Los Santos !", {RightLabel = "→ ~g~Signez ICI"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:eboueur')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(100)
                    ESX.ShowNotification('~g~Félicitation~w~ ! Vous avez signez le ~r~contrat~w~ avec l\'agence !')
                end
            end)
        end, function()
        end)

            RageUI.IsVisible(RMenu:Get('joblisting', 'leave'), true, true, true, function()
                RageUI.Button("~r~Quitter~w~ | ~y~Métier Principal", "", {RightLabel = "→ ~g~Choisir"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                TriggerServerEvent('polemploi:chomeur1')
                PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                Citizen.Wait(100)
                ESX.ShowNotification('~r~Malheuresement~w~ ! Vous avez rompu le ~r~contrat~w~ avec l\'agence !')
                end
            end)
            RageUI.Button("~r~Quitter~w~ | ~y~Organisation", "", {RightLabel = "→ ~g~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
            TriggerServerEvent('polemploi:chomeur2')
            PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
            Citizen.Wait(100)
            ESX.ShowNotification('~r~Malheuresement~w~ ! Vous avez rompu le ~r~contrat~w~ avec l\'agence !')
            end
        end)
      end, function()
            end, 1)
    
            Citizen.Wait(0)
        end
    end)


    local position = {
        {x =  -268.478, y = -957.99, z = 31.22, }
    }    
    

    local blips = {
        {title="~b~Centre des Métiers", colour=30, id=205, x = -268.478, y = -957.99, z = 31.22}
    }
    
    Citizen.CreateThread(function()
        for _, info in pairs(blips) do
            info.blip = AddBlipForCoord(info.x, info.y, info.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.70)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        end
    end)
    

    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour accéder au ~g~Pôle-Emploi",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('joblisting', 'main'), not RageUI.Visible(RMenu:Get('joblisting', 'main')))
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("ig_sol")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(5000)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "ig_sol", -268.864, -957.203, 30.223, 208.827, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
RMenu.Add('bucheron', 'main', RageUI.CreateMenu("bucheron", " "))
RMenu:Get('bucheron', 'main'):SetSubtitle("~b~Manager des bucherons")
RMenu:Get('bucheron', 'main').EnableMouse = false;
RMenu:Get('bucheron', 'main').Closed = function()
    RenderScriptCams(0, 1, 1500, 1, 1)
    DestroyCam(cam, 1)
    SetBlockingOfNonTemporaryEvents(Ped, 1)
end

--local vehicle = nil
RageUI.CreateWhile(1.0, function()
    local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), zone.bucheron, true)
    if distance <= 3.0 then
        HelpMsg("Appuyer sur ~b~E~w~ pour parler avec la personne.")
        if IsControlJustPressed(1, 51) and distance <= 3.0 then
            RageUI.Visible(RMenu:Get('bucheron', 'main'), not RageUI.Visible(RMenu:Get('bucheron', 'main')))
            CreateCamera()
        end
    end

    if RageUI.Visible(RMenu:Get('bucheron', 'main')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            if not AuTravaillebucheron then
                RageUI.Button("Demander à travailler pour les bucherons", "", {}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        RageUI.Popup({
                            message = "Alors comme ça tu veu bosser pour les ~g~bucherons~w~ hein ? Très bien, met un casque et prends t'es outils ! Je te préviens c'est pas pour les petite    merdes !",
                        })
                        RageUI.Visible(RMenu:Get('bucheron', 'main'), not RageUI.Visible(RMenu:Get('bucheron', 'main')))
                        RenderScriptCams(0, 1, 1500, 1, 1)
                        DestroyCam(cam, 1)
                        AuTravaillebucheron = true
                        --if not ESX.Game.IsSpawnPointClear(vector3(2843.071, 2784.613, 59.94376), 6.0) then
                        --    local veh = ESX.Game.GetClosestVehicle(vector3(2843.071, 2784.613, 59.94376))
                        --    TriggerEvent("LS_LSPD:RemoveVeh", veh)
                        --end
                        --ESX.Game.SpawnVehicle(GetHashKey("sadler"), vector3(2843.071, 2784.613, 59.94376), 59.144374847412, function(veh)
                        --    SetVehicleOnGroundProperly(veh)
                        --    vehicle = NetworkGetNetworkIdFromEntity(veh)
                        --end)
                        StartTravaillebucheron()
                    end
                end)
            else
                RageUI.Button("Arreter de travailler", "", {}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        RageUI.Popup({
                            message = "haha ! Tu stop déja ! Allez prends ta paye feignant ! Merci de ton aide, revient quand tu veux.",
                        })
                        RageUI.Visible(RMenu:Get('bucheron', 'main'), not RageUI.Visible(RMenu:Get('bucheron', 'main')))
                        RenderScriptCams(0, 1, 1500, 1, 1)
                        DestroyCam(cam, 1)
                        AuTravaillebucheron = false
                        endwork()
                        --TriggerEvent("LS_LSPD:RemoveVeh", NetworkGetEntityFromNetworkId(vehicle))
                    end
                end)
            end
        end, function()
            ---Panels
        end)
    end
end, 1)
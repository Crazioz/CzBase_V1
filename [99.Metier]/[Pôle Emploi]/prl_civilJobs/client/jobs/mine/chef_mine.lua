RMenu.Add('mine', 'main', RageUI.CreateMenu("mine", " "))
RMenu:Get('mine', 'main'):SetSubtitle("~b~Manager de la mine")
RMenu:Get('mine', 'main').EnableMouse = false;
RMenu:Get('mine', 'main').Closed = function()
    RenderScriptCams(0, 1, 1500, 1, 1)
    DestroyCam(cam, 1)
    SetBlockingOfNonTemporaryEvents(Ped, 1)
end

local vehicle = nil
RageUI.CreateWhile(1.0, function()
    local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), zone.mine, true)
    if distance <= 3.0 then
        HelpMsg("Appuyer sur ~b~E~w~ pour parler avec la personne.")
        if IsControlJustPressed(1, 51) and distance <= 3.0 then
            RageUI.Visible(RMenu:Get('mine', 'main'), not RageUI.Visible(RMenu:Get('mine', 'main')))
            CreateCamera()
        end
    end

    if RageUI.Visible(RMenu:Get('mine', 'main')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            if not AuTravaillemine then
                RageUI.Button("Demander à travailler sur le mine", "", {}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        RageUI.Popup({
                            message = "Alors comme ça tu veux bosser à la ~g~mine~w~ hein ? Très bien, met un casque et prends t'es outils ! Je te préviens c'est pas pour les petite    merdes !",
                        })
                        RageUI.Visible(RMenu:Get('mine', 'main'), not RageUI.Visible(RMenu:Get('mine', 'main')))
                        RenderScriptCams(0, 1, 1500, 1, 1)
                        DestroyCam(cam, 1)
                        AuTravaillemine = true
                        if not ESX.Game.IsSpawnPointClear(vector3(2843.071, 2784.613, 59.94376), 6.0) then
                            local veh = ESX.Game.GetClosestVehicle(vector3(2843.071, 2784.613, 59.94376))
                            TriggerEvent("LS_LSPD:RemoveVeh", veh)
                        end
                        ESX.Game.SpawnVehicle(GetHashKey("sadler"), vector3(2843.071, 2784.613, 59.94376), 59.144374847412, function(veh)
                            SetVehicleOnGroundProperly(veh)
                            vehicle = NetworkGetNetworkIdFromEntity(veh)
                        end)
                        StartTravaillemine()
                    end
                end)
            else
                RageUI.Button("Arreter de travailler", "", {}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        RageUI.Popup({
                            message = "haha ! Tu stop déja ! Allez prends ta paye feignant ! Merci de ton aide, revient quand tu veux.",
                        })
                        RageUI.Visible(RMenu:Get('mine', 'main'), not RageUI.Visible(RMenu:Get('mine', 'main')))
                        RenderScriptCams(0, 1, 1500, 1, 1)
                        DestroyCam(cam, 1)
                        AuTravaillemine = false
                        endwork()
                        TriggerEvent("LS_LSPD:RemoveVeh", NetworkGetEntityFromNetworkId(vehicle))
                    end
                end)
            end
        end, function()
            ---Panels
        end)
    end
end, 1)
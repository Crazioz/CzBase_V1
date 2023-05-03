RMenu.Add('LifeInvaders', 'main', RageUI.CreateMenu("FantaJobs", " "))
RMenu:Get('LifeInvaders', 'main'):SetSubtitle("~b~FantaJobs central d'intérim")
RMenu:Get('LifeInvaders', 'main').EnableMouse = false;
RMenu:Get('LifeInvaders', 'main').Closed = function()
    RenderScriptCams(0, 1, 1500, 1, 1)
    DestroyCam(cam, 1)
    SetBlockingOfNonTemporaryEvents(Ped, 1)
end

local metier = {
    chantier = {
        nom = "Travailler sur le chantier",
        desc = "Viens travailler au chantier, avoir des muscles dans les bras est obligatoire ! Pas pour les feignants ! ~g~aucun diplôme demandé.",
        coords = zone.Chantier,
    },
    jardinier = {
        nom = "Nettoyer le terrain de golf",
        desc = "Viens aider les jardiniers du golf à faire leur travaille ! Travaille assez posé dans un environnement agréable, véhicule fourni sans diplôme demandé.",
        coords = zone.Jardinier,
    },
    Mine = {
        nom = "Travailler à la mine",
        desc = "Viens travailler à la mine comme un vrai mec ! Permis des conduir pour se rendre sur place demandé !",
        coords = zone.mine,
    },
    Bucheron = {
        nom = "Travailler en temps que bucheron",
        desc = "Viens travailler dans la forêt ! Permis des conduir pour se rendre sur place demandé, ~g~Nouveau travaille très bien rémunéré et muscle obligatoire !",
        coords = zone.bucheron,
    },
}


RageUI.CreateWhile(1.0, function()
    local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), zone.Lifeinveders, true)
    if distance <= 3.0 then
        HelpMsg("~b~E~w~ pour parler avec la personne.")
        if IsControlJustPressed(1, 51) and distance <= 3.0 then
            RageUI.Visible(RMenu:Get('LifeInvaders', 'main'), not RageUI.Visible(RMenu:Get('LifeInvaders', 'main')))
            CreateCamera()
        end
    end

    if RageUI.Visible(RMenu:Get('LifeInvaders', 'main')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()


        
            for _,v in pairs(metier) do
                RageUI.Button(v.nom, v.desc, {}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        SetNewWaypoint(v.coords)
                        RageUI.Visible(RMenu:Get('LifeInvaders', 'main'), not RageUI.Visible(RMenu:Get('LifeInvaders', 'main')))
                        RenderScriptCams(0, 1, 1500, 1, 1)
                        DestroyCam(cam, 1)
                        RageUI.Popup({
                            message = "Vous avez choisis de ~b~"..v.nom.."~w~ ? Très bien, je vous ai donné les coordonées GPS sur votre téléphone. ~g~Merci d'utiliser les services FantaJobs !",
                            sound = {
                                audio_name = "BASE_JUMP_PASSED",
                                audio_ref = "HUD_AWARDS",
                            }
                        })
                    end
                end)
            end
        end, function()
            ---Panels
        end)
    end
end, 1)


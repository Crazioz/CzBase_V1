Citizen.CreateThread(function()
    while true do
        local waiting = 750
        local plyCoords2 = GetEntityCoords(GetPlayerPed(-1), false)
        local dist2 = Vdist(plyCoords2.x, plyCoords2.y, plyCoords2.z, Concess.pos.ascenceur.monter.x, Concess.pos.ascenceur.monter.y, Concess.pos.ascenceur.monter.z)
        
        if dist2 <= 10.0 then
            waiting = 0
            DrawMarker(Marker.Type, Concess.pos.ascenceur.monter.x, Concess.pos.ascenceur.monter.y, Concess.pos.ascenceur.monter.z-0.99, nil, nil, nil, -90, nil, nil, Marker.Size.x, Marker.Size.y, Marker.Size.z, Marker.Color.R, Marker.Color.G, Marker.Color.B, 200)
        end

        if dist2 <= 1.0 then
                waiting = 0
            RageUI.Text({ message = "Appuyez sur ~b~[E]~s~ pour monter à ~b~l'étage", time_display = 1 })
            if IsControlJustPressed(1,51) then
                DoScreenFadeOut(100)
                Citizen.Wait(750)
                ESX.Game.Teleport(PlayerPedId(), {x=Concess.pos.ascenceur.descendre.x,y=Concess.pos.ascenceur.descendre.y,z=Concess.pos.ascenceur.descendre.z})
                DoScreenFadeIn(100)
            end   
        end
        Citizen.Wait(waiting)
    end
end)

Citizen.CreateThread(function()
    while true do
        local waiting = 750
        local plyCoords2 = GetEntityCoords(GetPlayerPed(-1), false)
        local dist2 = Vdist(plyCoords2.x, plyCoords2.y, plyCoords2.z, Concess.pos.ascenceur.descendre.x, Concess.pos.ascenceur.descendre.y, Concess.pos.ascenceur.descendre.z)

        if dist2 <= 10.0 then
            waiting = 0
        DrawMarker(Marker.Type, Concess.pos.ascenceur.descendre.x, Concess.pos.ascenceur.descendre.y, Concess.pos.ascenceur.descendre.z-0.99, nil, nil, nil, -90, nil, nil, Marker.Size.x, Marker.Size.y, Marker.Size.z, Marker.Color.R, Marker.Color.G, Marker.Color.B, 200)

        end

        if dist2 <= 1.0 then
            waiting = 0
            RageUI.Text({ message = "Appuyez sur ~b~[E]~s~ pour ~b~descendre", time_display = 1 })
            if IsControlJustPressed(1,51) then
                DoScreenFadeOut(100)
                Citizen.Wait(750)
                ESX.Game.Teleport(PlayerPedId(), {x=Concess.pos.ascenceur.monter.x,y=Concess.pos.ascenceur.monter.y,z=Concess.pos.ascenceur.monter.z})
                DoScreenFadeIn(100)
            end   
        end
        Citizen.Wait(waiting)
    end
end)
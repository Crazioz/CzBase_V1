if Config.Rob then
    handsup = false

    RegisterCommand('rob', function()
        local player, distance = ESX.Game.GetClosestPlayer()

        if handsup then
            return
        end
        
        if player ~= -1 and distance <= 3.0 then
            local ped = GetPlayerPed(player)

            if DoesEntityExist(ped) then
                ESX.Streaming.RequestAnimDict("random@mugging5", function()
                    TaskPlayAnim(PlayerPedId(), "random@mugging5", "ig_1_guy_handoff", 8.0, 8.0, -1, 50, 0, false, false, false)
                    Wait(Config.RobTimeout)
                    ClearPedTasks(PlayerPedId())
                end) 

                if IsEntityDead(ped) then
                    OpenInventory({
                        id = GetPlayerServerId(player),
                        type = 'player',
                        title = GetPlayerName(player),
                        weight = Config.PlayerWeight,
                        timeout = Config.RobTimeout
                    })
                else 
                    if IsEntityPlayingAnim(ped, "missminuteman_1ig_2", "handsup_enter", 3) then
                        OpenInventory({
                            id = GetPlayerServerId(player),
                            type = 'player',
                            title = GetPlayerName(player),
                            weight = Config.PlayerWeight,
                            timeout = Config.RobTimeout
                        })
                    end 
                end

                while true do 
                    Wait(1)
                    player, distance = ESX.Game.GetClosestPlayer()
                    if distance > 3.0 then 
                        SendNUIMessage({
                            action = 'close',
                            invName = GetCurrentResourceName()
                        })    
                        break
                    end
                end
            end
        else 
           TriggerEvent('inventory:notify', 'error', 'Aucun joueur à proximité') 
        end
    end, false)

    -- handsup
    RegisterCommand('handsup', function()
        if not handsup then
            handsup = true
            ESX.Streaming.RequestAnimDict("missminuteman_1ig_2", function()
                TaskPlayAnim(PlayerPedId(), "missminuteman_1ig_2", "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
            end) 
        else 
            ClearPedTasks(PlayerPedId())
            handsup = false
        end
    end, true)
    RegisterKeyMapping('handsup', 'Mains vers le haut/vers le bas', 'keyboard', Config.HandsupKey)
end
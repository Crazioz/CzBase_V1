ESX = exports["es_extended"]:getSharedObject()

local PlayerData = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	Citizen.Wait(5000) 
    blipsvigneronvente()
end)

Citizen.CreateThread(function()
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()
        blipsvigneronvente()
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
    blipsvigneronvente()
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
    blipsvigneronvente()
end)

function blipsvigneronvente()
Citizen.CreateThread(function()
    if ESX.PlayerData.job and ESX.PlayerData.job.name == 'vigneron' then
    if vigneron.jeveuxblips then
    local vigneronventemap = AddBlipForCoord(vigneron.pos.vente.position.x, vigneron.pos.vente.position.y, vigneron.pos.vente.position.z)

    SetBlipSprite(vigneronventemap, 93)
    SetBlipColour(vigneronventemap, 7)
    SetBlipScale(vigneronventemap, 0.65)
    SetBlipAsShortRange(vigneronventemap, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString("Vente du vin")
    EndTextCommandSetBlipName(vigneronventemap)
    end
end
end)
end

function OpenVigneronVente()
    local VigneronVente = RageUI.CreateMenu("Vente du vin", "Vigneron")
    
    RageUI.Visible(VigneronVente, not RageUI.Visible(VigneronVente))
    
    while VigneronVente do
        Citizen.Wait(0)
        RageUI.IsVisible(VigneronVente, true, true, true, function()
                RageUI.ButtonWithStyle("Vendre le vin", nil, {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    RageUI.CloseAll()
                    ventevine()
                    end
                end)
        end)
    
        if not RageUI.Visible(VigneronVente) then
            VigneronVente = RMenu:DeleteType("VigneronVente", true)
            end
        end
    end

    local ventepossible = false
    Citizen.CreateThread(function()
            local playerPed = PlayerPedId()
            while true do
                local Timer = 500
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local playerCoords = GetEntityCoords(PlayerPedId())
                zoneDistance = GetDistanceBetweenCoords(playerCoords, vigneron.pos.vente.position.x, vigneron.pos.vente.position.y, vigneron.pos.vente.position.z)
                    if IsEntityAtCoord(PlayerPedId(), 0.0, -0.0, -0.0, 1.5, 1.5, 1.5, 0, 1, 0) then 
                        Timer = 0
                            if IsControlJustPressed(1, 51) then
                                OpenVigneronVente()
                            end
                end
                if zoneDistance ~= nil then
                    if zoneDistance > 1.5 then
                        ventepossible = false
                    end
                end
            Wait(Timer)
        end    
    end)

    function ventevine()
        if not ventepossible then
            ventepossible = true
        while ventepossible do
            Citizen.Wait(2000)
            TriggerServerEvent('ventevin')
        end
        else
            ventepossible = false
        end
    end


Citizen.CreateThread(function()
    while true do
        local Timer = 500
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'vigneron' then
        local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
        local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, vigneron.pos.vente.position.x, vigneron.pos.vente.position.y, vigneron.pos.vente.position.z)
        if dist3 <= 7.0 and vigneron.jeveuxmarker then
            Timer = 0
            DrawMarker(20, vigneron.pos.vente.position.x, vigneron.pos.vente.position.y, vigneron.pos.vente.position.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 250, 3, 200, 255, 0, 1, 2, 0, nil, nil, 0)
            end
            if dist3 <= 2.0 then
                Timer = 0   
                        RageUI.Text({ message = "Appuyez sur ~y~[E]~s~ pour vendre du vin", time_display = 1 })
                        if IsControlJustPressed(1,51) then
                            OpenVigneronVente()     
                    end   
                end
            end 
        Citizen.Wait(Timer)
    end
end)
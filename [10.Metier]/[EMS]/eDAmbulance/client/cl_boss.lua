ESX = exports["es_extended"]:getSharedObject()
societyambulance = nil

Citizen.CreateThread(function()

    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
while ESX == nil do Wait(0) end 
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

-- MENU FUNCTION --

local open = false 
local mainMenu = RageUI.CreateMenu('~r~Boss Action', '~r~interaction')
mainMenu.Display.Header = true 
mainMenu.Closed = function()
  open = false
end


function BossAmbulance()
	if open then 
		open = false
		RageUI.Visible(mainMenu, false)
		return
	else
		open = true 
		RageUI.Visible(mainMenu, true)
		CreateThread(function()
		while open do 
		   RageUI.IsVisible(mainMenu,function() 
            
			if societyambulance ~= nil then
                RageUI.Button('Argent de la société:', " ", {RightLabel = "~g~"..societyambulance.."$"}, true, {onSelected = function()end});   
            end
            RageUI.Separator("↓ Actions ↓") 
            RageUI.Button('Retirer de l\'argent.', " ", {RightLabel = ">"}, true, {onSelected = function()
                local money = KeyboardInput('Combien voulez vous retirer :', '', 10)
                TriggerServerEvent("ambulance:withdrawMoney","society_"..ESX.PlayerData.job.name ,money)
                RefreshMoney()
            end});   

            RageUI.Button('Déposer de l\'argent.', " ", {RightLabel = ">"}, true, {onSelected = function()
                local money = KeyboardInput('Combien voulez vous retirer :', '', 10)
                TriggerServerEvent("ambulance:depositMoney","society_"..ESX.PlayerData.job.name ,money)
                RefreshMoney()
            end});  

            RageUI.Button('Rafraichir le compte.', " ", {RightLabel = ">"}, true, {onSelected = function()
                RefreshMoney()
            end}); 


		   end)
		 Wait(0)
		end
	 end)
  end
end


function RefreshMoney()
    if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.grade_name == 'boss' then
        ESX.TriggerServerCallback('ambulance:getSocietyMoney', function(money)
            societyambulance = money
        end, "society_"..ESX.PlayerData.job.name)
    end
end

function Updatessocietyambulancemoney(money)
    societyambulance = ESX.Math.GroupDigits(money)
    
end


function KeyboardInput(TextEntry, ExampleText, MaxStringLength)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end

Citizen.CreateThread(function()
    while true do
        local wait = 750
        if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.grade_name == 'boss' then
            for k in pairs(Config.Position.Boss) do
                local plyCoords = GetEntityCoords(PlayerPedId(), false)
                local pos = Config.Position.Boss
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

                if dist <= Config.MarkerDistance then
                    wait = 0
                    DrawMarker(Config.MarkerType, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
                end

                if dist <= 1.0 then
                    wait = 0
                    Visual.Subtitle(Config.TextBoss, 1)
                    if IsControlJustPressed(1,51) then
                        BossAmbulance()
                    end
                end
            end
        end
    Citizen.Wait(wait)
    end
end)
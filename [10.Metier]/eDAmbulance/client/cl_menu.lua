ESX = exports["es_extended"]:getSharedObject()


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

function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)
    AddTextEntry('FMMC_KEY_TIP1', TextEntry) 
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
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

-- OpenMenu

local AppelTotal = 0
local NomAppel = "~r~Personne"

RegisterNetEvent("EMS:AjoutUnAppel")
AddEventHandler("EMS:AjoutUnAppel", function(Appel)
	AppelTotal = Appel
end)

RegisterNetEvent("EMS:DernierAppel")
AddEventHandler("EMS:DernierAppel", function(Appel)
	NomAppel = Appel
end)

-- MENU FUNCTION --

local open = false 
local mainMenu8 = RageUI.CreateMenu('~b~Ambulance', '~b~Interaction')
local subMenu8 = RageUI.CreateSubMenu(mainMenu8, "~b~Annonces", "~b~Interaction")
local subMenu9 = RageUI.CreateSubMenu(mainMenu8, "~b~Interaction Citoyen", "~b~Interaction")
local subMenu10 = RageUI.CreateSubMenu(mainMenu8, "~b~Information Appel", "~b~Interaction")
mainMenu8.Display.Header = true 
mainMenu8.Closed = function()
  open = false
end

function OpenMenuAmbulance()
	if open then 
		open = false
		RageUI.Visible(mainMenu8, false)
		return
	else
		open = true 
		RageUI.Visible(mainMenu8, true)
		CreateThread(function()
		while open do 
		   RageUI.IsVisible(mainMenu8,function()
			RageUI.Checkbox("Prendre son service", nil, serviceAmbulance, {}, {
                onChecked = function(index, items)
                    serviceAmbulance = true
					ESX.ShowNotification("~g~Vous avez pris votre service !")
                    TriggerServerEvent('ambulance:prisedeservice')
                end,
                onUnChecked = function(index, items)
                    serviceAmbulance = false
					ESX.ShowNotification("~r~Vous avez quitter votre service !")
                    TriggerServerEvent('ambulance:quitteleservice')
                end
            })

			if serviceAmbulance then

            RageUI.Separator("~b~↓ Interaction Citoyen ↓")

            RageUI.Button("Interaction Citoyen", nil, {RightLabel = "→→"}, true , {
              onSelected = function()
                end
            }, subMenu9)    

            RageUI.Button("Information d'appel", nil, {RightLabel = "→→"}, true , {
                onSelected = function()
                end
              }, subMenu10)   

            RageUI.Button("Faire une Facture", nil, {RightLabel = "→→"}, true , {
                onSelected = function()
                    amount = KeyboardInput("Montant de la facture",nil,3)
                    amount = tonumber(amount)
                    local player, distance = ESX.Game.GetClosestPlayer()
    
                    if player ~= -1 and distance <= 3.0 then
            
                    if amount == nil then
                        ESX.ShowNotification("~r~Problèmes~s~: Montant invalide")
                    else
                        local playerPed        = PlayerPedId()
                        Citizen.Wait(5000)
                        TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(player), 'society_ambulance', ('Ambulance'), amount)
                        Citizen.Wait(100)
                        ESX.ShowNotification("~g~Vous avez bien envoyer la facture")
                    end
            
                    else
                    ESX.ShowNotification("~r~Problèmes~s~: Aucun joueur à proximitée")
                    end
                end
            });
 
 
            RageUI.Separator("~b~↓ Annonces ↓")
            RageUI.Button("Annonces Ambulance", nil, {RightLabel = "→→"}, true , {
                  onSelected = function()
                    end
           }, subMenu8)      
           

        end
    end)

    RageUI.IsVisible(subMenu8,function() 

        RageUI.Button("Annonce [~g~Ouvertures]", nil, {RightLabel = "→"}, not codesCooldown1, {
           onSelected = function()
               codesCooldown1 = true 
               TriggerServerEvent('Ouvre:ambulance')
               Citizen.SetTimeout(8000, function() codesCooldown1 = false end)
           end
       })

       RageUI.Button("Annonce [~r~Fermetures]", nil, {RightLabel = "→"}, not codesCooldown2, {
           onSelected = function()
               codesCooldown2 = true 
               TriggerServerEvent('Ferme:ambulance')
               Citizen.SetTimeout(8000, function() codesCooldown2 = false end)
           end
       })

       RageUI.Button("Annonce [~y~Recrutement]", nil, {RightLabel = "→"}, not codesCooldown3, {
           onSelected = function()
               codesCooldown3 = true 
               TriggerServerEvent('Recru:ambulance')
               Citizen.SetTimeout(8000, function() codesCooldown3 = false end)
           end
       })

       RageUI.Button("Message [~o~Personnalisé]", nil, {RightLabel = "→"}, not codesCooldown4 , {
           onSelected = function()
               codesCooldown4 = true 
               local te = KeyboardInput("Message", "", 100)
               ExecuteCommand("amb " ..te)
               Citizen.SetTimeout(8000, function() codesCooldown4 = false end)
           end
       })

   end)

   RageUI.IsVisible(subMenu9,function() 

    RageUI.Button("Réanimer la Personne", nil, {RightLabel = "→"}, true , {
        onSelected = function()
            revivePlayer(closestPlayer)    
        end
        })

        RageUI.Button("Soigner une petite blessure", nil, {RightLabel = "→"}, true , {
            onSelected = function()
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                if closestPlayer == -1 or closestDistance > 1.0 then
                    ESX.ShowNotification('Aucune Personne à Proximité')
                else
                    ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
                        if quantity > 0 then
                            local closestPlayerPed = GetPlayerPed(closestPlayer)
                            local health = GetEntityHealth(closestPlayerPed)
        
                            if health > 0 then
                                local playerPed = PlayerPedId()
        
                                IsBusy = true
                                TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
                                Citizen.Wait(10000)
                                ClearPedTasks(playerPed)
        
                                TriggerServerEvent('esx_ambulancejob:removeItem', 'bandage')
                                TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'small')
                                ESX.ShowNotification('vous avez soigné ~y~%s~s~', GetPlayerName(closestPlayer))
                                IsBusy = false
                            else
                                ESX.ShowNotification('Cette personne est inconsciente!')
                            end
                        else
                            ESX.ShowNotification('Vous n\'avez pas de ~b~bandage~s~.')
                        end
                    end, 'bandage')
                end
            end
            })

        
    RageUI.Button("Soigner une plus grande blessure", nil, {RightLabel = "→"}, true , {
        onSelected = function()
            local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
            if closestPlayer == -1 or closestDistance > 1.0 then
                ESX.ShowNotification('Aucune Personne à Proximité')
            else
                ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
                    if quantity > 0 then
                        local closestPlayerPed = GetPlayerPed(closestPlayer)
                        local health = GetEntityHealth(closestPlayerPed)

                        if health > 0 then
                            local playerPed = PlayerPedId()

                            IsBusy = true
                            TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
                            Citizen.Wait(10000)
                            ClearPedTasks(playerPed)

                            TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
                            TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'big')
                            ESX.ShowNotification('Vous avez soigné ~y~%s~s~', GetPlayerName(closestPlayer))
                            IsBusy = false
                        else
                            ESX.ShowNotification('Cette personne est inconsciente!')
                        end
                    else
                        ESX.ShowNotification('Vous n\'avez pas de ~b~kit de soin~s~.')
                    end
                end, 'medikit')
            end
        end
        })

        local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
        RageUI.Button("Mettre dans un véhicule", nil, {RightLabel = "→"}, true, {
             onSelected = function() 
          if closestDistance <= 5.0 then 
          TriggerServerEvent('ambulance:putInVehicle', GetPlayerServerId(closestPlayer))
      else
          ESX.ShowNotification('Aucun joueurs à proximité')
      end
  end
  })

  local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
  RageUI.Button("Sortir du véhicule", nil, {RightLabel = "→"}, true, {
     onSelected = function() 
     if closestDistance <= 5.0 then 
     TriggerServerEvent('ambulance:OutVehicle', GetPlayerServerId(closestPlayer))
 else
     ESX.ShowNotification('Aucun joueurs à proximité')
 end
end
})

end)

RageUI.IsVisible(subMenu10, function() 

RageUI.Separator("~b~Dernière prise d'appel : ~s~\n~o~"..NomAppel.." ~w~à pris le dernier appel EMS")
RageUI.Separator("")
RageUI.Separator("~b~Total d'appel prise en compte : ~s~\n"..AppelTotal.."")
RageUI.Separator("")


end)
Wait(0)
end
end)
end
end

--- Key

Keys.Register('F6', 'ambulance', 'Ouvrir le menu ambulance', function()
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' then
        OpenMenuAmbulance()
	end
end)

-- Function revive

function revivePlayer(closestPlayer)
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer == -1 or closestDistance > 3.0 then
      ESX.ShowNotification(_U('no_players'))
    else
    ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(qtty)
    if qtty > 0 then
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    local health = GetEntityHealth(closestPlayerPed)
    if health == 0 then
    local playerPed = PlayerPedId()
    Citizen.CreateThread(function()
    ESX.ShowNotification(_U('revive_inprogress'))
    TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
    Wait(10000)
    ClearPedTasks(playerPed)
    if GetEntityHealth(closestPlayerPed) == 0 then
    TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
    TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(closestPlayer))
    else
    ESX.ShowNotification(_U('isdead'))
    end
   end)
    else
        ESX.ShowNotification(_U('unconscious'))
    end
     else
    ESX.ShowNotification(_U('not_enough_medikit'))
    end
   end, 'medikit')
end
end

--- Blips

local pos = vector3(-1863.4239501953,-351.47808837891,49.222465515137)
Citizen.CreateThread(function()
	local blip = AddBlipForCoord(pos)

	SetBlipSprite (blip, 61)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.8)
	SetBlipColour (blip, 1)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName('~r~Hôpital ~s~| EMS')
	EndTextCommandSetBlipName(blip)
end)



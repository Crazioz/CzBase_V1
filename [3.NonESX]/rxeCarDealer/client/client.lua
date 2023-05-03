ESX = exports["es_extended"]:getSharedObject()

local playerCars = {}

enos_conc = {
	catevehi = {},
	listecatevehi = {},
}

local customer = {}

local derniervoituresorti = {}
local sortirvoitureacheter = {}
local CurrentAction, CurrentActionMsg, LastZone, currentDisplayVehicle, CurrentVehicleData
local CurrentActionData, Vehicles, Categories = {}, {}, {}

Citizen.CreateThread(function()

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

Citizen.CreateThread(function()
if Concess.jeveuxblips then
        local concessmap = AddBlipForCoord(Concess.pos.blips.position.x, Concess.pos.blips.position.y, Concess.pos.blips.position.z)
        SetBlipSprite(concessmap, 326)
        SetBlipColour(concessmap, 18)
        SetBlipScale(concessmap, 0.8)
        SetBlipAsShortRange(concessmap, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString("Concessionnaire | Voiture")
        EndTextCommandSetBlipName(concessmap)
end
end)

function MenuF6Concess()
    local f6concess = RageUI.CreateMenu("Concessionnaire", "Interactions")
    f6concess:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
    RageUI.Visible(f6concess, not RageUI.Visible(f6concess))
    while f6concess do
        Citizen.Wait(0)
            RageUI.IsVisible(f6concess, true, true, true, function()

                RageUI.Separator("↓ Facture ↓")

                RageUI.ButtonWithStyle("Facture",nil, {RightLabel = "→"}, true, function(_,_,s)
                    local player, distance = ESX.Game.GetClosestPlayer()
                    if s then
                        local raison = ""
                        local montant = 0
                        AddTextEntry("FMMC_MPM_NA", "Objet de la facture")
                        DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "Donnez le motif de la facture :", "", "", "", "", 30)
                        while (UpdateOnscreenKeyboard() == 0) do
                            DisableAllControlActions(0)
                            Wait(0)
                        end
                        if (GetOnscreenKeyboardResult()) then
                            local result = GetOnscreenKeyboardResult()
                            if result then
                                raison = result
                                result = nil
                                AddTextEntry("FMMC_MPM_NA", "Montant de la facture")
                                DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "Indiquez le montant de la facture :", "", "", "", "", 30)
                                while (UpdateOnscreenKeyboard() == 0) do
                                    DisableAllControlActions(0)
                                    Wait(0)
                                end
                                if (GetOnscreenKeyboardResult()) then
                                    result = GetOnscreenKeyboardResult()
                                    if result then
                                        montant = result
                                        result = nil
                                        if player ~= -1 and distance <= 3.0 then
                                            TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(player), 'society_cardealer', ('Concessionnaire'), montant)
                                            TriggerEvent('esx:showAdvancedNotification', 'Fl~g~ee~s~ca ~g~Bank', 'Facture envoyée : ', 'Vous avez envoyé une facture d\'un montant de : ~g~'..montant.. '$ ~s~pour cette raison : ~b~' ..raison.. '', 'CHAR_BANK_FLEECA', 9)
                                        else
                                            ESX.ShowNotification("~r~Probleme~s~: Aucuns joueurs proche")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)


                RageUI.Separator("↓ Annonce ↓")



                RageUI.ButtonWithStyle("Annonces d'ouverture",nil, {RightLabel = "→"}, not cooldown, function(Hovered, Active, Selected)
                    if Selected then       
                        TriggerServerEvent('eConcess:Ouvert')
                        cooldowncool(1200)
                    end
                end)
        
                RageUI.ButtonWithStyle("Annonces de fermeture",nil, {RightLabel = "→"},  not cooldown, function(Hovered, Active, Selected)
                    if Selected then      
                        TriggerServerEvent('eConcess:Fermer')
                        cooldowncool(1200)
                    end
                end)

                RageUI.ButtonWithStyle("Personnalisé", nil, {RightLabel = nil},  not cooldown, function(Hovered, Active, Selected)
                    if (Selected) then
                        local msg = KeyboardInput("Message", "", 100)
                        TriggerServerEvent('eConcess:Perso', msg)
                        cooldowncool(1200)
                    end
                end)

                end, function() 
                end)
    
                if not RageUI.Visible(f6concess) then
                    f6concess = RMenu:DeleteType("Concessionnaire", true)
        end
    end
end


Keys.Register('F6', 'Concess', 'Ouvrir le menu Concessionnaire', function()
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'cardealer' then
    	MenuF6Concess()
	end
end)

function CoffreConcess()
	local Coffreconcess = RageUI.CreateMenu("Concessionnaire", "Coffre")
    Coffreconcess:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)

        RageUI.Visible(Coffreconcess, not RageUI.Visible(Coffreconcess))
            while Coffreconcess do
            Citizen.Wait(0)
            RageUI.IsVisible(Coffreconcess, true, true, true, function()

                RageUI.Separator("↓ Objet ↓")

                    RageUI.ButtonWithStyle("Retirer",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ConcessRetirerobjet()
                            RageUI.CloseAll()
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Déposer",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ConcessDeposerobjet()
                            RageUI.CloseAll()
                        end
                    end)
                end, function()
                end)
            if not RageUI.Visible(Coffreconcess) then
            Coffreconcess = RMenu:DeleteType("Coffreconcess", true)
        end
    end
end

Citizen.CreateThread(function()
        while true do
            local Timer = 500
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'cardealer' then  
            local plycrdjob = GetEntityCoords(GetPlayerPed(-1), false)
            local jobdist = Vdist(plycrdjob.x, plycrdjob.y, plycrdjob.z, Concess.pos.coffre.position.x, Concess.pos.coffre.position.y, Concess.pos.coffre.position.z)
            if jobdist <= Marker.DrawDistance and Concess.jeveuxmarker then
                Timer = 0
                DrawMarker(Marker.Type, Concess.pos.coffre.position.x, Concess.pos.coffre.position.y, Concess.pos.coffre.position.z-0.99, nil, nil, nil, -90, nil, nil, Marker.Size.x, Marker.Size.y, Marker.Size.z, Marker.Color.R, Marker.Color.G, Marker.Color.B, 200)
            end
                if jobdist <= 1.0 then
                    Timer = 0
                    RageUI.Text({ message = "Appuyez sur ~b~[E]~s~ pour ouvrir →→ ~b~Coffre", time_display = 1 })
                        if IsControlJustPressed(1,51) then
                            CoffreConcess()
                    end   
                end
            end 
        Citizen.Wait(Timer)   
    end
end)

itemstock = {}
function ConcessRetirerobjet()
	local StockConcess = RageUI.CreateMenu("Concessionnaire", "Coffre")
    StockConcess:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
	ESX.TriggerServerCallback('enos_concess:getStockItems', function(items) 
	itemstock = items
	RageUI.Visible(StockConcess, not RageUI.Visible(StockConcess))
        while StockConcess do
		    Citizen.Wait(0)
		        RageUI.IsVisible(StockConcess, true, true, true, function()
                        for k,v in pairs(itemstock) do 
                            if v.count ~= 0 then
                            RageUI.ButtonWithStyle(v.label, nil, {RightLabel = v.count}, true, function(Hovered, Active, Selected)
                                if Selected then
                                    local count = KeyboardInput("Combien ?", '' , 8)
                                    TriggerServerEvent('enos_concess:getStockItem', v.name, tonumber(count))
                                    ConcessRetirerobjet()
                                end
                            end)
                        end
                    end
                end, function()
                end)
            if not RageUI.Visible(StockConcess) then
            StockConcess = RMenu:DeleteType("StockConcess", true)
        end
    end
end)
end

local PlayersItem = {}
function ConcessDeposerobjet()
    local DepositConcess = RageUI.CreateMenu("Concessionnaire", "Coffre")
    DepositConcess:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
    ESX.TriggerServerCallback('enos_concess:getPlayerInventory', function(inventory)
        RageUI.Visible(DepositConcess, not RageUI.Visible(DepositConcess))
    while DepositConcess do
        Citizen.Wait(0)
            RageUI.IsVisible(DepositConcess, true, true, true, function()
                for i=1, #inventory.items, 1 do
                    if inventory ~= nil then
                         local item = inventory.items[i]
                            if item.count > 0 then
                                        RageUI.ButtonWithStyle(item.label, nil, {RightLabel = item.count}, true, function(Hovered, Active, Selected)
                                            if Selected then
                                            local count = KeyboardInput("Combien ?", '' , 8)
                                            TriggerServerEvent('enos_concess:putStockItems', item.name, tonumber(count))
                                            BDeposerobjet()
                                        end
                                    end)
                                end
                            else
                                RageUI.Separator('Chargement en cours')
                            end
                        end
                    end, function()
                    end)
                if not RageUI.Visible(DepositConcess) then
                DepositConcess = RMenu:DeleteType("DepositConcess", true)
            end
        end
    end)
end

local function MarquerJoueur()
	local ped = GetPlayerPed(ESX.Game.GetClosestPlayer())
	local pos = GetEntityCoords(ped)
	local target, distance = ESX.Game.GetClosestPlayer()
	if distance <= 4.0 then
	DrawMarker(2, pos.x, pos.y, pos.z+1.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 0, 0, 255, 170, 0, 1, 2, 1, nil, nil, 0)
end
end

function MenuConcess()
    local MConcess = RageUI.CreateMenu("Vente", "Concessionnaire")
    local MConcessSub = RageUI.CreateSubMenu(MConcess, "Vente", "Concessionnaire")
    local MConcessSub1 = RageUI.CreateSubMenu(MConcessSub, "Vente", "Concessionnaire")
    local MConcessSub2 = RageUI.CreateSubMenu(MConcessSub1, "Vente", "Concessionnaire")
    local LookVente = RageUI.CreateSubMenu(MConcess, "Vente", "Concessionnaire")

    MConcess:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
    MConcessSub:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
    MConcessSub1:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
    MConcessSub2:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)
    LookVente:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)

    MConcessSub2.Closed = function()
        supprimervehiculeconcess()
    end
    RageUI.Visible(MConcess, not RageUI.Visible(MConcess))
    while MConcess do
        Wait(0)
            RageUI.IsVisible(MConcess, true, true, true, function()

                RageUI.Separator("~b~"..ESX.PlayerData.job.grade_label.." - "..GetPlayerName(PlayerId()))


                RageUI.Separator("↓ Actions véhicules ↓")

                RageUI.ButtonWithStyle("Liste des véhicules", nil,  {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                end, MConcessSub)

                RageUI.ButtonWithStyle("Liste des ventes", nil,  {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                end, LookVente)

			end, function()
			end)

        RageUI.IsVisible(MConcessSub, true, true, true, function()
        
            for i = 1, #enos_conc.catevehi, 1 do
                RageUI.ButtonWithStyle("Catégorie - "..enos_conc.catevehi[i].label, nil, {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                        nomcategorie = enos_conc.catevehi[i].label
                        categorievehi = enos_conc.catevehi[i].name
                        ESX.TriggerServerCallback('enos_concess:recupererlistevehicule', function(listevehi)
                                enos_conc.listecatevehi = listevehi
                        end, categorievehi)
                    end
                end, MConcessSub1)
                end
                end, function()
                end)

        RageUI.IsVisible(MConcessSub1, true, true, true, function()
    

            RageUI.Separator("↓ Catégorie : "..nomcategorie.." ↓")
    
                for i2 = 1, #enos_conc.listecatevehi, 1 do
                RageUI.ButtonWithStyle(enos_conc.listecatevehi[i2].name, "Pour acheter ce véhicule", {RightLabel = enos_conc.listecatevehi[i2].price.."$"},true, function(Hovered, Active, Selected)
                if (Selected) then
                        nomvoiture = enos_conc.listecatevehi[i2].name
                        prixvoiture = enos_conc.listecatevehi[i2].price
                        modelevoiture = enos_conc.listecatevehi[i2].model
                        supprimervehiculeconcess()
                        chargementvoiture(modelevoiture)
    
                        ESX.Game.SpawnVehicle(modelevoiture, {x = Concess.pos.spawnvoiture.position.x, y = Concess.pos.spawnvoiture.position.y, z = Concess.pos.spawnvoiture.position.z}, Concess.pos.spawnvoiture.position.h, function (vehicle)
                        table.insert(derniervoituresorti, vehicle)
                        FreezeEntityPosition(vehicle, true)
                        TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
                        SetModelAsNoLongerNeeded(modelevoiture)
                        end)
                    end
                end, MConcessSub2)
                
                end
                end, function()
                end)

                RageUI.IsVisible(MConcessSub2, true, true, true, function()

                    RageUI.Separator("~r~↓ Vente proche ↓")

                    RageUI.ButtonWithStyle("Vendre le véhicule", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                        if (Active) then
                            MarquerJoueur()
                        end
                        if (Selected) then    
                                ESX.TriggerServerCallback('enos_concess:verifsousconcess', function(suffisantsous)
                                if suffisantsous then
                
                                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                
                                if closestPlayer == -1 or closestDistance > 3.0 then
                                ESX.ShowNotification('Personne autour')
                                else
                                supprimervehiculeconcess()
                                chargementvoiture(modelevoiture)
                
                                ESX.Game.SpawnVehicle(modelevoiture, {x = Concess.pos.spawnvoiture.position.x, y = Concess.pos.spawnvoiture.position.y, z = Concess.pos.spawnvoiture.position.z}, Concess.pos.spawnvoiture.position.h, function (vehicle)
                                table.insert(sortirvoitureacheter, vehicle)
                                FreezeEntityPosition(vehicle, true)
                                TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
                                SetModelAsNoLongerNeeded(modelevoiture)
                                local plaque     = GeneratePlate()
                                local vehicleProps = ESX.Game.GetVehicleProperties(sortirvoitureacheter[#sortirvoitureacheter])
                                vehicleProps.plate = plaque
                                SetVehicleNumberPlateText(sortirvoitureacheter[#sortirvoitureacheter], plaque)
                                FreezeEntityPosition(sortirvoitureacheter[#sortirvoitureacheter], false)
                
                                TriggerServerEvent('enos_concess:vendrevoiturejoueur', GetPlayerServerId(closestPlayer), vehicleProps, prixvoiture, nomvoiture)
                                TriggerServerEvent('enos_concess:addToList', GetPlayerServerId(closestPlayer), nomvoiture, plaque)
                                ESX.ShowNotification('Le véhicule '..nomvoiture..' avec la plaque '..vehicleProps.plate..' a été vendu à '..GetPlayerName(closestPlayer))
                                TriggerServerEvent('esx_vehiclelock:registerkey', vehicleProps.plate, GetPlayerServerId(closestPlayer))
                                end)
                                end
                                else
                                    ESX.ShowNotification('La société n\'as pas assez d\'argent pour ce véhicule!')
                                end
                
                            end, prixvoiture)
                                end
                            end)

                            RageUI.Separator("~b~↓ Achat personnel ↓")

                            RageUI.ButtonWithStyle("Acheter le véhicule", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                if (Active) then
                                    MarquerJoueur()
                                end
                                if (Selected) then   
                                    ESX.TriggerServerCallback('enos_concess:verifsousconcess', function(suffisantsous)
                                    if suffisantsous then
                                    supprimervehiculeconcess()
                                    chargementvoiture(modelevoiture)
                                    ESX.Game.SpawnVehicle(modelevoiture, {x = Concess.pos.spawnvoiture.position.x, y = Concess.pos.spawnvoiture.position.y, z = Concess.pos.spawnvoiture.position.z}, Concess.pos.spawnvoiture.position.h, function (vehicle)                                            table.insert(sortirvoitureacheter, vehicle)
                                    FreezeEntityPosition(vehicle, true)
                                    TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
                                    SetModelAsNoLongerNeeded(modelevoiture)
                                    local plaque     = GeneratePlate()
                                    local vehicleProps = ESX.Game.GetVehicleProperties(sortirvoitureacheter[#sortirvoitureacheter])
                                    vehicleProps.plate = plaque
                                    SetVehicleNumberPlateText(sortirvoitureacheter[#sortirvoitureacheter], plaque)
                                    FreezeEntityPosition(sortirvoitureacheter[#sortirvoitureacheter], false)
                
                                    TriggerServerEvent('shop:vehicule', vehicleProps, prixvoiture, nomvoiture)
                                    TriggerServerEvent('enos_concess:addToList', GetPlayerServerId(PlayerId()), nomvoiture, plaque)
                                    ESX.ShowNotification('Le véhicule '..nomvoiture..' avec la plaque '..vehicleProps.plate..' a été vendu à '..GetPlayerName(PlayerId()))
                                    TriggerServerEvent('esx_vehiclelock:registerkey', vehicleProps.plate, GetPlayerServerId(closestPlayer))
                                    end)
                
                                    else
                                        ESX.ShowNotification('La société n\'as pas assez d\'argent pour ce véhicule!')
                                    end
                    
                                end, prixvoiture)
                                    end
                                end)

                        end, function()
                        end)

                    RageUI.IsVisible(LookVente, true, true, true, function()

                    RageUI.Separator("↓ Les ventes ↓")
            
                    for i6 = 1, #customer, 1 do
                        RageUI.ButtonWithStyle("~b~Client : ~s~"..customer[i6].client, "~r~Vendu par : ~g~"..customer[i6].soldby.."\n~r~Le ~g~"..customer[i6].date, {RightLabel="~b~Véhicule : ~s~"..customer[i6].model},true, function(Hovered, Active, Selected)
                        end)
                    end

                end, function()
                end)

              if not RageUI.Visible(MConcess) and not RageUI.Visible(MConcessSub) and not RageUI.Visible(MConcessSub1) and not RageUI.Visible(MConcessSub2) and not RageUI.Visible(LookVente) then
              MConcess = RMenu:DeleteType("MConcess", true)
        end
    end
end


Citizen.CreateThread(function()
        while true do
            local Timer = 500
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'cardealer' or ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'cardealer' then  
            local plycrdjob = GetEntityCoords(GetPlayerPed(-1), false)
            local jobdist = Vdist(plycrdjob.x, plycrdjob.y, plycrdjob.z, Concess.pos.vente.position.x, Concess.pos.vente.position.y, Concess.pos.vente.position.z)
            if jobdist <= Marker.DrawDistance and Concess.jeveuxmarker then
                Timer = 0
                DrawMarker(Marker.Type, Concess.pos.vente.position.x, Concess.pos.vente.position.y, Concess.pos.vente.position.z-0.99, nil, nil, nil, -90, nil, nil, Marker.Size.x, Marker.Size.y, Marker.Size.z, Marker.Color.R, Marker.Color.G, Marker.Color.B, 200)
                end
                if jobdist <= 1.0 then
                    Timer = 0
                        RageUI.Text({ message = "Appuyez sur ~b~[E]~s~ pour ouvrir →→ ~b~Vente", time_display = 1 })
                        if IsControlJustPressed(1,51) then
                            ESX.TriggerServerCallback('enos_concess:recuperercategorievehicule', function(catevehi)
                                enos_conc.catevehi = catevehi
                            end)
                            ESX.TriggerServerCallback('enos_concess:getSoldVehicles', function(customers)
                                customer = customers
                            end)
                        MenuConcess()
                    end   
                end
            end 
        Citizen.Wait(Timer)   
    end
end)


function MenuSerrurier()
	local MSerrurier = RageUI.CreateMenu("Menu Serrurier", "Enregistrer des clés")
    MSerrurier:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)

    ESX.TriggerServerCallback('ddx_vehiclelock:getVehiclesnokey', function(Vehicles2)
        RageUI.Visible(MSerrurier, not RageUI.Visible(MSerrurier))
            while MSerrurier do
            Citizen.Wait(0)
            RageUI.IsVisible(MSerrurier, true, true, true, function()
                RageUI.Separator('~g~Bienvenue '..GetPlayerName(PlayerId()))
                    for i=1, #Vehicles2, 1 do
                        model = Vehicles2[i].model
                        modelname = GetDisplayNameFromVehicleModel(model)
                        Vehicles2[i].model = GetLabelText(modelname)
                    RageUI.ButtonWithStyle(Vehicles2[i].model .. ' [' .. Vehicles2[i].plate .. ']',nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                        if Selected then
                            TriggerServerEvent('ddx_vehiclelock:registerkey', Vehicles2[i].plate, 'no')
                            MenuSerrurier()
                        end
                    end)
                end
                end, function()
                end)
            if not RageUI.Visible(MSerrurier) then
            MSerrurier = RMenu:DeleteType("MSerrurier", true)
        end
    end
end)
end

Citizen.CreateThread(function()
        while true do
            local Timer = 500
            local plycrdjob = GetEntityCoords(GetPlayerPed(-1), false)
            local jobdist = Vdist(plycrdjob.x, plycrdjob.y, plycrdjob.z, Concess.pos.serrurier.position.x, Concess.pos.serrurier.position.y, Concess.pos.serrurier.position.z)
            if jobdist <= Marker.DrawDistance and Concess.jeveuxmarker then
                Timer = 0
                DrawMarker(Marker.Type, Concess.pos.serrurier.position.x, Concess.pos.serrurier.position.y, Concess.pos.serrurier.position.z-0.99, nil, nil, nil, -90, nil, nil, Marker.Size.x, Marker.Size.y, Marker.Size.z, Marker.Color.R, Marker.Color.G, Marker.Color.B, 200)
                end
                if jobdist <= 1.0 then
                    Timer = 0
                        RageUI.Text({ message = "Appuyez sur ~b~[E]~s~ pour ouvrir →→ ~b~Gestion clé(s)", time_display = 1 })
                        if IsControlJustPressed(1,51) then
                            MenuSerrurier()
                            ESX.TriggerServerCallback('ddx_vehiclelock:getVehiclesnokey', function(Vehicles2)
                            end)
                    end   
                end 
        Citizen.Wait(Timer)   
    end
end)

function supprimervehiculeconcess()
	while #derniervoituresorti > 0 do
		local vehicle = derniervoituresorti[1]

		ESX.Game.DeleteVehicle(vehicle)
		table.remove(derniervoituresorti, 1)
	end
end

function chargementvoiture(modelHash)
	modelHash = (type(modelHash) == 'number' and modelHash or GetHashKey(modelHash))

	if not HasModelLoaded(modelHash) then
		RequestModel(modelHash)

		BeginTextCommandBusyString('STRING')
		AddTextComponentSubstringPlayerName('Chargement du véhicule')
		EndTextCommandBusyString(4)

		while not HasModelLoaded(modelHash) do
			Citizen.Wait(1)
			DisableAllControlActions(0)
		end

		RemoveLoadingPrompt()
	end
end

function OpenCloseVehicle()
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed, true)

	local vehicle = nil

	if IsPedInAnyVehicle(playerPed,  false) then
		vehicle = GetVehiclePedIsIn(playerPed, false)
	else
		vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 7.0, 0, 71)
	end

	ESX.TriggerServerCallback('ddx_vehiclelock:mykey', function(gotkey)

		if gotkey then
			local locked = GetVehicleDoorLockStatus(vehicle)
			if locked == 1 or locked == 0 then -- if unlocked
				SetVehicleDoorsLocked(vehicle, 2)
				PlayVehicleDoorCloseSound(vehicle, 1)
				ESX.ShowNotification("Vous avez ~r~fermé~s~ le véhicule.")
			elseif locked == 2 then -- if locked
				SetVehicleDoorsLocked(vehicle, 1)
				PlayVehicleDoorOpenSound(vehicle, 0)
				ESX.ShowNotification("Vous avez ~g~ouvert~s~ le véhicule.")
			end
		else
			ESX.ShowNotification("~r~Vous n'avez pas les clés de ce véhicule.")
		end
	end, GetVehicleNumberPlateText(vehicle))
end

Citizen.CreateThread(function()
	while true do
		Wait(0)
		if IsControlJustReleased(0,303) then -- Touche K
			OpenCloseVehicle()
		end
	end
end)

Citizen.CreateThread(function()
    local dict = "anim@mp_player_intmenu@key_fob@"
    
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 303) then -- When you press "U"
             if not IsPedInAnyVehicle(GetPlayerPed(-1), true) then 
                TaskPlayAnim(GetPlayerPed(-1), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
				StopAnimTask = true
              else
                TriggerEvent("chatMessage", "", { 200, 200, 90 }, "Vous devez être sorti d'un véhicule pour l'utiliser les clés !") -- Shows this message when you are not in a vehicle in the chat
				
             end
        end
    end
end)

Citizen.CreateThread(function()
	RequestIpl('shr_int') -- Load walls and floor

	local interiorID = 7170
	LoadInterior(interiorID)
	EnableInteriorProp(interiorID, 'csr_beforeMission') -- Load large window
	RefreshInterior(interiorID)
end)

local PlayerData = {}
local societycardealermoney = nil

function BossConcess()
    local BConcess = RageUI.CreateMenu("Actions Patron", "Concessionnaire")
    BConcess:SetRectangleBanner(Concess.ColorMenuR, Concess.ColorMenuG, Concess.ColorMenuB, Concess.ColorMenuA)

    RageUI.Visible(BConcess, not RageUI.Visible(BConcess))

        while BConcess do
            Citizen.Wait(0)
                RageUI.IsVisible(BConcess, true, true, true, function()

                if societycardealermoney ~= nil then
                    RageUI.ButtonWithStyle("Argent société :", nil, {RightLabel = "$" .. societycardealermoney}, true, function()
                    end)
                end

                RageUI.ButtonWithStyle("Retirer argent de société",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local amount = KeyboardInput("Montant", "", 10)
                        amount = tonumber(amount)
                        if amount == nil then
                            RageUI.Popup({message = "Montant invalide"})
                        else
                            TriggerServerEvent('esx_society:withdrawMoney', amount, 'cardealer')
                            RefreshcardealerMoney()
                        end
                    end
                end)

                RageUI.ButtonWithStyle("Déposer argent de société",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local amount = KeyboardInput("Montant", "", 10)
                        amount = tonumber(amount)
                        if amount == nil then
                            RageUI.Popup({message = "Montant invalide"})
                        else
                            TriggerServerEvent('esx_society:depositMoney', amount, 'cardealer')
                            RefreshcardealerMoney()
                        end
                    end
                end) 

                RageUI.ButtonWithStyle("Accéder aux actions de Management",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        MenuBossConcess()
                        RageUI.CloseAll()
                    end
                end)
            end, function()
            end)
            if not RageUI.Visible(BConcess) then
            BConcess = RMenu:DeleteType("BConcess", true)
        end
    end
end   
  
  ---------------------------------------------
  
Citizen.CreateThread(function()
    while true do
        local Timer = 500
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'cardealer' and ESX.PlayerData.job.grade_name == 'boss' then
        local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
        local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Concess.pos.boss.position.x, Concess.pos.boss.position.y, Concess.pos.boss.position.z)
        if dist3 <= Marker.DrawDistance and Concess.jeveuxmarker then
            Timer = 0
            DrawMarker(Marker.Type, Concess.pos.boss.position.x, Concess.pos.boss.position.y, Concess.pos.boss.position.z-0.99, nil, nil, nil, -90, nil, nil, Marker.Size.x, Marker.Size.y, Marker.Size.z, Marker.Color.R, Marker.Color.G, Marker.Color.B, 200)
            end
            if dist3 <= 3.0 then
                Timer = 0   
                RageUI.Text({ message = "Appuyez sur ~b~[E]~s~ pour ouvrir →→ ~b~Gestion société", time_display = 1 })
                        if IsControlJustPressed(1,51) then           
                            RefreshcardealerMoney()
                            BossConcess()
                    end   
                end
            end 
        Citizen.Wait(Timer)
    end
end)

function RefreshcardealerMoney()
    if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.grade_name == 'boss' then
        ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
            UpdateSocietycardealerMoney(money)
        end, ESX.PlayerData.job.name)
    end
end

function UpdateSocietycardealerMoney(money)
    societycardealermoney = ESX.Math.GroupDigits(money)
end

function MenuBossConcess()
    TriggerEvent('esx_society', 'cardealer', false, false)
end

function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)
    AddTextEntry('FMMC_KEY_TIP1', TextEntry)
    blockinput = true
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do 
        Wait(0)
    end 
        
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Wait(500)
        blockinput = false
        return result
    else
        Wait(500)
        blockinput = false
        return nil
    end
end

  
function cooldowncool(time)
	cooldown = true
	Citizen.SetTimeout(time,function()
		cooldown = false
	end)
end
local ESX = nil
local infoBlips = {}
local allBlipsInServer = {}

Citizen.CreateThread(function()
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	while ESX == nil do Citizen.Wait(100) end
end)

local function rBlipsBuilderKeyboard(TextEntry, ExampleText, MaxStringLenght)
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

Citizen.CreateThread(function()
    ESX.TriggerServerCallback('rBlipsBuilder:getAllBlips', function(result)
        for k,v in pairs(result) do
            local blip = AddBlipForCoord(json.decode(v.coords).x, json.decode(v.coords).y, json.decode(v.coords).z)
            SetBlipSprite(blip, tonumber(v.type))
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, Config.scaleBlips)
            SetBlipColour(blip, tonumber(v.color))
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(tostring(v.name))
            EndTextCommandSetBlipName(blip)
        end
    end)
end)


local function menuBlipsBuilder()
    local menuP = RageUI.CreateMenu("Créer un blips", Config.subTitle)
    local menuS = RageUI.CreateSubMenu(menuP, "Gestion des blips", Config.subTitle)
    RageUI.Visible(menuP, not RageUI.Visible(menuP))

    while menuP do
        Citizen.Wait(0)

        RageUI.IsVisible(menuP, true, true, true, function()

            RageUI.Separator("~b~Créer un blips")

            RageUI.ButtonWithStyle("Nom sur la map ?", nil, {RightLabel = infoBlips.name}, true, function(_, _, s)
                if s then
                    local nameR = rBlipsBuilderKeyboard("Nom sur la map ?", "", 20)
                    if nameR == nil then
                        ESX.ShowNotification("Vous avez laissé le nom vide.")
                    else
                        infoBlips.name = nameR
                        ESX.ShowNotification("Vous avez choisi le nom du blips.")
                    end
                end
            end)

            RageUI.ButtonWithStyle("Coordonnées ?", nil, {RightLabel = "→"}, true, function(_, _, s)
                if s then
                    infoBlips.coords = GetEntityCoords(GetPlayerPed(-1))
                    ESX.ShowNotification("Vous avez choisi les coordonnées de votre blips.")
                end
            end)

            RageUI.ButtonWithStyle("Type de blips ?", nil, {RightLabel = infoBlips.type}, true, function(_, _, s)
                if s then
                    local typeR = rBlipsBuilderKeyboard("Type de blips ?", "", 20)
                    if tonumber(typeR) then
                        infoBlips.type = typeR
                        ESX.ShowNotification("Vous avez choisi le type de blips.")
                    else
                        ESX.ShowNotification("Vous avez pas mis un nombre.")
                    end
                end
            end)

            RageUI.ButtonWithStyle("Couleur ?", nil, {RightLabel = infoBlips.color}, true, function(_, _, s)
                if s then
                    local colorR = rBlipsBuilderKeyboard("Couleur ?", "", 20)
                    if tonumber(colorR) then
                        infoBlips.color = colorR
                        ESX.ShowNotification("Vous avez choisi la couleur de blips.")
                    else
                        ESX.ShowNotification("Vous avez pas mis un nombre.")
                    end
                end
            end)
            
            
            RageUI.ButtonWithStyle("~g~Créer le blips", nil, {RightLabel = "→→→"}, true, function(_, _, s)
                if s then
                    if infoBlips.name == nil then
                        ESX.ShowNotification("Vous avez laissé le nom vide.")
                    elseif infoBlips.coords == nil then
                        ESX.ShowNotification("Vous avez laissé les coordonnées vide.")
                    elseif infoBlips.type == nil then
                        ESX.ShowNotification("Vous avez laissé le type de blips vide.")
                    elseif infoBlips.color == nil then
                        ESX.ShowNotification("Vous avez laissé la couleur de blips vide.")
                    else
                        TriggerServerEvent("rBlipsBuilder:createBlips", infoBlips)
                        infoBlips = {}
                    end
                end
            end)

            RageUI.ButtonWithStyle("~r~Annuler", nil, {RightLabel = "→→→"}, true, function(_, _, s)
                if s then
                    RageUI.CloseAll()
                end
            end)


            RageUI.Line()

            RageUI.ButtonWithStyle("~o~Gestion des blips", nil, {}, true, function(_, _, s)
                if s then
                    getAllBlips()
                end
            end, menuS)

        end)

        RageUI.IsVisible(menuS, true, true, true, function()

            RageUI.Separator("~b~Gestion des blips")

            for k,v in pairs(allBlipsInServer) do
                RageUI.ButtonWithStyle("Blips : "..tostring(v.name), "Type : "..v.type.."\nCouleur : "..v.color, {}, true, function(_, _, s)
                    if s then
                        TriggerServerEvent("rBlipsBuilder:deleteBlips", v.id)
                        RageUI.CloseAll()
                    end
                end)
            end

        end)

        if not RageUI.Visible(menuP) and not RageUI.Visible(menuS) then
            menuP = RMenu:DeleteType("menuP", true)
        end
    end
end


RegisterCommand("blipsbuilder", function()
    ESX.TriggerServerCallback('rBlipsBuilder:getPlayerGroup', function(result)
        if result == "admin" or result == "superadmin" then
            menuBlipsBuilder()
        else
            ESX.ShowNotification("Vous n'avez pas les droits pour utiliser cette commande.")
        end
    end)
end)

function getAllBlips()
    ESX.TriggerServerCallback('rBlipsBuilder:getAllBlips', function(result)
        allBlipsInServer = result
    end)
end
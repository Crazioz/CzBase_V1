ESX = exports["es_extended"]:getSharedObject()

local function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

local index = {
    items = 1
}

local index2 = {
    items = 1
}

local percent = 100
local a = 255
local nombre = {}

local max = 20
Numbers = {}

Citizen.CreateThread(function()
    for i = 1, max do
        table.insert(Numbers, i)
    end
end)

local MenuShopp = false
RMenu.Add('SpaceShop', 'main', RageUI.CreateMenu("Superette", "Vous êtes intéresser par un produit ?"))
RMenu:Get('SpaceShop', 'main').Closed = function()
	MenuShopp = false
end;

RMenu.Add('SpaceShop', 'faim', RageUI.CreateSubMenu(RMenu:Get('SpaceShop', 'main'), "Superette", "Voici nos produits."))
RMenu.Add('SpaceShop', 'soif', RageUI.CreateSubMenu(RMenu:Get('SpaceShop', 'main'), "Superette", "Voici nos produits."))
RMenu.Add('SpaceShop', 'mobile', RageUI.CreateSubMenu(RMenu:Get('SpaceShop', 'main'), "Superette", "Voici nos produits."))

function menuShop()
    if MenuShopp then
        MenuShopp = false
        RageUI.Visible(RMenu:Get('SpaceShop', 'main'), false)
        return
    else
        MenuShopp = true
        RageUI.Visible(RMenu:Get('SpaceShop', 'main'), true)
        Citizen.CreateThread(function()
            while MenuShopp do
                RageUI.IsVisible(RMenu:Get('SpaceShop', 'main'), true, true, true, function()
                    RageUI.ButtonWithStyle("Nourritures", nil, {RigtLabel = "→"},true, function()
                    end, RMenu:Get('SpaceShop', 'faim')) 
        
                    RageUI.ButtonWithStyle("Boissons", nil, {RigtLabel = "→"},true, function()
                    end, RMenu:Get('SpaceShop', 'soif')) 
        
                    RageUI.ButtonWithStyle("Autres", nil, {RigtLabel = "→"},true, function()
                    end, RMenu:Get('SpaceShop', 'mobile')) 
                end, function()
                end)
        
                RageUI.IsVisible(RMenu:Get('SpaceShop', 'faim'), true, true, true, function()
                    for k, v in pairs(ZikkarShop.Shop.Items.Manger) do
                        RageUI.List(v.Label, Numbers, nombre[v.Value] or 1,'~g~Apu~w~ : ça vous fera ' .. v.Price * (nombre[v.Value] or 1) .. '$', { }, true, function(hovered, active, selected, Index)
                            nombre[v.Value] = Index
                            if selected then
                                local item = v.Value
                                local count = Numbers[Index]
                                local price = v.Price * count
                                TriggerServerEvent('SpaceShop:giveItem', v, count)
                            end
                        end)
                    end
                end, function()
                end)
        
                RageUI.IsVisible(RMenu:Get('SpaceShop', 'soif'), true, true, true, function()
                    for k, v in pairs(ZikkarShop.Shop.Items.Boire) do
                        RageUI.List(v.Label, Numbers, nombre[v.Value] or 1,'~g~Apu~w~ : ça vous fera ' .. v.Price * (nombre[v.Value] or 1) .. '$', { }, true, function(hovered, active, selected, Index)
                            nombre[v.Value] = Index
                            if selected then
                                local item = v.Value
                                local count = Numbers[Index]
                                local price = v.Price * count
        
                                TriggerServerEvent('SpaceShop:giveItem', v, count)
                            end
                        end)
                    end
                end, function()
                end)
        
                RageUI.IsVisible(RMenu:Get('SpaceShop', 'mobile'), true, true, true, function()
                    for k, v in pairs(ZikkarShop.Shop.Items.mobile) do 
                        RageUI.List(v.Label, Numbers, nombre[v.Value] or 1,'~g~Apu~w~ : ça vous fera ' .. v.Price * (nombre[v.Value] or 1) .. '$', { }, true, function(hovered, active, selected, Index)
                            nombre[v.Value] = Index
                            if selected then
                                local item = v.Value
                                local count = Numbers[Index]
                                local price = v.Price * count
        
                                TriggerServerEvent('SpaceShop:giveItem', v, count)
                            end
                        end)
                    end
                end, function()
                end)
                Wait(0)
            end
        end)
    end
end

Citizen.CreateThread(function()
    while true do
        local nearShop = false
        for k, v in pairs(ZikkarShop.Shop.zPos) do
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.x, v.y, v.z, true)
            if distance <= 2.5 then
                nearShop = true
                DrawMarker(25, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 16, 192, 37, 100, false, true, 2, false, nil, nil, false)
                ESX.ShowHelpNotification('Appuyez sur ~INPUT_CONTEXT~ pour parler à ~g~Apu~w~')
                if IsControlJustPressed(1, 51) then
                    menuShop()
                end
            end
		end

        if nearShop then
            Wait(1)
        else
            Wait(500)
        end
    end
end)
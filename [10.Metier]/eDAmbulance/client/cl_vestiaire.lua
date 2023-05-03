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

-- Function --

function applySkinSpecific(infos)
	TriggerEvent('skinchanger:getSkin', function(skin)
		local uniformObject
		if skin.sex == 0 then
			uniformObject = infos.variations.male
		else
			uniformObject = infos.variations.female
		end
		if uniformObject then
			TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
		end

		infos.onEquip()
	end)
end

-- MENU FUNCTION --

local open = false 
local mainMenu6 = RageUI.CreateMenu('~b~Vestaire', '~b~Ouverture du cassier..')
mainMenu6.Display.Header = true 
mainMenu6.Closed = function()
  open = false
end

function VestiaireAmbulance()
     if open then 
         open = false
         RageUI.Visible(mainMenu6, false)
         return
     else
         open = true 
         RageUI.Visible(mainMenu6, true)
         CreateThread(function()
         while open do 
            RageUI.IsVisible(mainMenu6,function() 

              RageUI.Separator("↓ ~b~Tenues spéciales ~s~↓")
			
             
              for index,infos in pairs(AmbuCloak.clothes.specials) do
                RageUI.Button(infos.label, nil, {RightLabel = ">"}, ESX.PlayerData.job.grade >= infos.minimum_grade, {
                  onSelected = function()
                      applySkinSpecific(infos)
                    end
                  })	
              end

                RageUI.Separator("↓ ~y~Tenues de service ~s~↓")
                for index,infos in pairs(AmbuCloak.clothes.grades) do
                  RageUI.Button(infos.label, nil, {RightLabel = ">"}, ESX.PlayerData.job.grade >= infos.minimum_grade, {
                    onSelected = function()
                        applySkinSpecific(infos)
                      end
                    })
              end
            end)
          Wait(0)
         end
      end)
   end
end

Citizen.CreateThread(function()
  while true do
  local wait = 750
      if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' then
    for k in pairs(Config.Position.Vestaire) do
              local plyCoords = GetEntityCoords(PlayerPedId(), false)
              local pos = Config.Position.Vestaire
              local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

              if dist <= Config.MarkerDistance then
                  wait = 0
                  DrawMarker(Config.MarkerType, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
              end

              if dist <= 1.0 then
                  wait = 0
                  Visual.Subtitle(Config.TextVestaire, 1)
                  if IsControlJustPressed(1,51) then
                    VestiaireAmbulance()
                  end
              end
          end
  end
  Citizen.Wait(wait)
  end
end)

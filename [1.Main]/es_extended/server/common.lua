ESX = {}
ESX.Players = {}
ESX.Jobs = {}
ESX.Factions = {}
ESX.Items = {}
Core = {}
Core.UsableItemsCallbacks = {}
Core.RegisteredCommands = {}
Core.Pickups = {}
Core.PickupId = 0
Core.PlayerFunctionOverrides = {}
Core.DatabaseConnected = false
Core.playersByIdentifier = {}

Core.vehicleTypesByModel = {}

AddEventHandler("esx:getSharedObject", function()
	local Invoke = GetInvokingResource()
	print(("[^1ERROR^7] Resource ^5%s^7 Used the ^5getSharedObject^7 Event, this event ^1no longer exists!^7 Visit https://documentation.esx-framework.org/tutorials/tutorials-esx/sharedevent for how to fix!"):format(Invoke))
end)

exports('getSharedObject', function()
  return ESX
end)

if GetResourceState('ox_inventory') ~= 'missing' then
  Config.OxInventory = true
  Config.PlayerFunctionOverride = 'OxInventory'
  SetConvarReplicated('inventory:framework', 'esx')
  SetConvarReplicated('inventory:weight', Config.MaxWeight * 1000)
end

local function StartDBSync()
  CreateThread(function()
    while true do
      Wait(10 * 60 * 1000)
      Core.SavePlayers()
    end
  end)
end

MySQL.ready(function()
  Core.DatabaseConnected = true
  if not Config.OxInventory then
    local items = MySQL.query.await('SELECT * FROM items')
    for k, v in ipairs(items) do
      ESX.Items[v.name] = {label = v.label, weight = v.weight, rare = v.rare, canRemove = v.can_remove}
    end
  else
    TriggerEvent('__cfx_export_ox_inventory_Items', function(ref)
      if ref then
        ESX.Items = ref()
      end
    end)

    AddEventHandler('ox_inventory:itemList', function(items)
      ESX.Items = items
    end)

    while not next(ESX.Items) do
      Wait(0)
    end
  end

  ESX.RefreshJobs()

    --Faction
    local Factions = {}
    local factions = MySQL.query.await('SELECT * FROM factions')
  
    for _, v in ipairs(factions) do
        Factions[v.name] = v
        Factions[v.name].grades = {}
    end
  
    local factionGrades = MySQL.query.await('SELECT * FROM faction_grades')
  
    for _, v in ipairs(factionGrades) do
        if Factions[v.faction_name] then
            Factions[v.faction_name].grades[tostring(v.grade)] = v
        else
            print(('[^3WARNING^7] Ignoring faction grades for ^5"%s"^0 due to missing faction'):format(v.faction_name))
        end
    end
  
    for _, v in pairs(Factions) do
        if ESX.Table.SizeOf(v.grades) == 0 then
            Factions[v.name] = nil
            print(('[^3WARNING^7] Ignoring faction ^5"%s"^0due to no faction grades found'):format(v.name))
        end
    end
  
    if not Factions then
        -- Fallback data, if no factions exist
        ESX.Factions['nofaction'] = {
            label = 'Sans faction',
            grades = { ['0'] = { grade = 0, label = 'Sans faction', salary = 0, skin_male = {}, skin_female = {} } }
        }
    else
        ESX.Factions = Factions
    end

  print(('[^2INFO^7] ESX ^5Legacy %s^0 initialized!'):format(GetResourceMetadata(GetCurrentResourceName(), "version", 0)))
    
  StartDBSync()
  if Config.EnablePaycheck then
		StartPayCheck()
	end
end)

RegisterServerEvent('esx:clientLog')
AddEventHandler('esx:clientLog', function(msg)
  if Config.EnableDebug then
    print(('[^2TRACE^7] %s^7'):format(msg))
  end
end)

RegisterNetEvent("esx:ReturnVehicleType", function(Type, Request)
  if Core.ClientCallbacks[Request] then
    Core.ClientCallbacks[Request](Type)
    Core.ClientCallbacks[Request] = nil
  end
end)

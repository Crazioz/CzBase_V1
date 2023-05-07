Config = {}
Config.Locale = "en"
Config.Mysql = 'oxmysql' -- "ghmattisql", "mysql-async", "oxmysql"
Config.framework = 'ESX' -- ESX or QBCORE
Config.UsePopUI = true -- Create a Thread for checking playercoords and Use POPUI to Trigger Event, set this to false if using rayzone. Popui is originaly built in to RayZone -- DOWNLOAD https://github.com/renzuzu/renzu_popui
Config.Quickpick = false -- if false system will create a garage shell and spawn every vehicle you preview
Config.EnableTestDrive = true
Config.PlateSpace = true -- enable / disable plate spaces (compatibility with esx 1.1?)
Config.SaveJob = true -- this config is to save the value to owned_vehicles.job column
Config.Licensed = false -- Enable Driver Licensed Checker
Config.DisplayCars = true -- enable display of cars
Config.Marker = true -- use draw marker and Iscontrollpress native , popui will not work if this is true

-- VEHICLE THUMBNAILS IMAGE
-- this is standalone
Config.CustomImg = false -- if true your Config.CustomImgColumn IMAGE url will be used for each vehicles else, the imgs/uploads/MODEL.jpg
Config.CustomImgColumn = 'imglink' -- db column name
-- this is standalone
-- Config.use_renzu_vehthumb -- Config.CustomImg must be false
Config.use_renzu_vehthumb = false -- use vehicle thumb generation script
Config.RgbColor = true -- your framework or garage must support custom colors ex. https://github.com/renzuzu/renzu_garage

-- CARKEYS -- -- you need to replace the event
Config.Carkeys = function(plate,source)
    print("Sending Keys")
    TriggerClientEvent('vehiclekeys:client:SetOwner',source,plate) -- THIS EVENT IS QBCORE CAR KEYS!, replace the event name to your carkeys event
end
-- CARKEYS --
--EXTRA
Config.UseArenaSpawn = true -- will use custom location for spawning vehicle in quickpick == false
-- MAIN
VehicleShop = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        title = "Magasin de véhicules",
        icon = 'https://i.imgur.com/05SLYUP.png',
        type = 'car',
        job = 'all',
        default_garage = 'A',
        Dist = 4, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 595, scale = 0.9},
        shop_x = -35.469879150391,
        shop_y = -1100.3621826172,
        shop_z = 26.422359466553, -- coordinates for this garage
        spawn_x = -32.283363342285,
        spawn_y = -1091.0841064453,
        spawn_z = 25.749485015869,
        heading = 340.23065185547, -- Vehicle spawn location,
        displaycars = {
            [1] = {model = 'jester3', value = 100000, coord = vector4(-47.427722930908,-1101.3747558594,25.714616775513,341.64694213867)},
            [2] = {model = 'fmj', value = 1000000, coord = vector4(-44.736125946045,-1094.1976318359,25.748092651367,158.2547454834)},
            [3] = {model = 'adder', value = 1000000, coord = vector4(-40.32751083374,-1095.6105957031,26.009906768799,158.58676147461)},
            [4] = {model = 'zentorno', value = 1000000, coord = vector4(-43.318450927734,-1102.1627197266,25.758722305298,340.29724121094)},
        }
    },

    -- BOAT shop
    ['Yacht Club Boat Shop'] = { -- same with name
        name = "Vendeur de bateaux", --LEGION
        type = 'boat', -- type of shop
        title = "Vendeur de bateaux",
        icon = 'https://i.imgur.com/62bRdH6.png',
        job = 'all',
        default_garage = 'Boat Garage A',
        Dist = 7, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 410, scale = 0.9},
        shop_x = -812.87133789062,
        shop_y = -1407.4493408203,
        shop_z = 5.0005192756653, -- coordinates for this garage
        spawn_x = -818.69775390625,
        spawn_y = -1420.5775146484,
        spawn_z = 0.12045155465603,
        heading = 178.27006530762, -- Vehicle spawn location
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Yacht Club Boat Shop',brand='Civil',stock=50,price=127000,model='Speeder',name="Speeder"},
            {shop='Yacht Club Boat Shop',brand='Civil',stock=50,price=117000,model='Tropic',name="Tropic"},
            {shop='Yacht Club Boat Shop',brand='Civil',stock=50,price=110000,model='dinghy2',name="Dinghy2"},
            
        },
    },
    -- PLANE SHOP
    ['DEVIN WESTON PLANE SHOP'] = { -- same with name
        name = "Vendeur Aérien", --LEGION
        title = "Vendeur Aérien",
        icon = 'https://i.imgur.com/12rKk6E.png',
        type = 'air', -- type of shop
        job = 'all',
        default_garage = 'Plane Hangar A',
        Dist = 7, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 423, scale = 0.9},
        shop_x = -916.04522705078,
        shop_y = -3025.2377929688,
        shop_z = 13.945063591003, -- coordinates for this garage
        spawn_x = -985.01806640625,
        spawn_y = -3005.4670410156,
        spawn_z = 14.783501625061,
        heading = 54.631553649902, -- Vehicle spawn location
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='DEVIN WESTON PLANE SHOP',brand='Civil',stock=50,price=120000,model='Buzzard2',name="Buzzard2"},
            {shop='DEVIN WESTON PLANE SHOP',brand='Civil',stock=50,price=155000,model='Frogger',name="Frogger"},
            {shop='DEVIN WESTON PLANE SHOP',brand='Civil',stock=50,price=225000,model='Supervolito',name="Supervolito"},
        },
    },
}

Config.EnableVehicleSelling = true -- allow your user to sell the vehicle and deletes it from database
Config.RefundPercent = 70 -- 70% (percentage from original value)
Refund = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        job = 'all',
        Dist = 7, -- distance
        Blip = {color = 38, sprite = 219, scale = 0.6},
        shop_x = -46.320140838623,
        shop_y = -1095.1837158203,
        shop_z = 25.91579246521, -- coordinates for selling / refunding the vehicle
    },
}

lib = nil

function TryOxLib(file)
    local fcall = function()
        local name = ('%s.lua'):format(file)
        local content = LoadResourceFile('ox_lib',name)
        local f, err = load(content)
        return f()
    end
    _, ret = pcall(fcall,false)
    return ret
end
Config = {}
Translation = {}

Config.Shopkeeper = 416176080 -- hash of the shopkeeper ped
Config.Locale = 'custom' -- 'en', 'sv' or 'custom'

AddCallBlips = true -- Adds blips for calls that disappear over time

Config.Shops = {
    -- {coords = vector3(x, y, z), heading = peds heading, money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}
    {coords = vector3(372.906, 327.98, 102.566-0.98), heading = 243.27, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(1697.4122, 4923.309, 41.06-0.98), heading = 321.612, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(1166.4184, 2710.7502, 37.15-0.98), heading = 178.0, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(-1485.6671, -378.5602, 39.16-0.98), heading = 134.0, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(-1222.419, -908.714, 11.326-0.98), heading = 32.608, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(24.313, -1345.6423, 28.4970-0.98), heading = 269.7, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(549.461, 2669.56, 41.156-0.98), heading = 97.3, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(2555.386, 380.819, 107.622-0.98), heading = 256, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(1391.777, 3606.140, 33.980-0.98), heading = 199.7, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(-3040.5100, 583.884, 6.908-0.98), heading = 15.3, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(-3243.926, 1000.040, 11.830-0.98), heading = 256, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(1959.095, 3741.328, 31.343-0.98), heading = 299.2, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(2676.3469, 3280.058, 54.241-0.98), heading = 332.0, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(1165.1822, -323.651, 68.205-0.98), heading = 96.0, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(-46.30, -1757.925, 29.42-0.98), heading = 47.56, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(1134.0931, -981.878, 45.415-0.98), heading = 275.0, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(1728.45, 6416.88, 34.03-0.98), heading = 276.0, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
    {coords = vector3(-705.97, -913.06, 19.21-0.98), heading = 88.51, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 15, second = 0}, robbed = false},
	--{coords = vector3(270.82, -978.86, 29.36-0.98), heading = 155.90, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 10, second = 0}, robbed = false},
	{coords = vector3(-1819.4333496094, 793.70697021484, 138.08305358887-0.98), heading = 125.00, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 10, second = 0}, robbed = false},
 	{coords = vector3(188.60966491699, -889.24047851563, 30.713054656982-0.98), heading = 253.22, money = {1000, 2000}, cops = 1, blip = true, name = 'Superette', cooldown = {hour = 0, minute = 10, second = 0}, robbed = false},

}

Translation = {
    ['en'] = {
        ['shopkeeper'] = 'shopkeeper',
        ['robbed'] = "I was just robbed and ~r~don't ~w~have any money left!",
        ['cashrecieved'] = 'You got:',
        ['currency'] = '$',
        ['scared'] = 'Scared:',
        ['no_cops'] = 'There are ~r~not~w~ enough cops online!',
        ['cop_msg'] = 'We have sent a photo of the robber taken by the CCTV camera!',
        ['set_waypoint'] = 'Set waypoint to the store',
        ['hide_box'] = 'Close this box',
        ['robbery'] = 'Robbery in progress',
        ['walked_too_far'] = 'You walked too far away!'
    },
    ['custom'] = { -- edit this to your language
        ['shopkeeper'] = 'Commerçant',
        ['robbed'] = 'On vient de me voler et je ~r~n\'ai plus ~w~d\'argent !',
        ['cashrecieved'] = 'Vous avez :',
        ['currency'] = '$',
        ['scared'] = 'Effrayé :',
        ['no_cops'] = 'Il n\'y a ~r~pas~w~ assez de flics en ligne !',
        ['cop_msg'] = 'Nous avons envoyé une photo du voleur prise par la caméra de vidéosurveillance !',
        ['set_waypoint'] = 'Définir le waypoint jusqu\'au magasin',
        ['hide_box'] = 'Fermer cette boîte',
        ['robbery'] = 'Braquage en cours',
        ['walked_too_far'] = 'Tu es parti trop loin !'
    }
}
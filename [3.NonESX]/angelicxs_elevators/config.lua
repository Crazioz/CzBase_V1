-- Thanks for using this script! Check out other free scripts by me on CFX FiveM or my Tebex for paid scripts/support: https://angelicxs.tebex.io/

Config = {}

Config.UseESX = true						-- Use ESX Framework
Config.UseQBCore = false					-- Use QBCore Framework (Ignored if Config.UseESX = true)

Config.ThirdEyeName = 'ox_target' 			-- Name of third eye aplication
Config.Use3DText = false                        -- Use 3D text to interact
Config.NHMenu = false						-- Use NH-Context [https://github.com/nighmares/nh-context]
Config.QBMenu = false						-- Use QB-Menu (Ignored if Config.NHInput = true) [https://github.com/qbcore-framework/qb-input]
Config.OXLib = true						-- Use the OX_lib (Ignored if Config.NHInput or Config.QBInput = true) [https://github.com/overextended/ox_lib] !! must add shared_script '@ox_lib/init.lua' and lua54 'yes' to fxmanifest!!
Config.ElevatorWaitTime = 3					-- How many seconds until the player arrives at their floor

Config.Notify = {
	enabled = true,							-- Display hint notification?
	distance = 3.0,							-- Distance from elevator that the hint will show
	message = "Ciblez l'ascenseur à utiliser"	-- Text of the hint notification
}

--[[
	USAGE
	To add an elevator, copy the table below and configure as needed:
		coords = vector3 coords of center of elevator
		heading = Direction facing out of the elevator
		level = What floor are they going to
		label = What is on that floor
		jobs = OPTIONAL: Table of job keys that are allowed to access that floor and value of minimum grade of each job
		items = OPTIONAL: Any items that are required to access that floor (only requires one of the items listed)
		jobAndItem = OPTIONAL: If true, you must you have a required job AND a required items. If false or nil no items are needed
	
]]

Config.Elevators = {

	VPDMainElevator = {	
		{
			coords = vector3(-1835.5129394531,-339.10116577148,58.15771484375), heading = 36.8, level = "+1", label = "Héliport & Chambre",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(-1843.1945800781,-342.05072021484,49.452693939209), heading = 36.8, level = "RDC", label = "Rez de chaussée",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(-1848.8309326172,-340.56213378906,41.248405456543), heading = 36.8, level = "-1", label = "Garage & Salle d'OP",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			},
		},
	},

	bcso = {	
		{
			coords = vector3(-449.16979980469,6009.130859375,36.995643615723), heading = 36.8, level = "+1", label = "Héliport & Chambre",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(-449.93035888672,6010.111328125,32.288665771484), heading = 36.8, level = "RDC", label = "Accueil / Rez de chaussée",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(-449.85089111328,6010.1528320313,27.581495285034), heading = 36.8, level = "-1", label = "Cellule",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			},
		},
	},

	VPDPublicElevator = {
		{
			coords = vector3(-1066.05, -833.71, 26.82318), heading = 36.1, level = "Floor 3", label = "Division Offices",
		},
		{
			coords = vector3(-1066.05, -833.71, 23.03471), heading = 36.1, level = "Floor 2", label = "UNDER RENOVATIONS",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(-1066.05, -833.713, 18.9964), heading = 36.1, level = "Floor 1", label = "Main Hall",
		},
		{
			coords = vector3(-1066.05, -833.71, 4.88), heading = 36.1, level = "Floor -1", label = "Detention Cells & Interrogation",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(-1066.05, -833.71, 10.27282), heading = 36.1, level = "Floor -2", label = "Crime Lab & Evidence Rooms",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			}
		},
		{
			coords = vector3(-1066.05, -833.71, 13.69069), heading = 36.1, level = "Floor -3", label = "Garage & Armory",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ambulance"] = 0,
			},
		},
	},

	SkybarElevatorSouth = {
		{
			coords = vector3(315.49, -929.32, 52.81), heading = 176.67, level = "Skybar 5th Floor", label = "Bar Level for Skybar",
		},
		{
			coords = vector3(315.49, -929.32, 29.47), heading = 176.67, level = "Skybar Ground", label = "Street Level for Skybar",
		},
	},
	
	SkybarElevatorNorth = {
		{
			coords = vector3(309.81, -929.05, 52.81), heading = 176.67, level = "Skybar 5th Floor", label = "Bar Level for Skybar",
		},
		{
			coords = vector3(309.81, -929.05, 29.47), heading = 176.67, level = "Skybar Ground", label = "Street Level for Skybar",
		},
	},
	PillboxElevatorNorth = {
		{
			coords = vector3(332.37, -595.56, 43.28), heading = 70.65, level = "1", label = "Pillbox - Accueil",
		},
		{
			coords = vector3(344.31, -586.12, 28.79), heading = 252.84, level = "0", label = "Pillbox - Reception",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(340.05, -584.98, 28.79), heading = 88.21, level = "-1", label = "Pillbox - Parking",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
	},

	PillboxElevatorSouth = {
		{
			coords = vector3(330.45, -601.07, 43.28), heading = 67.64, level = "+1", label = "Pillbox - Accueil",
		},
		{
			coords = vector3(345.68, -582.34, 28.79), heading = 248.30, level = "0", label = "Pillbox - Reception",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(341.58, -580.88, 28.79), heading = 70.59, level = "-1", label = "Pillbox - Parking",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
	},

	PillboxRoofTop = {
		{
			coords = vector3(338.52, -583.84, 74.16), heading = 254.13, level = "+2", label = "Pillbox - HeliPad",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(327.17, -603.87, 43.28), heading = 338.36, level = "+1", label = "Pillbox - Accueil",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
	},

}

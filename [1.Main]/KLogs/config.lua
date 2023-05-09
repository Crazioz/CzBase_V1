Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = true  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "BACKLEAKS | LOGS SERVEUR" 						-- Bot Username
Config.avatar = "https://i.imgur.com/oR6RWE8.png"				-- Bot Avatar
Config.communtiyName = "BACKLEAKS | LOGS SERVEUR"					-- Icon top of the Embed
Config.communtiyLogo = "https://i.imgur.com/oR6RWE8.png"		-- Icon top of the Embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs
Config.weaponLogDelay = 1000		-- delay to wait after someone fired a weapon to check again in ms (put to 0 to disable) Best to keep this at atleast 1000

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs
Config.ip = true --DEV ajout IP
Config.steamhex= true --DEV ajout steamhex


-- Change color of the default embeds here
-- It used Decimal or Hex color codes. They will both work.
Config.joinColor = "#3AF241" 	 	-- Player Connecting
Config.leaveColor = "#F23A3A"		-- Player Disconnected
Config.chatColor = "#A1A1A1"		-- Chat Message
Config.shootingColor = "#2E66F2"	-- Shooting a weapon
Config.deathColor = "#000000"		-- Player Died
Config.resourceColor = "#EBEE3F"	-- Resource Stopped/Started



Config.webhooks = {
	all = "",
	chat = "",
	joins = "",
	leaving = "",
	deaths = "",
	shooting = "",
	resources = "",
}

Config.debug = false
Config.versionCheck = "1.1.1"

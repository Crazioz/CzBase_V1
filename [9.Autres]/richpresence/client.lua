Citizen.CreateThread(function()
	while true do
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(1098224092865384539)

        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('basev1')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('BackLeaks Base V1')
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('basev1')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('En cours de création')


        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/cSAv6BUhX8")
        --SetDiscordRichPresenceAction(1, "Second Button!", "fivem://connect/localhost:30120")

        -- It updates every minute just in case.
		Citizen.Wait(60000)
	end
end)
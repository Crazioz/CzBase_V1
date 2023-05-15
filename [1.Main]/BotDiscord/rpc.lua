Citizen.CreateThread(function()
    while true do
        -- Remplacez "IDBOTDISCORD" du script ci-dessous par votre propre ID de bot discord
        -- vià ce lien : https://discord.com/developers/applications
		SetDiscordAppId(IDBOTDISCORD)

        -- Ici, vous devrez mettre le nom de l'image dans vos asset pour la grande icône.
		SetDiscordRichPresenceAsset('logo_discord')

        -- Ici, vous pouvez ajouter du texte de survol pour la grande icône.
        SetDiscordRichPresenceAssetText('BackLeaks')
       
        -- Ici, vous devrez mettre le nom de l'image dans vos asset pour la petite icône sous le même nom ci-dessous.
        SetDiscordRichPresenceAssetSmall('back-leaks2')

        -- Ici, vous pouvez ajouter du texte de survol pour la "petite" icône.
        SetDiscordRichPresenceAssetSmallText('Bienvenue sur la base Template de CraziozFR !')
        
        
        -- Nombre de joueurs en ligne (Don't touch)
        local playerCount = #GetActivePlayers()

        -- Vérifier le joueur ou les joueurs
        if playerCount == 1 then
            player = "Joueur"
        else
            player = "Joueurs"
        end
        
        -- Votre propre nom de joueur (Don't touch)
        local playerName = GetPlayerName(PlayerId())

        -- Définissez ici le nombre de slots dont vous disposez (Modifier si nécessaire)
        local maxPlayerSlots = GetConvarInt('sv_maxclients', 1024)

        -- Définit la chaîne avec des variables comme RichPresence (Don't touch)
        SetRichPresence(string.format("%s - %s %s", playerName, playerCount, player))
        
        -- Il se met à jour toutes les 30 secondes.
		Citizen.Wait(30000)
	end
end)
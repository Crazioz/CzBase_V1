Config = {
    -- Change the language of the menu here!.
    -- Note fr and de are google translated, if you would like to help out with translations, feel free to send me an 'issue' on Github.
    -- Thank you to those who provided translations.
    --
    -- Check languages code below to change the MenuLanguage
    MenuLanguage = 'fr',
    -- Set this to true to enable some extra prints
    DebugDisplay = false,
    -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
    EnableXtoCancel = true,
    -- Set this to true if you want to disarm the player when they play an emote.
    DisarmPlayer = false,
    -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
    AllowedInCars = true,
    -- You can disable the menu here / change the keybind. It is currently set to F3
    MenuKeybindEnabled = true,
    MenuKeybind = 'F3', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can disable the Favorite emote keybinding here.
    FavKeybindEnabled = true,
    FavKeybind = 'CAPITAL', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can change the header image for the menu here
    -- Use a 512 x 128 image!
    -- Note this might cause an issue of the image getting stuck on peoples screens
    CustomMenuEnabled = true,
    MenuImage = "https://i.imgur.com/Ej1AgFX.png", ----[Custom banner imgur URLs go here ]---
    -- You can change the menu image by pasting a link above. It must be the same width and length
    -- You can change the name of the menu here.
    MenuTitle = "",
    -- You can change the menu position here
    MenuPosition = "right", -- (left, right)
    -- You can enable or disable the Ragdoll keybinding here.
    RagdollEnabled = false,
    RagdollKeybind = 'U', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can enable or disable Ragdoll as Toggle here. Only works if RagdollEnabled is set to true.
    RagdollAsToggle = true,
    -- You can disable the Facial Expressions menu here.
    ExpressionsEnabled = true,
    -- You can disable the Walking Styles menu here.
    WalkingStylesEnabled = true,
    -- You can disable the Adult Emotes here.
    AdultEmotesDisabled = false,
    -- You can disable the Shared Emotes here.
    SharedEmotesEnabled = true,
    CheckForUpdates = true,
    -- If you have the SQL imported enable this to turn on keybinding.
    SqlKeybinding = false,
    -- If you don't like gta notifications, you can disable them here to have messages in the chat.
    NotificationsAsChatMessage = false,
    -- Used for few framework dependent things. Accepted values: "qb-core", false
    Framework = false,
    -- Used to enable or disable the search feature in the menu.
    Search = true,
    -- You can disable the Animal Emotes here.
    AnimalEmotesEnabled = true,
    -- You can disable the Tactique Emotes here.
    TactiqueEmotesEnabled = true,   
}

Config.KeybindKeys = {
    ['num4'] = 108,
    ['num5'] = 110,
    ['num6'] = 109,
    ['num7'] = 117,
    ['num8'] = 111,
    ['num9'] = 118
}

Config.Languages = {
    ['en'] = { -- English 🇬🇧
        ['emotes'] = 'Emotes 🎬',
        ['danceemotes'] = "🕺 Dance Emotes",
        ['animalemotes'] = "🐩 Animal Emotes",
        ['propemotes'] = "📦 Prop Emotes",
        ['favoriteemotes'] = "🌟 Favorite",
        ['favoriteinfo'] = "Select an emote here to set it as your favorite.",
        ['rfavorite'] = "Reset favorite",
        ['prop2info'] = "❓ Prop Emotes can be located at the end",
        ['set'] = "Set (",
        ['setboundemote'] = ") to be your bound emote?",
        ['newsetemote'] = "~w~ is now your bound emote, press ~g~CapsLock~w~ to use it.",
        ['cancelemote'] = "Cancel Emote 🚷",
        ['cancelemoteinfo'] = "~r~X~w~ Cancels the currently playing emote",
        ['walkingstyles'] = "Walking Styles 🚶🏻‍♂️",
        ['resetdef'] = "Reset to default",
        ['normalreset'] = "Normal (Reset)",
        ['moods'] = "Moods 😒",
        ['infoupdate'] = "Credits & Suggestions 🙏🏻",
        ['infoupdateav'] = "Information (Update available)",
        ['infoupdateavtext'] = "An update is available, get the latest version from ~y~https://github.com/TayMcKenzieNZ/dpemotes~w~",
        ['suggestions'] = "Suggestions?",
        ['suggestionsinfo'] = "~r~TayMcKenzieNZ~s~ on FiveM forums for any feature/emote suggestions! ✉️",
        ['notvaliddance'] = "is not a valid dance.",
        ['notvalidemote'] = "is not a valid emote.",
        ['nocancel'] = "No emote to cancel.",
        ['maleonly'] = "This emote is male only, sorry!",
        ['emotemenucmd'] = "Use command /emotemenu to open animations menu.",
        ['shareemotes'] = "👫 Shared Emotes",
        ['shareemotesinfo'] = "Invite a nearby person to emote",
        ['sharedanceemotes'] = "🕺 Shared Dances",
        ['notvalidsharedemote'] = "is not a valid shared emote.",
        ['sentrequestto'] = "Sent request to ~y~",
        ['nobodyclose'] = "Nobody ~r~close~w~ enough.",
        ['doyouwanna'] = "~y~Y~w~ to accept, ~r~L~w~ to refuse (~g~",
        ['refuseemote'] = "Emote refused.",
        ['makenearby'] = "makes the nearby player play",
        ['useleafblower'] = "Press ~y~G~w~ to use the leaf blower.",
        ['camera'] = "Press ~y~G~w~ to use camera flash.",
        ['makeitrain'] = "Press ~y~G~w~ to make it rain.",
        ['pee'] = "Hold ~y~G~w~ to pee.",
        ['spraychamp'] = "Hold ~y~G~w~ to spray champagne",
        ['stun'] = "Press ~y~G~w~ to 'use' stun gun.",
        ['vape'] = "Press ~y~G~w~ to vape.",
        ['bound'] = "Bound ",
        ['to'] = "to",
        ['currentlyboundemotes'] = " Currently bound emotes:",
        ['notvalidkey'] = "is not a valid key.",
        ['keybinds'] = "🔢 Keybinds",
        ['keybindsinfo'] = "Use",
        ['searchemotes'] = "🔍 Search for Emotes",
        ['searchinputtitle'] = "Search:",
        ['searchmenudesc'] = "%s result(s) for '~r~%s~w~':",
        ['searchnoresult'] = "No results for search '~r~%s~w~'.",
        ['searchshifttofav'] = "Hold L-Shift and press enter to set as favorite.",
        ['searchcantsetfav'] = "Shared emotes cannot be set as favorites."
    },
    ['fr'] = { -- French 🇫🇷
        ['emotes'] = 'Animations 🎬',
        ['danceemotes'] = "🕺 Danses",
        ['tactiqueemotes'] = "🔫 Animations Tactique",
        ['animalemotes'] = "🐩 Animations pour animaux",
        ['propemotes'] = "📦 Animations avec objet",
        ['favoriteemotes'] = "🌟 Favori",
        ['favoriteinfo'] = "Définir une emote comme favori.",
        ['rfavorite'] = "Réinitialiser le favori.",
        ['prop2info'] = "❓ Les emotes d'objet peuvent être à la fin",
        ['set'] = "Mettre (",
        ['setboundemote'] = ") en emote favorite?",
        ['newsetemote'] = "~w~ est maintenant votre emote favorite, appuyez sur ~g~CapsLock~w~ pour l'utiliser.",
        ['cancelemote'] = "Annuler Emote 🚷",
        ['cancelemoteinfo'] = "~r~X~w~ Annule l'emote en cours",
        ['walkingstyles'] = "Styles de marche 🚶🏻‍♂️",
        ['resetdef'] = "Réinitialiser aux valeurs par défaut",
        ['normalreset'] = "Normal (réinitialiser)",
        ['moods'] = "Humeurs 😒",
        ['infoupdate'] = "Crédits et suggestions 🙏🏻",
        ['infoupdateav'] = "Information (Mise à jour disponible)",
        ['infoupdateavtext'] = "Une mise à jour est disponible ~y~https://github.com/TayMcKenzieNZ/dpemotes~w~",
        ['suggestions'] = "Suggestions?",
        ['suggestionsinfo'] = "~r~TayMcKenzieNZ~s~ sur les forums FiveM pour toutes les suggestions! ✉️",
        ['notvaliddance'] = "n'est pas une danse valide",
        ['notvalidemote'] = "n'est pas une emote valide",
        ['nocancel'] = "Pas d'emote à annuler",
        ['maleonly'] = "Cet emote est réservé aux hommes, désolé!",
        ['emotemenucmd'] = "Fait /emotemenu pour ouvrir le menu",
        ['shareemotes'] = "👫 Emotes partagées",
        ['shareemotesinfo'] = "Invite une personne proche à faire une emote avec toi",
        ['sharedanceemotes'] = "🕺 Dances partagées",
        ['notvalidsharedemote'] = "n'est pas un emote partagée valide.",
        ['sentrequestto'] = "Demande envoyée à ~g~",
        ['nobodyclose'] = "Personne n'est assez proche.",
        ['doyouwanna'] = "~y~Y~w~ accepter, ~r~L~w~ refuser (~g~",
        ['refuseemote'] = "Emote refusée.",
        ['makenearby'] = "fait jouer le joueur à proximité",
        ['useleafblower'] = "Appuyez sur ~y~G~w~ pour utiliser le souffleur à feuilles.",
        ['camera'] = "Appuyez sur ~y~G~w~ pour utiliser le flash de l'appareil.",
        ['makeitrain'] = "Appuyez sur ~y~G~w~ pour jeter de l'argent.",
        ['pee'] = "Appuyez sur ~y~G~w~ pour faire pipi.",
        ['spraychamp'] = "Appuyez sur ~y~G~w~ pour vaporiser du champagne.",
        ['vape'] = "Appuyer sur ~y~G~w~ pour vape.",
        ['bound'] = "Liée ",
        ['to'] = "à",
        ['currentlyboundemotes'] = " Emotes actuellement liées:",
        ['notvalidkey'] = "n'est pas une clé valide.",
        ['keybinds'] = "🔢 Raccourcis clavier",
        ['keybindsinfo'] = "Utilise",
        ['searchemotes'] = "🔍 Rechercher des emotes",
        ['searchinputtitle'] = "Recherche:",
        ['searchmenudesc'] = "%s resultat(s) pour '~r~%s~w~':",
        ['searchnoresult'] = "Aucun résultat pour la recherche : '~r~%s~w~'.",
        ['searchshifttofav'] = "Maintenir  L-Shift et appuyer sur entrer pour marquer comme favorie.",
        ['searchcantsetfav'] = "Les emotes partagées ne peuvent pas être mise en favorie."
    },
}

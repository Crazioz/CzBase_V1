local second = 1000
local minute = 60 * second

EarlyRespawnTimer          = 8 * minute  -- Temp de mort si les ambulancier sont pas venu

ConfigWebhookRendezVousAmbulance = "https://discord.com/api/webhooks/1090028695583981761/WoNQX-jdG3PAxZGuNpw0Nlu-LDXus-Vxc9NmI2eWAXHWu5kTXsMJIs1R-tAcpnv6JQ2d" -- Metez le webhook de votre salon disocrd configure pour le job ems 

Config = {

	Locale                     = 'fr',

	RespawnPoint = { coords = vector3(325.23040771484,-593.12585449219,43.284049987793), heading = 80.00 }, -- L'endroit ou tu respawn apers la mort
    
	EarlyRespawnFine           = false, 
    EarlyRespawnFineAmount     = 5000, 

	RemoveWeaponsAfterRPDeath  = false, -- Supprime les arme sur sois 
    RemoveCashAfterRPDeath     = false, -- Supprime l'argent cash et sale sur sois 
    RemoveItemsAfterRPDeath    = false, -- Supprime tout les item sur sois 

    BleedoutTimer              = 5 * minute, -- Temp de l'effet quand tu respawn 

	ReviveReward               = 300,  -- Price du revive
    AntiCombatLog              = true, -- enable anti-combat logging?

    MarkerType = 22, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
    MarkerSizeLargeur = 1.0, -- Largeur du marker
    MarkerSizeEpaisseur = 1.0, -- Épaisseur du marker
    MarkerSizeHauteur = 1.0, -- Hauteur du marker
    MarkerDistance = 50.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
    MarkerColorR = 69, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorG = 112, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorB = 246, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
    MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
    MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)

    TextCoffre = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~coffre ~s~!",  -- Text Menu coffre
    TextPharmacie = "Appuyez sur ~b~[E] ~s~pour accèder a la ~b~pharmacie ~s~!",  -- Text Menu Pharamcie
    TextVestaire = "Appuyez sur ~b~[E] ~s~pour pour accèder au ~b~vestaire ~s~!", -- Text Menu Vestaire
    TextBoss = "Appuyez sur ~b~[E] ~s~pour pour accèder au ~b~action patron ~s~!",  -- Text Menu Boss
    TextGarageVehicule = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~garage ~s~!",  -- Text Garage Voiture
	TextGarageHeli = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~garage ~s~!",  -- Text Garage Hélico
	TextAscenseur = "Appuyez sur ~b~[E] ~s~pour accèder à ~b~l'étage ~s~!",  -- Text Ascenseur
    TextAccueil = "Appuyez sur ~b~[E] ~s~pour parler a la secrétaire ~s~!",  -- Text Ascenseur
	

AmbuVehiculesAmbulance = { 
	{buttoname = "Dodge Charger", rightlabel = "→→", spawnname = "emscharger", spawnzone = vector3(326.68426513672,-587.77160644531,28.796842575073), headingspawn = 339.0}, -- Garage Voiture
	{buttoname = "Ford Explorer", rightlabel = "→→", spawnname = "emsfpiu", spawnzone = vector3(323.35559082031,-587.30706787109,28.796842575073), headingspawn = 339.0}, -- Garage Voiture
    {buttoname = "Chevrolet Tahoe", rightlabel = "→→", spawnname = "emstahoe", spawnzone = vector3(319.81811523438,-586.37072753906,28.796842575073), headingspawn = 339.0}, -- Garage Voiture
},

AmbuHelicoAmbulance = { 
	{buttonameheli = "Hélicoptère", rightlabel = "→→", polmav= "helico ems", spawnzoneheli = vector3(351.82925415039,-587.82843017578,74.16178894043), headingspawnheli = 250.0}, -- Garage Hélico
},


Pharmacie = {
    {Nom = "Medikit", Item = "medikit"}, -- Item Pour la Pharmacie
    {Nom = "Bandage", Item = "bandage"}, -- Item Pour la Pharmacie
},

Ascenseur = {
},

Position = {
	    Boss = {vector3(334.69259643555,-593.75463867188,43.284103393555)}, -- Menu boss 
	    Coffre = {vector3(339.01281738281,-595.123046875,43.284103393555)}, -- Menu coffre 
        Pharmacie = {vector3(306.57214355469,-601.67651367188,43.284049987793)}, -- Menu Pharmacie 
        Vestaire = {vector3(-665.78, 323.63, 0.0)}, -- Menu Vestaire 
        Accueil = {vector3(308.57217407227,-592.62811279297,43.284042358398)}, -- Menu Pour Accueil 
        GarageVehicule = {vector3(336.75228881836,-581.93365478516,28.796869277954)}, -- Menu Garage Vehicule
	    GarageHeli = {vector3(351.82925415039,-587.82843017578,74.16178894043)}, -- Menu Garage Helico
    }
}

AmbuCloak = {
	clothes = {
        specials = {
            [0] = {
                label = "Tenue Civil",
                minimum_grade = 0,
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin) TriggerEvent('skinchanger:loadSkin', skin) end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },
            [1] = {
                minimum_grade = 3,
                label = "Tenue de Directeur",
                variations = {
                    male = {
                        bags_1 = 0, bags_2 = 0,
                        tshirt_1 = 129, tshirt_2 = 0,
                        torso_1 = 75, torso_2 = 6,
                        arms = 86,
                        pants_1 = 33, pants_2 = 0,
                        shoes_1 = 25, shoes_2 = 0,
                        mask_1 = 0, mask_2 = 0,
                        bproof_1 = 14, bproof_2 = 0,
                        helmet_1 = -1, helmet_2 = 0,
                        chain_1 = 0, chain_2 = 0,
                        decals_1 = 0, decals_2 = 0,
                    },
                female = {
                    tshirt_1 = 36,  tshirt_2 = 1,
                    torso_1 = 48,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 44,
                    pants_1 = 34,   pants_2 = 0,
                    shoes_1 = 27,   shoes_2 = 0,
                    helmet_1 = 45,  helmet_2 = 0,
                    chain_1 = 0,    chain_2 = 0,
                    ears_1 = 2,     ears_2 = 0
                }
            },
            onEquip = function()  
            end
            }
        },
        grades = {
            -- @label = Le nom affiché de la tenue de grade
            -- @male = Les composants skinchanger pour les hommes
            -- @female = Les composants skinchanger pour les femmes
            [0] = {
                label = "Tenue d'Ambulancier",
                minimum_grade = 0,
                variations = {
                male = {
                    bags_1 = 0, bags_2 = 0,
                    tshirt_1 = 32, tshirt_2 = 0,
                    torso_1 = 310, torso_2 = 0,
                    arms = 0,
                    pants_1 = 25, pants_2 = 1,
                    shoes_1 = 74, shoes_2 = 0,
                    mask_1 = 0, mask_2 = 0,
                    bproof_1 = 1, bproof_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    chain_1 = 0, chain_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                },
                female = {
                    bags_1 = 0, bags_2 = 0,
                    tshirt_1 = 129, tshirt_2 = 0,
                    torso_1 = 75, torso_2 = 6,
                    arms = 86,
                    pants_1 = 33, pants_2 = 0,
                    shoes_1 = 25, shoes_2 = 0,
                    mask_1 = 0, mask_2 = 0,
                    bproof_1 = 14, bproof_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    chain_1 = 0, chain_2 = 0,
                    decals_1 = 0, decals_2 = 0
                }
            },
            onEquip = function()
            end
        },
            [1] = {
                minimum_grade = 0,
                label = "Tenue Médecin",
                variations = {
                    male = {
                        bags_1 = 0, bags_2 = 0,
                        tshirt_1 = 76, tshirt_2 = 0,
                        torso_1 = 9, torso_2 = 0,
                        arms = 4,
                        pants_1 = 112, pants_2 = 3,
                        shoes_1 = 75, shoes_2 = 0,
                        mask_1 = 0, mask_2 = 0,
                        bproof_1 = 0, bproof_2 = 0,
                        helmet_1 = -1, helmet_2 = 0,
                        chain_1 = 0, chain_2 = 0,
                        decals_1 = 0, decals_2 = 0,
                    },
                female = {
                    tshirt_1 = 36,  tshirt_2 = 1,
                    torso_1 = 48,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 44,
                    pants_1 = 34,   pants_2 = 0,
                    shoes_1 = 27,   shoes_2 = 0,
                    helmet_1 = 45,  helmet_2 = 0,
                    chain_1 = 0,    chain_2 = 0,
                    ears_1 = 2,     ears_2 = 0
                }
            },
            onEquip = function()
                
            end
        },
    }
    }
}

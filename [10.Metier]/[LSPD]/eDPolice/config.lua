ConfigWebhookRendezVousPolice = "" -- Mettez le webhook de votre salon discord configure pour le job lspd 


Config = {

     MarkerType = 22, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
     MarkerSizeLargeur = 0.3, -- Largeur du marker
     MarkerSizeEpaisseur = 0.3, -- Épaisseur du marker
     MarkerSizeHauteur = 0.3, -- Hauteur du marker
     MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
     MarkerColorR = 69, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
     MarkerColorG = 112, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
     MarkerColorB = 246, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
     MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
     MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
     MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)

     TextCoffre = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~coffre ~s~!",  -- Text Menu coffre
     TextVestaire = "Appuyez sur ~b~[E] ~s~pour pour accèder au ~b~vestaire ~s~!", -- Text Menu Vestaire
     TextBoss = "Appuyez sur ~b~[E] ~s~pour pour accèder au ~b~action patron ~s~!",  -- Text Menu Boss
     TextGarageVehicule = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~garage ~s~!",  -- Text Garage Voiture
     TextGarageHeli = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~garage ~s~!",  -- Text Garage Hélico
     TextAccueil = "Appuyez sur ~b~[E] ~s~pour parler a la secrétaire ~s~!",  -- Text Ascenseur

 amende = {
    ["amende "] = {
        {label = 'Usage abusif du klaxon', price = 1500},
        {label = 'Franchir une ligne continue', price = 1500},
        {label = 'Circulation à contresens', price = 1500},
        {label = 'Demi-tour non autorisé', price = 1500},
        {label = 'Circulation hors-route', price = 1500},
        {label = 'Non-respect des distances de sécurité', price = 1500},
        {label = 'Arrêt dangereux / interdit', price = 1500},
        {label = 'Stationnement gênant / interdit', price = 1500},
        {label = 'Non respect  de la priorité à droite', price = 1500},
        {label = 'Non-respect à un véhicule prioritaire', price = 1500},
        {label = 'Non-respect d\'un stop', price = 1500},
        {label = 'Non-respect d\'un feu rouge', price = 1500},
        {label = 'Dépassement dangereux', price = 1500},
        {label = 'Véhicule non en état', price = 1500},
        {label = 'Conduite sans permis', price = 1500},
        {label = 'Délit de fuite', price = 1500},
        {label = 'Excès de vitesse < 5 kmh', price = 1500},
        {label = 'Excès de vitesse 5-15 kmh', price = 1500},
        {label = 'Excès de vitesse 15-30 kmh', price = 1500},
        {label = 'Excès de vitesse > 30 kmh', price = 1500},
        {label = 'Entrave de la circulation', price = 1500},
        {label = 'Dégradation de la voie publique', price = 1500},
        {label = 'Trouble à l\'ordre publique', price = 1500},
        {label = 'Entrave opération de police', price = 1500},
        {label = 'Insulte envers / entre civils', price = 1500},
        {label = 'Outrage à agent de police', price = 1500},
        {label = 'Menace verbale ou intimidation envers civil', price = 1500},
        {label = 'Menace verbale ou intimidation envers policier', price = 1500},
        {label = 'Manifestation illégale', price = 1500},
        {label = 'Tentative de corruption', price = 1500},
        {label = 'Arme blanche sortie en ville', price = 1500},
        {label = 'Arme léthale sortie en ville', price = 1500},
        {label = 'Port d\'arme non autorisé (défaut de license)', price = 1500},
        {label = 'Port d\'arme illégal', price = 1500},
        {label = 'Pris en flag lockpick', price = 1500},
        {label = 'Vol de voiture', price = 1500},
        {label = 'Vente de drogue', price = 1500},
        {label = 'Fabriquation de drogue', price = 1500},
        {label = 'Possession de drogue', price = 1500},
        {label = 'Prise d\'ôtage civil', price = 1500},
        {label = 'Prise d\'ôtage agent de l\'état', price = 1500},
        {label = 'Braquage particulier', price = 1500},
        {label = 'Braquage magasin', price = 1500},
        {label = 'Braquage de banque', price = 1500},
        {label = 'Tir sur civil', price = 1500},
        {label = 'Tir sur agent de l\'état', price = 1500},
        {label = 'Tentative de meurtre sur civil', price = 1500},
        {label = 'Tentative de meurtre sur agent de l\'état', price = 1500},
        {label = 'Meurtre sur civil', price = 1500},
        {label = 'Meurte sur agent de l\'état', price = 1500}, 
        {label = 'Escroquerie à l\'entreprise', price = 1500},
    }
},

PoliceCloak = {
    clothes = {
        specials = {
                [0] = {
                    label = "Reprendre sa tenue : ~g~Civile",
                    minimum_grade = 0,
                    variations = {male = {}, female = {}},
                    onEquip = function()
                        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin) TriggerEvent('skinchanger:loadSkin', skin) end)
                        SetPedArmour(PlayerPedId(), 0)
                    end
                },
                [1] = {
                    minimum_grade = 0,
                    label = "S'équiper de la tenue : ~g~Police",
                    variations = {
                    male = {
                        ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                        ['torso_1'] = 108,   ['torso_2'] = 0,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 19,
                        ['pants_1'] = 24,   ['pants_2'] = 0,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0,
                        ['helmet_1'] = 83,  ['helmet_2'] = 0,
                        ['chain_1'] = 0,    ['chain_2'] = 0,
                        ['mask_1'] = 0,  	['mask_2'] = 0,
                        ['ears_1'] = 0,     ['ears_2'] = 0,
                        ['bags_1'] = 0	
                   },
                   female = {
                       ['bags_1'] = 0, ['bags_2'] = 0,
                           ['tshirt_1'] = 15,['tshirt_2'] = 2,
                           ['torso_1'] = 65, ['torso_2'] = 2,
                           ['arms'] = 36, ['arms_2'] = 0,
                           ['pants_1'] = 38, ['pants_2'] = 2,
                           ['shoes_1'] = 12, ['shoes_2'] = 6,
                           ['mask_1'] = 0, ['mask_2'] = 0,
                           ['bproof_1'] = 0,
                           ['chain_1'] = 0,
                           ['helmet_1'] = -1, ['helmet_2'] = 0
                    }
                },
                onEquip = function()  
                end
                },
                [2] = {
                    minimum_grade = 3,
                    label = "S'équiper de la tenue : ~g~Instructeur LSPD",
                    variations = {
                    male = {
                     ['tshirt_1'] = 87,  ['tshirt_2'] = 0,
                     ['torso_1'] = 101,   ['torso_2'] = 2,
                     ['decals_1'] = 0,   ['decals_2'] = 0,
                     ['arms'] = 52,
                     ['pants_1'] = 24,  ['pants_2'] = 0,
                     ['shoes_1'] = 25,  ['shoes_2'] = 0,
                     ['helmet_1'] = 83,  ['helmet_2'] = 6,
                     ['chain_1'] = 6,   ['chain_2'] = 0,
                     ['ears_1'] = 2,    ['ears_2'] = 0,
                     ['mask_1'] = 57,   ['mask_1'] = 0,
                     ['bags_1'] = 74,   ['bags_2'] = 0
                    },
                    female = {
                        ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                        ['torso_1'] = 93,   ['torso_2'] = 1,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 59,   ['pants_2'] = 0,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0,
                        ['helmet_1'] = -1,  ['helmet_2'] = 0,
                        ['chain_1'] = 0,    ['chain_2'] = 0,
                        ['mask_1'] = -1,  ['mask_2'] = 0,
                        ['bproof_1'] = 0,  ['bproof_2'] = 0,
                        ['ears_1'] = 2,     ['ears_2'] = 0
                   }
               },
                onEquip = function()
                end
             }
            },
            grades = {
                [3] = {
                    label = "S'équiper de la tenue : ~b~K9",
                    minimum_grade = 1,
                    variations = {
                    male = {
                        ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                        ['torso_1'] = 102,   ['torso_2'] = 3,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 42,
                        ['pants_1'] = 52,   ['pants_2'] = 0,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0,
                        ['helmet_1'] = 83,  ['helmet_2'] = 5,
                        ['chain_1'] = 6,    ['chain_2'] = 0,
                        ['ears_1'] = 2,     ['ears_2'] = 0
                    },
                    female = {
                       ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                       ['torso_1'] = 102,   ['torso_2'] = 0,
                       ['decals_1'] = 0,   ['decals_2'] = 0,
                       ['arms'] = 0,
                       ['pants_1'] = 59,   ['pants_2'] = 0,
                       ['shoes_1'] = 25,   ['shoes_2'] = 0,
                       ['helmet_1'] = -1,  ['helmet_2'] = 0,
                       ['chain_1'] = 0,    ['chain_2'] = 0,
                       ['mask_1'] = -1,  ['mask_2'] = 0,
                       ['bproof_1'] = 7,  ['bproof_2'] = 4,
                       ['ears_1'] = 2,     ['ears_2'] = 0
                    }
                },
                onEquip = function()
                end
            },
            [4] = {
               minimum_grade = 3,
               label = "S'équiper de la tenue : ~b~CID",
               variations = {
               male = {
                ['tshirt_1'] = 87,  ['tshirt_2'] = 0,
                ['torso_1'] = 108,   ['torso_2'] = 4,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 41,
                ['pants_1'] = 52,   ['pants_2'] = 0,
                ['shoes_1'] = 25,   ['shoes_2'] = 0,
                ['helmet_1'] = 84,  ['helmet_2'] = 0,
                ['chain_1'] = 1,    ['chain_2'] = 0,
                ['ears_1'] = 2,     ['ears_2'] = 0
               },
               female = {
                   ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                   ['torso_1'] = 93,   ['torso_2'] = 1,
                   ['decals_1'] = 0,   ['decals_2'] = 0,
                   ['arms'] = 0,
                   ['pants_1'] = 59,   ['pants_2'] = 0,
                   ['shoes_1'] = 25,   ['shoes_2'] = 0,
                   ['helmet_1'] = -1,  ['helmet_2'] = 0,
                   ['chain_1'] = 0,    ['chain_2'] = 0,
                   ['mask_1'] = -1,  ['mask_2'] = 0,
                   ['bproof_1'] = 0,  ['bproof_2'] = 0,
                   ['ears_1'] = 2,     ['ears_2'] = 0
              }
          },
           onEquip = function()
           end
        },
           [5] = {
            minimum_grade = 1,
            label = "S'équiper de la tenue : ~b~Moto",
            variations = {
            male = {
             ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
             ['torso_1'] = 159,   ['torso_2'] = 0,
             ['decals_1'] = 0,   ['decals_2'] = 0,
             ['arms'] = 19,
             ['pants_1'] = 32,   ['pants_2'] = 3,
             ['shoes_1'] = 13,   ['shoes_2'] = 0,
             ['helmet_1'] = 48,  ['helmet_2'] = 0,
             ['chain_1'] = 6,    ['chain_2'] = 0,
             ['ears_1'] = 2,     ['ears_2'] = 0
            },
            female = {
                ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                ['torso_1'] = 93,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 0,
                ['pants_1'] = 59,   ['pants_2'] = 0,
                ['shoes_1'] = 25,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['mask_1'] = -1,  ['mask_2'] = 0,
                ['bproof_1'] = 0,  ['bproof_2'] = 0,
                ['ears_1'] = 2,     ['ears_2'] = 0
           }
       },
        onEquip = function()
        end
        },
        [6] = {
               minimum_grade = 3,
               label = "S'équiper de la tenue : ~b~Velo",
               variations = {
               male = {
                ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
			    ['torso_1'] = 2,   ['torso_2'] = 2,
			    ['decals_1'] = 0,   ['decals_2'] = 0,
			    ['arms'] = 19,
			    ['pants_1'] = 88,   ['pants_2'] = 0,
			    ['shoes_1'] = 25,   ['shoes_2'] = 0,
			    ['helmet_1'] = 83,  ['helmet_2'] = 0,
			    ['chain_1'] = 6,    ['chain_2'] = 0,
			    ['ears_1'] = 6,     ['ears_2'] = 0,
			    ['bags_1'] = 74,   ['bags_2'] = 0
               },
               female = {
                   ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                   ['torso_1'] = 93,   ['torso_2'] = 1,
                   ['decals_1'] = 0,   ['decals_2'] = 0,
                   ['arms'] = 0,
                   ['pants_1'] = 59,   ['pants_2'] = 0,
                   ['shoes_1'] = 25,   ['shoes_2'] = 0,
                   ['helmet_1'] = -1,  ['helmet_2'] = 0,
                   ['chain_1'] = 0,    ['chain_2'] = 0,
                   ['mask_1'] = -1,  ['mask_2'] = 0,
                   ['bproof_1'] = 0,  ['bproof_2'] = 0,
                   ['ears_1'] = 2,     ['ears_2'] = 0
              }
          },
          onEquip = function()
          end
    }
},
        swats = {
            [7] = {
            minimum_grade = 3,
            label = "S'équiper de la tenue : ~r~Instructeur SWAT",
            variations = {
            male = {
                ['tshirt_1'] = 87,  ['tshirt_2'] = 0,
                ['torso_1'] = 2,   ['torso_2'] = 4,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 52,
                ['pants_1'] = 52,  ['pants_2'] = 1,
                ['shoes_1'] = 25,  ['shoes_2'] = 0,
                ['helmet_1'] = 6,  ['helmet_2'] = 2,
                ['chain_1'] = 1,   ['chain_2'] = 0,
                ['ears_1'] = 2,    ['ears_2'] = 0,
                ['mask_1'] = 57,   ['mask_1'] = 0,
                ['bags_1'] = 74,   ['bags_2'] = 0
            },
            female = {
                ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                ['torso_1'] = 93,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 0,
                ['pants_1'] = 59,   ['pants_2'] = 0,
                ['shoes_1'] = 25,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['mask_1'] = -1,  ['mask_2'] = 0,
                ['bproof_1'] = 0,  ['bproof_2'] = 0,
                ['ears_1'] = 2,     ['ears_2'] = 0
            }
        
        },
         onEquip = function()
         end
        },
        [8] = {
            minimum_grade = 2,
            label = "S'équiper de la tenue : ~r~SWAT",
            variations = {
            male = {
                ['tshirt_1'] = 87,  ['tshirt_2'] = 0,
                ['torso_1'] = 110,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 53,
                ['pants_1'] = 52,  ['pants_2'] = 1,
                ['shoes_1'] = 25,  ['shoes_2'] = 0,
                ['helmet_1'] = 1,  ['helmet_2'] = 0,
                ['chain_1'] = 1,   ['chain_2'] = 0,
                ['ears_1'] = 2,    ['ears_2'] = 0,
                ['mask_1'] = 35,   ['mask_1'] = 0,
                ['bags_1'] = 74,   ['bags_2'] = 0
            },
            female = {
               ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
               ['torso_1'] = 93,   ['torso_2'] = 1,
               ['decals_1'] = 0,   ['decals_2'] = 0,
               ['arms'] = 0,
               ['pants_1'] = 59,   ['pants_2'] = 0,
               ['shoes_1'] = 25,   ['shoes_2'] = 0,
               ['helmet_1'] = -1,  ['helmet_2'] = 0,
               ['chain_1'] = 0,    ['chain_2'] = 0,
               ['mask_1'] = -1,  ['mask_2'] = 0,
               ['bproof_1'] = 0,  ['bproof_2'] = 0,
               ['ears_1'] = 2,     ['ears_2'] = 0
           }
       },
        onEquip = function()
        end
         }
},
    }
},


Position = {
 	    Boss = {vector3(460.16271972656,-985.5859375,30.728103637695)}, -- Menu boss 
 	    Coffre = {vector3(474.79830932617,-993.78002929688,26.273275375366)}, -- Menu coffre 
        Vestaire = {vector3(461.26235961914, -999.12109375, 30.689516067505)}, -- Menu Vestaire 
        Accueil = {vector3(441.15133, -981.8668, 30.68)}, -- Menu Pour Accueil 
        GarageVehicule = {vector3(442.16421508789,-980.33929443359,0.00)}, -- Menu Garage Vehicule
 	    GarageHeli = {vector3(449.00537109375,-981.14434814453,0.00)}, -- Menu Garage Helico
    },
}


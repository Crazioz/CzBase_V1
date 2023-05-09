tabac             = {}



tabac.jeveuxmarker = true --- true = Oui | false = Non

tabac.jeveuxblips = true --- true = Oui | false = Non

tabac.argentjoueur = 5 --- prix de la prime de vente

tabac.ventemin = 100 --- vente minimum
tabac.ventemax = 200 --- vente maximale

tabac.pos = {
	coffre = {
		position = {x = -36.44, y = -1060.58, z = 27.60}
	},
		garage = {
		position = {x = -40.99, y = -1067.29, z = 27.60}
	},
		spawnvoiture = {
		position = {x = -40.96, y = -1067.66, z = 26.60, h = 66.43}
	},
		boss = {
		position = {x = -33.32, y = -1070.78, z = 27.60}
	},
	blips = {
		position = {x = -50.17, y = -1056.88, z = 27.86}
	},
	recolte = {
		position = {x = 482.62, y = 6487.40, z = 30.09}
	},
	traitement = {
		position = {x = 2343.54, y = 3142.21, z = 48.20}
	},
	transformation = {
		position = {x = 2340.65, y = 3126.47, z = 48.20}
	},
	vente = {
		position = {x = -1173.56, y = -1573.27, z = 4.37}
	},
    }

Gtabacvoiture = {
	{nom = "Bison", modele = "bison"},
}


tabac.Uniforms = {
	male = {
		['bags_1'] = 0, ['bags_2'] = 0,
		['tshirt_1'] = 1, ['tshirt_2'] = 4,
		['torso_1'] = 7, ['torso_2'] = 2,
		['arms'] = 1,
		['pants_1'] = 5, ['pants_2'] = 0,
		['shoes_1'] = 4, ['shoes_2'] = 0,
},

female = {
	['bags_1'] = 0, ['bags_2'] = 0,
	['tshirt_1'] = 3,['tshirt_2'] = 0,
	['torso_1'] = 3, ['torso_2'] = 2,
	['arms'] = 3,
	['pants_1'] = 2, ['pants_2'] = 2,
	['shoes_1'] = 7, ['shoes_2'] = 3,
}
}
-- TriggerEvent('esx_policedog:openMenu') to open menu

Config = {
    Job = {'police', 'sheriff'},
    Command = 'policechien', -- set to false if you dont want to have a command
    Model = 351016938,
    TpDistance = 50.0,
    Sit = {
        dict = 'creatures@rottweiler@amb@world_dog_sitting@base',
        anim = 'base'
    },
    Drugs = {'coke', 'coke_pooch', 'meth_pooch', 'meth',"weed","weed_pooch","opium","opium_pooch"}, -- add all drugs here for the dog to detect
}

Strings = {
    ['not_police'] = 'Tu es ~r~pas ~s~ un officier!',
    ['menu_title'] = 'Chien police',
    ['take_out_remove'] = 'Le sortir / Mettre à la niche',
    ['deleted_dog'] = 'Renvoyez le chien',
    ['spawned_dog'] = 'Appelez le chien',
    ['sit_stand'] = 'Ne bouge pas reste ici!',
    ['no_dog'] = "Tu nas pas de chien",
    ['dog_dead'] = 'Ton chien est mort',
    ['search_drugs'] = 'Le chien cherche autour de lui',
    ['no_drugs'] = 'Aucune drogue trouver.', 
    ['drugs_found'] = 'Waf!Waf! de la drogue!',
    ['dog_too_far'] = 'Le chien est bien trop loin!',
    ['attack_closest'] = 'Attaquez joueur proche'
}
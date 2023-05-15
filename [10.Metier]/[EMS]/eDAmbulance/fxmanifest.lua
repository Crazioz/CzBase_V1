fx_version 'cerulean'
games { 'gta5' };

shared_script '@es_extended/imports.lua'

version "1.0"

Author "eDen"

shared_scripts {
    "shared/config.lua",
}

client_scripts {
    "RageUI/RMenu.lua",
    "RageUI/menu/RageUI.lua",
    "RageUI/menu/Menu.lua",
    "RageUI/menu/MenuController.lua",
    "RageUI/components/*.lua",
    "RageUI/menu/elements/*.lua",
    "RageUI/menu/items/*.lua",
}

client_scripts {
    '@es_extended/locale.lua',
    'locales/fr.lua',
    'client/cl_appel.lua',
    'client/cl_boss.lua',
    'client/cl_coffre.lua',
    'client/cl_event.lua',
    'client/cl_garage.lua',
    'client/cl_menu.lua',
    'client/cl_pharmaci.lua',
    'client/cl_vestiaire.lua',
    'client/cl_accueil.lua',
}

server_script {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'locales/fr.lua',
    'server/server.lua',
}
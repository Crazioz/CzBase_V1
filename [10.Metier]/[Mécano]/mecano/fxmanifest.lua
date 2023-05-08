fx_version 'cerulean'
games { 'gta5' };

shared_script '@es_extended/imports.lua'

client_scripts {
    "RageUI/RMenu.lua",
    "RageUI/menu/RageUI.lua",
    "RageUI/menu/Menu.lua",
    "RageUI/menu/MenuController.lua",
    "RageUI/components/*.lua",
    "RageUI/menu/elements/*.lua",
    "RageUI/menu/items/*.lua",
    "RageUI/menu/panels/*.lua",
    "RageUI/menu/windows/*.lua",

}

client_scripts {
    '@es_extended/locale.lua',
    'locales/fr.lua',
    'client/client/cl_menu.lua',
    'client/client//cl_garage.lua',
    'client/client//cl_boss.lua',
    'client/client//cl_coffre.lua',
    --'client/farms/cl_farms.lua',
    --'client/farms/cl_ventes.lua',
    'config.lua'
}

server_script {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'locales/fr.lua',
    'server/server.lua',
    'config.lua'
}
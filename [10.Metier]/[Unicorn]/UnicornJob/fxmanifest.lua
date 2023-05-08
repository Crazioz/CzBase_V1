fx_version 'cerulean'
games { 'gta5' };

shared_script '@es_extended/imports.lua'

client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",

}

client_scripts {
    '@es_extended/locale.lua',
    'client/client/cl_menu.lua',
    'client/client/cl_garage.lua',
    'client/client/cl_boss.lua',
    'client/client/cl_coffre.lua',
    'client/client/cl_bar.lua',
    'client/client/cl_vestiaire.lua'
}

server_script {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'server/server.lua'
}


shared_scripts {
    "shared/config.lua",
}
fx_version 'cerulean'
name 'cosmo_hud'
description 'cosmo_hud for fivem, uses library from loading.io'
ui_page 'html/ui.html'
author 'CosmoKramer'
game 'gta5'

shared_script '@es_extended/imports.lua'

files {
    'html/ui.html',
    'html/script.js',
    'html/style.css',
    'html/loading-bar.js',
}


client_scripts {
    'client.lua',
    'config.lua'
}

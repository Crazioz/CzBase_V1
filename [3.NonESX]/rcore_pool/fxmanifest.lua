fx_version 'bodacious'
game 'gta5'

description 'TEB pool'

version '1.2.0'

client_scripts {
    'config.lua',
    'client/*.lua',
}

server_scripts { 
    'config.lua',
    'server/run.lua',
}

ui_page('client/html/sound.html')

files {
    'client/html/sound.html',
    'client/html/*.ogg',
}
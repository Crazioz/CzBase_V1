-- Resource Metadata
fx_version 'cerulean'
games { 'gta5' }

author 'Night'
description 'Vehicle Locks'
version '1.0.0'
lua54 'yes'

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

shared_scripts {
    'config/*.lua',
}

-- dependency 'xsound'

escrow_ignore {
    'config/*.lua',
    'client/*.lua',
    'server/*.lua'
}
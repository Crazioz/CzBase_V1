fx_version 'adamant'
game 'gta5'
lua54 'yes'

files({
	'data/**/carcols.meta',
	'data/**/carvariations.meta',
	'data/**/contentunlocks.meta',
	'data/**/handling.meta',
	'data/**/vehiclelayouts.meta',
	'data/**/vehicles.meta'
})

shared_script '@ox_lib/init.lua'


data_file('CONTENT_UNLOCKING_META_FILE')('data/**/contentunlocks.meta')
data_file('HANDLING_FILE')('data/**/handling.meta')
data_file('VEHICLE_METADATA_FILE')('data/**/vehicles.meta')
data_file('CARCOLS_FILE')('data/**/carcols.meta')
data_file('VEHICLE_VARIATION_FILE')('data/**/carvariations.meta')
data_file('VEHICLE_LAYOUTS_FILE')('data/**/vehiclelayouts.meta')


client_scripts {
	'scripts/**/client.lua',
}	

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'scripts/**/server.lua',
}

files {
	'handling.meta',
	'popgroups.ymt'
}

data_file 'FIVEM_LOVES_YOU_4B38E96CC036038F' 'calmped/events.meta'
data_file 'HANDLING_FILE' 'handling.meta'
data_file 'FIVEM_LOVES_YOU_341B23A2F0E0F131' 'popgroups.ymt'
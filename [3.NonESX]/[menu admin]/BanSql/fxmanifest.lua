fx_version 'adamant'

game 'gta5'

version '1.1'

server_scripts {
	'@async/async.lua',
	'@oxmysql/lib/MySQL.lua',
	'config.lua',
	'server/function.lua',
	'server/main.lua'
}

client_scripts {
  'client.lua'
}

dependencies {
	'async'
}

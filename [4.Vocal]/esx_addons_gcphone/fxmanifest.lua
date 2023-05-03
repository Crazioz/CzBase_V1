game 'common'
fx_version 'adamant'

shared_script '@es_extended/imports.lua'

client_script {
	"client.lua"
}

server_script {
	'@mysql-async/lib/MySQL.lua',
	"server.lua"
}
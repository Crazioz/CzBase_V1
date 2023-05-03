fx_version 'adamant'

game 'gta5'

shared_script '@es_extended/imports.lua'

description 'esx Identity reskined by Mosheba @ https://discord.gg/ezxg9eXXPp'

version '1.2.0'

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/fr.lua',
	'config.lua',
	'server/main.lua',
	'server/logs.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'config.lua',
	'client/main.lua'
}

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/script.js',
	'html/style.css'
}

dependency 'es_extended'


exports {
  'openRegistry'
}

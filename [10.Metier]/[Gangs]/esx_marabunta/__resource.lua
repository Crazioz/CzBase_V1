resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Gang Job'

version '1.0.1'

shared_script '@es_extended/imports.lua'

server_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'locales/fr.lua',
  '@mysql-async/lib/MySQL.lua',
  'config.lua',
  'server/main.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'config.lua',
  'client/main.lua'
}

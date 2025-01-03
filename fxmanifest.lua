fx_version 'cerulean'
game 'gta5'

author 'RoninDevelopment'
description 'Grocery Store Script for QBCore'
version '1.0.0'

shared_script 'shared/items.lua'

client_scripts {
    'client/main.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua', -- Only if you're using a database
    'server/main.lua',
}

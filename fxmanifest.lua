fx_version 'cerulean' -- Ensure you're using the correct fx_version
game 'gta5'

author 'RoninDevelopment'
description 'Grocery Store Script'
version '1.0.0'

-- Dependencies
dependencies {
    'qb-core',   -- QBCore framework
    'qb-target', -- qb-target for interaction zones
    'qb-menu'    -- qb-menu for UI menus
}

-- Client Script
client_scripts {
    'client/main.lua'
}

-- Server Script
server_scripts {
    'server/main.lua' -- If you use a server-side script for purchases
}

-- Shared Script (optional)
shared_scripts {
    'shared/items.lua' -- If you define shared items or constants
}
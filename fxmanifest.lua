fx_version 'cerulean'
game 'gta5'

description 'North Yankton Enabled'
version '1.0.0'

lua54 'yes'

this_is_a_map 'yes'

shared_scripts { 
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

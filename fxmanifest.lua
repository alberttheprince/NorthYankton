fx_version 'cerulean'
game 'gta5'

description 'North Yankton Enabled'
version '1.0.0'

dependencies {
    'bob74_ipl',
    '/onesync'
}

lua54 'yes'

this_is_a_map 'yes'

shared_scripts { 
    'config.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

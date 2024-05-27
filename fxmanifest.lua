fx_version 'cerulean'
game 'gta5'
author 'Marttins & Slayn | MT Scripts'
description 'Advance StoreRobbery'
lua54 'yes'


shared_script {
    'shared/*.lua',
    '@ox_lib/init.lua',
}

client_scripts{
    'client/*.lua'
}

server_scripts{
    'server/*.lua'
}

files {
    'locales/*.json',
}
ox_lib 'locale' 
fx_version 'cerulean'

game 'gta5'

author 'mt scripts'

description 'mt-storerobbery'

lua54 'yes'

version '0.1'

shared_script {
    "shared/**",
    '@ox_lib/init.lua',
}

client_scripts{
    'client.lua',
    'targets.lua',
}

server_scripts{
    'server.lua',
}

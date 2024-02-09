fx_version 'adamant'

game 'gta5'


shared_scripts {
    "config/*.lua",
}

client_scripts {
    "client/module/handler/module_handler.lua",
	"client/module/modules/*.lua",
    "client/module/modules/ui_native_pages/*.lua",
}

dependencies {
    "qb-core"
}

server_scripts {
    "server.lua",
  --  "config/*.lua",
 }
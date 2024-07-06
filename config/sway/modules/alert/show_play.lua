#!/usr/bin/lua

io.popen("lua ~/.config/sway/modules/alert/alert_play.lua")
local a = ("#!/usr/bin/lua\n")
local b = ('io.popen("lua ~/.config/sway/modules/alert/show_playlist.lua")')
vol = io.open(".config/sway/modules/alert/alert_play_ch.lua", "w")
vol:write(a, b)
vol:close()


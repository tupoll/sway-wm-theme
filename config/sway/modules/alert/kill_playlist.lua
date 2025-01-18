#!/usr/bin/lua
local function kil() io.popen("pkill -f waybar")end
kil()
local function menubar() io.popen("fish -c menubar")end
menubar()
local a = ("#!/usr/bin/lua\n")
local b = ('io.popen("lua ~/.config/sway/modules/alert/show_playlist.lua")')
vol = io.open(".config/sway/modules/alert/alert_play_ch.lua", "w")
vol:write(a, b)
vol:close()

#!/usr.bin/lua
local function kil() os.execute('killall waybar')end
local function menubar() os.execute('exec waybar -c $HOME/.config/sway/menubar/config &') end
kil()
menubar()
------waybar-----
local a = ("#!/usr/bin/lua\n")
local b = ("local function kil(sway) os.execute('killall waybar')end\n")
local c = ("local function waybar(sway) os.execute('lua $HOME/.config/sway/modules/waybar.lua')end\n")
local d = ('kil()\n')
local e = ('waybar()')
vol = io.open(".config/sway/modules/bar_ch.lua", "w")
vol:write(a, b, c, d, e)
vol:close()

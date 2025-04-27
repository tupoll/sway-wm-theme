#!/usr.bin/lua
cmd1 = string.format("killall %s", "ironbar")
cmd2 = string.format("waybar %s", "-c $HOME/.config/sway/menubar/config")

io.popen(cmd1)
io.popen(cmd2)
------waybar-----
local a = ("#!/usr/bin/lua\n")
local b = ("local function kil(sway) os.execute('killall waybar')end\n")
local c = ("local function waybar(sway) os.execute('lua $HOME/.config/sway/modules/ironbar.lua')end\n")
local d = ('kil()\n')
local e = ('waybar()')
vol = io.open(".config/sway/modules/bar_ch.lua", "w")
vol:write(a, b, c, d, e)

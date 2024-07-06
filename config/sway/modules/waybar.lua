#!/usr/bin/lua
local function kil(sway) os.execute("killall waybar")end
local function waybar(sway) os.execute("exec waybar &")  end
kil() 
waybar()
------menubar-----
local a = ("#!/usr/bin/lua\n")
local b = ('local function kil(sway) os.execute("killall waybar")end\n')
local c = ("local function menubar() os.execute('lua $HOME/.config/sway/modules/menubar.lua') end\n")
local d = ('kil()\n')
local e = ('menubar()')
vol = io.open(".config/sway/modules/bar_ch.lua", "w")
vol:write(a, b, c, d, e)
vol:close()

#!/usr/bin/lua
cmd1 = string.format("killall %s", "waybar")
cmd2 = string.format("exec %s", "ironbar")

io.popen(cmd1)
io.popen(cmd2)

------menubar-----
local a = ("#!/usr/bin/lua\n")
local b = ('local function kil(sway) os.execute("killall ironbar")end\n')
local c = ("local function menubar() os.execute('lua $HOME/.config/sway/modules/menubar.lua') end\n")
local d = ('kil()\n')
local e = ('menubar()')
vol = io.open(".config/sway/modules/bar_ch.lua", "w")
vol:write(a, b, c, d, e)

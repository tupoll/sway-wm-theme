#!/usr/bin/lua

local a = ("alt")
vol = io.open("/var/tmp/wm/layout", "w")
vol:write(a)
vol:close()
cmd1 = string.format("exec %s", "$HOME/.config/sway/modules/tags/layouts/alternating_layouts.py")
cmd2 = string.format("lua %s", "$HOME/.config/sway/modules/tags/layouts/show_layout.lua")

io.popen(cmd1)
io.popen(cmd2)

local b = ('#!/usr/bin/lua\n')
local c = ('local function kil() io.popen("lua $HOME/.config/sway/modules/tags/layouts/layout_alt_kil.lua")end\n')
local d = ('kil()')
change = io.open(".config/sway/modules/tags/layouts/layout_alt_ch.lua", "w")
change:write(b, c, d)

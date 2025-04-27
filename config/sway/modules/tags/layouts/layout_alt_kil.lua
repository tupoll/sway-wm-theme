#!/usr/bin/lua
local d = ("alt off")
vol = io.open("/var/tmp/wm/layout", "w")
vol:write(d)
vol:close()

cmd1 = string.format("pkill %s", "-f $HOME/.config/sway/modules/tags/layouts/alternating_layouts.py")
cmd2 = string.format("lua %s", "$HOME/.config/sway/modules/tags/layouts/show_layout.lua")

io.popen(cmd1)
local a = ('#!/usr/bin/lua\n')
local b = ('local function alt() io.popen("lua $HOME/.config/sway/modules/tags/layouts/layout_alt.lua")end\n')
local c = ('alt()')
vol = io.open(".config/sway/modules/tags/layouts/layout_alt_ch.lua", "w")
vol:write(a, b, c)
vol:close()
io.popen(cmd2)

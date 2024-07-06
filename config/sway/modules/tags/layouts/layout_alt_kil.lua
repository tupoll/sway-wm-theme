#!/usr/bin/lua
local d = ("alt off")
vol = io.open("/var/tmp/sway/layout", "w")
vol:write(d)
vol:close()

local function pkill() io.popen("pkill -f $HOME/.config/sway/modules/tags/layouts/alternating_layouts.py")end
pkill()
local a = ('#!/usr/bin/lua\n')
local b = ('local function alt() io.popen("lua $HOME/.config/sway/modules/tags/layouts/layout_alt.lua")end\n')
local c = ('alt()')
vol = io.open(".config/sway/modules/tags/layouts/layout_alt_ch.lua", "w")
vol:write(a, b, c)
vol:close()

local function show() io.popen("lua $HOME/.config/sway/modules/tags/layouts/show_layout.lua")end
show()

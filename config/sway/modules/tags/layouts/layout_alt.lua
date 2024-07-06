#!/usr/bin/lua

local a = ("alt")
vol = io.open("/var/tmp/sway/layout", "w")
vol:write(a)
vol:close()
local function alt() io.popen("$HOME/.config/sway/modules/tags/layouts/alternating_layouts.py")end
alt()
local function show() io.popen("lua $HOME/.config/sway/modules/tags/layouts/show_layout.lua")end
show()
local b = ('#!/usr/bin/lua\n')
local c = ('local function kil() io.popen("lua $HOME/.config/sway/modules/tags/layouts/layout_alt_kil.lua")end\n')
local d = ('kil()')
change = io.open(".config/sway/modules/tags/layouts/layout_alt_ch.lua", "w")
change:write(b, c, d)
change:close()

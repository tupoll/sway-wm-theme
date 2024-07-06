#!/usr/bin/lua
function layout() os.execute("fish -c layout_splith") end
layout()
os.execute("fish -c print_layout")
local a = ("#!/usr/bin/lua\n")
local b = ('function start() os.execute("lua .config/sway/modules/tags/layouts/cmd/layout_2.lua") end\n')
local c = ('start()')

vol = io.open(".config/sway/modules/tags/layouts/cmd/layout_ch.lua", "w")
vol:write(a, b, c)
vol:close()

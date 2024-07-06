#!/usr/bin/lua
function start() os.execute("fish -c layout_toggle") end
start()
os.execute("fish -c print_layout")
local d = ("#!/usr/bin/lua\n")
local e = ('function start() os.execute("lua .config/sway/modules/tags/layouts/cmd/layout_5.lua") end\n')
local f = ('start()')

vol = io.open(".config/sway/modules/tags/layouts/cmd/layout_ch.lua", "w")
vol:write(d, e, f)
vol:close()


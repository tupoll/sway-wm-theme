#!/usr/bin/lua
cmd1 = string.format("sway %s", "layout stacking")
io.popen(cmd1)

local a = ("stacking")
vol = io.open("/var/tmp/wm/layout", "w")
vol:write(a)

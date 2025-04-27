#!/usr/bin/lua
cmd1 = string.format("sway %s", "layout toggle")
io.popen(cmd1)

local a = ("toggle")
vol = io.open("/var/tmp/wm/layout", "w")
vol:write(a)

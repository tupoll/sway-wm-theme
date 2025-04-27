#!/usr/bin/lua
cmd1 = string.format("sway %s", "layout splitv")
io.popen(cmd1)

local a = ("splitv")
vol = io.open("/var/tmp/wm/layout", "w")
vol:write(a)

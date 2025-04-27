#!/usr/bin/lua
cmd1 = string.format("sway %s", "layout tabbed")
io.popen(cmd1)

local a = ("tabbed")
vol = io.open("/var/tmp/wm/layout", "w")
vol:write(a)

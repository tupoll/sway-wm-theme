#!/usr/bin/lua
cmd1 = string.format("sway %s", "layout splith")
io.popen(cmd1)
local a = ("splith")
vol = io.open("/var/tmp/wm/layout", "w")
vol:write(a)

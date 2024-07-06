#!/usr/bin/lua
local function layout() io.popen("sway layout toggle &")end

layout()
local a = ("toggle")
vol = io.open("/var/tmp/sway/layout", "w")
vol:write(a)
vol:close()

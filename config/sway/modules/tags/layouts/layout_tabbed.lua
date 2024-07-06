#!/usr/bin/lua

local function layout() io.popen("sway layout tabbed &")end

layout()
local a = ("tabbed")
vol = io.open("/var/tmp/sway/layout", "w")
vol:write(a)
vol:close()

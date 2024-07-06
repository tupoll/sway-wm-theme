#!/usr/bin/lua

local function layout() io.popen("sway layout stacking &")end

layout()
local a = ("stacking")
vol = io.open("/var/tmp/sway/layout", "w")
vol:write(a)
vol:close()

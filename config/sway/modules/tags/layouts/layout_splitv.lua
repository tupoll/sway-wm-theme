#!/usr/bin/lua

local function layout() io.popen("sway layout splitv &")end

layout()
local a = ("splitv")
vol = io.open("/var/tmp/sway/layout", "w")
vol:write(a)
vol:close()

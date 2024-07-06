#!/usr/bin/lua

local function layout() io.popen("sway layout splith &")end

layout()

local a = ("splith")
vol = io.open("/var/tmp/sway/layout", "w")
vol:write(a)
vol:close()

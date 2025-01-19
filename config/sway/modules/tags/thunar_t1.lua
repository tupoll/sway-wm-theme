#!/usr/bin/lua

local function tag(sway) io.popen("fish -c tag1")end 
local function thunar() io.popen("thunar")end
tag()
thunar()

#!/usr/bin/lua

local function tag(sway) os.execute("fish -c tag3")end 
--local function layout() os.execute("sway layout tabbed &") end
local function thunar() os.execute("thunar &")end
tag()
thunar()
--layout()

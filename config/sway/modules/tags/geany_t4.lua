#!/usr/bin/lua

local function tag(sway) os.execute("fish -c tag4")end 

local function geany() os.execute("geany &")end
tag()
geany()

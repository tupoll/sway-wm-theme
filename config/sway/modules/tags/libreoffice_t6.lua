#!/usr/bin/lua

local function tag(sway) os.execute("fish -c tag6")end 
local function layout() os.execute("sway layout stacking")end
local function libreoffice() os.execute("libreoffice &")end
tag()
libreoffice()
layout()

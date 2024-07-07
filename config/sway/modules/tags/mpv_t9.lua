#!/usr/bin/lua

local function tag(sway) os.execute("fish -c tag9")end 
local function layout() os.execute("sway layout splith")end
local function mpv() os.execute("mpv ")end
tag()
mpv()
layout()

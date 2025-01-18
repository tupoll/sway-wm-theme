#!/usr/bin/lua

local function play() os.execute("~/tmp/sox/play")end
          
local a = ("#!/bin/fish\n")
local b = ('mkdir -p ~/tmp/sox\n')
local c = ("cp -R ~/tmp/playlist ~/tmp/sox/playlist\n")
local d = ("cat ~/tmp/sox/playlist |sed '1d'|  /usr/bin/awk '{print $0}'>~/tmp/playlist\n")
local e = ('head -n 1 ~/tmp/sox/playlist | tail -n1 >~/tmp/sox/name\n')
local f = ("cat ~/tmp/sox/name>>~/tmp/playlist1\n")
local g = ("cat ~/tmp/playlist | cut -c27-100>/var/tmp/sway/playlist\n")
local h = ("set A $(cat ~/tmp/sox/name |  /usr/bin/awk '{print $0}')\n")
local i = ("play $A rate -v 48000 bass +15 treble +12\n")
local j = ("chmod 755 ~/tmp/sox/play \n")
local k = ("~/tmp/sox/play")
vol = io.open("tmp/sox/play", "w")
vol:write(a, b, c, d, e, f, g, h, i, j, k)
vol:close()
play()                                      

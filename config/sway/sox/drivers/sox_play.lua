#!/usr/bin/lua

local function play() os.execute("~/tmp/sox/play")end
          
local a = ("#!/bin/fish\n")
local b = ('mkdir -p ~/tmp/sox\n')
local c = ("cp -R ~/tmp/playlist ~/tmp/sox/playlist\n")
local d = ("cat ~/tmp/sox/playlist |sed '1d'|  /usr/bin/awk '{print $0}'>~/tmp/playlist\n")
local e = ('head -n 1 ~/tmp/sox/playlist | tail -n1 >~/tmp/sox/name\n')
local j = ("cat ~/tmp/sox/name>>~/tmp/playlist1\n")
local f = ("set A $(cat ~/tmp/sox/name |  /usr/bin/awk '{print $0}')\n")
local h = ("play $A rate -v 48000 bass +15 treble +12\n")
local l = ("chmod 755 ~/tmp/sox/play \n")
local p = ("~/tmp/sox/play")
vol = io.open("tmp/sox/play", "w")
vol:write(a, b, c, d, e, j, f, h, l, p)
vol:close()
play()                                      

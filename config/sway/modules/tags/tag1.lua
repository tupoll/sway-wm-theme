#!/usr/bin/lua
local function tag_1(sway) os.execute("sway workspace 1️⃣ fm && setwallpaper /var/tmp/sway/pictures/tag1.jpg &")end 
local function layout1() os.execute("fish -c layout_tabbed") end
                                                                                    
tag_1()       
layout1()

local a = ("tag 1")
vol = io.open("/var/tmp/sway/tag", "w")
vol:write(a)
vol:close()

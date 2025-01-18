#!/usr/bin/lua
local function tag_1(sway) os.execute("sway workspace  0️⃣   my && setwallpaper /var/tmp/sway/pictures/tag0.jpg &")end 
local function layout1() os.execute("fish -c layout_splith") end
                                                                                    
tag_1()       
layout1()
local a = ("tag 0")
vol = io.open("/var/tmp/sway/tag", "w")
vol:write(a)
vol:close()

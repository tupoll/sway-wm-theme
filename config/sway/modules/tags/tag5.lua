#!/usr/bin/lua
local function tag_1(sway) os.execute("sway  workspace 5️⃣ gimp && setwallpaper /var/tmp/sway/pictures/tag5.jpg &")end 
local function layout1() os.execute("fish -c layout_stacking") end
                                                                                    
tag_1()       
layout1()
local a = ("tag 5")
vol = io.open("/var/tmp/sway/tag", "w")
vol:write(a)
vol:close()

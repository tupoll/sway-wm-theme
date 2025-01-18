#!/usr/bin/lua
local function tag_1(sway) os.execute("sway  workspace 3️⃣ work && setwallpaper /var/tmp/sway/pictures/tag3.jpg &")end 
local function layout1() os.execute("fish -c layout_splith") end
                                                                                    
tag_1()       
layout1()
local a = ("tag 3")
vol = io.open("/var/tmp/sway/tag", "w")
vol:write(a)
vol:close()


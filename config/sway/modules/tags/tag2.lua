local res = os.getenv("HOME") .. "/.config/sway/modules/sway/pictures/"


local tags = os.getenv("HOME") .. "/.config/sway/modules/tags"

local function tag_2(sway) os.execute("sway  workspace 2️⃣ browser && setwallpaper /var/tmp/sway/pictures/tag2.jpg &")end 
local function layout1() os.execute("fish -c layout_tabbed") end
                                                                                   
tag_2()       
layout1()
local a = ("tag 2")
vol = io.open("/var/tmp/sway/tag", "w")
vol:write(a)
vol:close()

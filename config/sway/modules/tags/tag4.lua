

local res = os.getenv("HOME") .. "/.config/sway/modules/sway/pictures/"


local tags = os.getenv("HOME") .. "/.config/sway/modules/tags"

local function tag_1(sway) os.execute("sway  workspace 4️⃣ editor && setwallpaper /var/tmp/sway/pictures/tag4.jpg &")end 
local function layout1() os.execute("fish -c layout_splitv") end
                                                                                    
tag_1()       
layout1()
local a = ("tag 4")
vol = io.open("/var/tmp/sway/tag", "w")
vol:write(a)
vol:close()

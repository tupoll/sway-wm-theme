

local res = os.getenv("HOME") .. "/.config/sway/modules/sway/pictures/"


local tags = os.getenv("HOME") .. "/.config/sway/modules/tags"

local function tag_1(sway) os.execute("sway  workspace 7️⃣ ssh && setwallpaper $HOME/.config/sway/pictures/tag7.jpg &")end 
local function layout1() os.execute("fish -c layout_stacking") end
                                                                                    
tag_1()       
layout1()
local a = ("tag 7")
vol = io.open("/var/tmp/sway/tag", "w")
vol:write(a)
vol:close()

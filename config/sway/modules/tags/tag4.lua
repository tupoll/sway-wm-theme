#!/usr/bin/lua
local i = ("4️⃣ editor")
vol = io.open("/var/tmp/wm/tag", "w")
vol:write(i)

cmd1 = string.format("sway %s", "workspace 4️⃣ editor")  
cmd2 = string.format("setwallpaper %s", "/var/tmp/wm/pictures/tag4.jpg")
cmd3 = string.format("fish -c %s", "layout_splitv")
io.popen(cmd1) 
io.popen(cmd2)
io.popen(cmd3)

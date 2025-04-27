#!/usr/bin/lua
local i = ("7️⃣ ssh")
vol = io.open("/var/tmp/wm/tag", "w")
vol:write(i)

cmd1 = string.format("sway %s", "workspace 7️⃣ ssh")  
cmd2 = string.format("setwallpaper %s", " /var/tmp/wm/pictures/tag7.jpg")
cmd3 = string.format("fish -c %s", "layout_stacking")
io.popen(cmd1)
io.popen(cmd2)
io.popen(cmd3)

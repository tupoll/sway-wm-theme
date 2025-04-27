#!/usr/bin/lua
local i = ("0️⃣   my")
vol = io.open("/var/tmp/wm/tag", "w")
vol:write(i)

cmd1 = string.format("sway %s", "workspace  0️⃣   my")  
cmd2 = string.format("setwallpaper %s", "/var/tmp/wm/pictures/tag0.jpg")
cmd3 = string.format("fish -c %s", "layout_splith")
io.popen(cmd1)
io.popen(cmd2)
io.popen(cmd3)

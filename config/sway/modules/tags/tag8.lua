#!/usr/bin/lua
local i = ("8️⃣ media")
vol = io.open("/var/tmp/wm/tag", "w")
vol:write(i)

cmd1 = string.format("sway %s", "workspace ️8️⃣ media")  
cmd2 = string.format("setwallpaper %s", " /var/tmp/wm/pictures/tag8.jpg")
cmd3 = string.format("fish -c %s", "layout_stacking")
io.popen(cmd1)
io.popen(cmd2)
io.popen(cmd3)

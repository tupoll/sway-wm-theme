#!/usr/bin/lua
local i = ("1️⃣  fm")
vol = io.open("/var/tmp/wm/tag", "w")
vol:write(i)

cmd1 = string.format("sway %s", "workspace 1️⃣  fm")  
cmd2 = string.format("setwallpaper %s", " /var/tmp/wm/pictures/tag1.jpg")
cmd3 = string.format("fish -c %s", "layout_tabbed")
io.popen(cmd1)
io.popen(cmd2)
io.popen(cmd3)

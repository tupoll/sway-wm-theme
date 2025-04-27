#!/usr/bin/lua
local i = ("5️⃣ gimp")
vol = io.open("/var/tmp/wm/tag", "w")
vol:write(i)

cmd1 = string.format("sway %s", "workspace 5️⃣ gimp")  
cmd2 = string.format("setwallpaper %s", " /var/tmp/wm/pictures/tag5.jpg")
cmd3 = string.format("fish -c %s", "layout_tabbed")
io.popen(cmd1)
io.popen(cmd2)
io.popen(cmd3)

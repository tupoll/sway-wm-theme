#!/usr/bin/lua
local i = ("️6️⃣ office️")
vol = io.open("/var/tmp/wm/tag", "w")
vol:write(i)

cmd1 = string.format("sway %s", "workspace ️6️⃣ office")  
cmd2 = string.format("setwallpaper %s", " /var/tmp/wm/pictures/tag6.jpg")
cmd3 = string.format("fish -c %s", "layout_tabbed")
io.popen(cmd1)
io.popen(cmd2)
io.popen(cmd3)

#!/usr/bin/lua
local i = ("9️⃣  iptv")
vol = io.open("/var/tmp/wm/tag", "w")
vol:write(i)

cmd1 = string.format("sway %s", "workspace 9️⃣  iptv")  
cmd2 = string.format("setwallpaper %s", " /var/tmp/wm/pictures/tag9.jpg")
cmd3 = string.format("fish -c %s", "layout_splith")
io.popen(cmd1)
io.popen(cmd2)
io.popen(cmd3)

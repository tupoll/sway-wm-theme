#!/usr/bin/lua

cmd1 = string.format("sway %s", "layout tabbed")
cmd2 = string.format("setwallpaper %s", "/var/tmp/wm/pictures/tag1.jpg")
cmd3 = string.format("exec %s", "thunar")

io.popen(cmd1)
io.popen(cmd2)
io.popen(cmd3)

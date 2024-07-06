#!/usr/bin/lua
io.popen("pkill -f mako")
io.popen("lua $HOME/.config/sway/modules/alert/cmd/alert_time.lua")
#!/usr/bin/lua
io.popen("pkill -f nwg-wrapper")
io.popen("lua $HOME/.config/sway/modules/alert/cmd/alert_time.lua")

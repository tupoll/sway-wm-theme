#!/usr/bin/lua
io.popen("lua $HOME/.config/sway/modules/alert/alert_time.lua")
local a = ("#!/usr/bin/lua\n")
local b = ('io.popen("lua $HOME/.config/sway/modules/alert/cmd/alert_date.lua")\n')
local c = ('io.popen("pkill -f nwg-wrapper && pkill -f alert_time ")')
vol = io.open(".config/sway/modules/alert/alert_date_ch.lua", "w")
vol:write(a, c, b)
vol:close()

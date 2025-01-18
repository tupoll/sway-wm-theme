#!/usr/bin/lua
os.execute('pkill -f $HOME/.config/sway/modules/alert/alert_time.lua')
io.popen("lua $HOME/.config/sway/modules/alert/alert_date.lua")
local a = ("#!/usr/bin/lua\n")
local b = ('io.popen("lua $HOME/.config/sway/modules/alert/cmd/alert_date_kil.lua ")')
local c = ('io.popen("pkill -f nwg-wrapper && pkill -f alert_date")')
vol = io.open(".config/sway/modules/alert/alert_date_ch.lua", "w")
vol:write(a, c, b)
vol:close()

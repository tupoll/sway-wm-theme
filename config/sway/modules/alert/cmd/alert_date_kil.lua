#!/usr/bin/lua
local a = ("#!/usr/bin/lua\n")
local b = ('io.popen("pkill -f nwg-wrapper")\n')
local c = ('io.popen("lua $HOME/.config/sway/modules/alert/cmd/alert_time.lua")')

vol = io.open(".config/sway/modules/alert/alert_date_ch.lua", "w")
vol:write(a, b, c)
vol:close()
os.execute('pkill -f $HOME/.config/sway/modules/alert/alert_date.lua')
os.execute('pkill -f $HOME/.config/sway/modules/alert/alert_time.lua')
os.execute('pkill -f nwg-wrapper')

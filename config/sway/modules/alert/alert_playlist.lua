#!/usr/bin/lua
local function kil() io.popen('pkill -f nwg-wrapper')end
kil()
local function playlist() os.execute('exec waybar -c $HOME/.config/sway/playbar/config -s $HOME/.config/sway/playbar/style.css &') end;
playlist()

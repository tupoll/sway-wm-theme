#!/usr/bin/lua
local function kil(sway) os.execute('killall waybar')end
local function waybar(sway) os.execute('lua $HOME/.config/sway/modules/waybar.lua')end
kil()
waybar()
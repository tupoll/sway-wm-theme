#!/usr/bin/lua

local function kil() os.execute('pkill -f mako')end ;
local function a() io.popen("cat ~/tmp/playlist | cut -c27-100>/var/tmp/sway/playlist2")end
kil()
a()

local a = ("font=SF Pro Display Medium 15\n")
local b = ('background-color=#D8393900\n')
local c = ("text-color=#7F7F7F\n")
local d = ("width=600\n")
local e = ('height=10000\n')
local f = ("padding=10\n")
local g = ("margin=10\n")
local h = ("progress-color=over #674FD4\n")
local i = ("border-size=0\n")
local j = ("border-color=#5294e200\n")
local k = ("[urgency=high]\n")
local l = ("default-timeout=10000\n")
local m = ("ignore-timeout=0")
vol = io.open(".config/mako/config", "w")
vol:write(a, b, c, d, e, f, g, h, i, j, k, l, m)
vol:close()

local function playlist() os.execute('notify-send "$(lua $HOME/.config/sway/modules/alert/playlist.lua)"') end;
playlist()


local n = ("font=UbuntuMono 13.5\n")
local o = ('background-color=#080815\n')
local p = ("text-color=#7F7F7F\n")
local q = ("width=400\n")
local r = ('height=300\n')
local s = ("padding=10\n")
local t = ("margin=10\n")
local u = ("progress-color=over #674FD4\n")
local v = ("layer=overlay\n")
local w = ("border-size=1\n")
local dd =("border-radius=10\n")
local x = ("border-color=#3B1515\n")
local y = ("[urgency=high]\n")
local z = ("max-icon-size=70\n")
local aa = ("default-timeout=8000\n")
local bb = ("icon-path=/usr/share/icons/Yaru-blue\n")
local cc = ("ignore-timeout=1")
str = io.open(".config/mako/config", "w")
str:write(n, o, p, q, r, s, t, u, bb, z, v, w, dd, x, aa, y, cc)
str:close()
local uv = require('luv')

function set_timeout(timeout, callback)
  local timer = uv.new_timer()
  local function ontimeout()
    uv.timer_stop(timer)
    uv.close(timer)
    callback()
  end
  uv.timer_start(timer, timeout, 0, ontimeout)
  return timer
  end      

set_timeout(15000, function() kil() end)   
uv.run(timer)        


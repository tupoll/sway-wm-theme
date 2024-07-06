#!/usr/bin/lua

--local uv = require('luv')
local function kil() os.execute('pkill -f mako')end ; 
kil()

local a = ("font=SF Pro Display Medium 18\n")
local b = ('background-color=#D8393900\n')
local c = ("text-color=#7F7F7F\n")
local d = ("width=500\n")
local e = ('height=300\n')
local f = ("padding=40\n")
local g = ("margin=10\n")
local h = ("progress-color=over #674FD4\n")
local i = ("border-size=0\n")
local j = ("border-color=#5294e200\n")
local k = ("[urgency=high]\n")
local l = ("default-timeout=10000\n")
local m = ("ignore-timeout=1")
vol = io.open(".config/mako/config", "w")
vol:write(a, b, c, d, e, f, g, h, i, j, k, l, m)
vol:close()

local function show() os.execute('notify-send "$( notify-send "Сегодня" "$(~/.config/sway/modules/alert/date-wttr.sh )")"') end;

-------------------------------------------------
local uv = require('luv')
--local timer = uv.new_timer()
-- Creating a simple setTimeout wrapper
local function setTimeout(timeout, callback)
  local timer = uv.new_timer()
  timer:start(timeout, 0, function ()
    timer:stop()
    timer:close()
    callback()
  end)
  return timer
end
setTimeout(1, function() show() end)
---Creating a simple setInterval wrapper
local function setInterval(interval, callback)
  local timer = uv.new_timer()
  timer:start(interval, interval, function ()
    callback()
  end)
  return timer
end
setInterval(300000,  function() show() end) --30 min

local function kilInterval(interval, callback)
  local timer = uv.new_timer()
  timer:start(interval, interval, function ()
    callback()
  end)
  return timer
end

kilInterval(295000,  function() kil() end)

-- And clearInterval
local function clearInterval(timer)
local timer = uv.new_timer()
  timer:stop()
  timer:close()
  
end
clearInterval(uv.run(timer))

-------------------------------------------------------------------------------------

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

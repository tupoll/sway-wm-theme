#!/usr/bin/lua
local alert = require("alert")

local function kil() os.execute('pkill -f mako')end ; 
kil()

local a = ("font=SF Pro Display Medium 16\n")
local b = ('background-color=#D8393900\n')
local c = ("text-color=#C4AE19\n")
local d = ("width=915\n")
local e = ('height=200\n')
local f = ("padding=10\n")
local g = ("margin=10\n")
local h = ("progress-color=over #674FD4\n")
local i = ("anchor=center\n")
local j = ("border-size=0\n")
local k = ("border-color=#5294e200\n")
local l = ("[urgency=high]\n")
local dd = ("default-timeout=8000\n")
local m = ("ignore-timeout=0")
vol = io.open(".config/mako/config", "w")
vol:write(a, b, c, d, e, f, g, h, i, j, k, dd, l, m)
vol:close()

local msg_ctr = {}
function readfile(filename)
  local file = io.open(filename, "r")
  if file == nil then
    return
  end
  local str = file:read("a")
  file:close()
  return str
end

local str = readfile([[tmp/sox/name]])

local alert_3 = alert(nil, {
   default_arg_colors = "yellow/transpert",
  default_arg_title = "Назад :",
   terminal = 'notify-send'
})

local function mkdir() os.execute("mkdir -p ~/tmp/sox")end
local function cpdir() os.execute("cp -R ~/tmp/playlist1 ~/tmp/sox/playlist1")end
local function rdir() os.execute("cat ~/tmp/sox/playlist1 |sed '1d'|  /usr/bin/awk '{print $0}'>~/tmp/playlist1")end
local function hdir() os.execute("head -n 1 ~/tmp/sox/playlist1 | tail -n1 >~/tmp/sox/name")end
--local function chdir() os.execute("cat ~/tmp/sox/name>>~/tmp/playlist")end
 
mkdir()
cpdir()
rdir()
hdir()
--chdir()
alert_3("🎼" ..str)

local uv = require('luv')

function set_timeout(timeout, callback)
  local timer = uv.new_timer()
  local function ontimeout()
    uv.timer_stop(timer)
    uv.close(timer)
    callback()
  end
  uv.timer_start(timer, timeout, 20000, ontimeout)
  return timer
  end      

set_timeout(3000, function() kil() end)       
uv.run()        

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

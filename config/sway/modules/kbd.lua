#!/usr/bin/lua
function a() os.execute("swaymsg -t get_inputs -r | rg 'xkb_active_layout_name' --engine=auto | awk '{print $2}'>/var/tmp/sway/kbd")end
a()
 local file = ("/var/tmp/sway/kbd") 
  local t= {}
  for line in io.lines(file) do 
    t[#t+ 1] = line
  end

local results = string.gmatch(t[1], "En")
for w in results  do
   print(w)
end
local results = string.gmatch(t[1], "Ru")
for x in results  do
    print(x)
end
--[[
local function f() io.popen("pkill -SIGRTMIN+2 waybar")end
f()
--]]

#!/usr/bin/lua
cmd1 = string.format("swaymsg %s", "-t get_inputs -r | rg 'xkb_active_layout_name' --engine=auto | awk '{print $2}'>/var/tmp/wm/kbd")
io.popen(cmd1)

 local file = ("/var/tmp/wm/kbd") 
  local t= {}
  for line in io.lines(file) do 
    t[#t+ 1] = line
  end

local results = string.gmatch(t[1], "En")
for w in results  do
   --print("us")
   print("🇺🇸")
end
local results = string.gmatch(t[1], "Ru")
for x in results  do
    --print("ru")
    print("🇷🇺")
end

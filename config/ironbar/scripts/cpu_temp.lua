#!/usr/bin/lua
local file = ("/sys/class/thermal/thermal_zone0/temp") 
  local t= {}
 for line in io.lines(file) do 
    t[#t+ 1] = line
  end 
  
w = string.sub (t[1], 0, 2)

local results = string.gmatch(t[1], w)
local a =("°C")

for w in results  do
   print(w,a)
end

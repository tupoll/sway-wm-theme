#!/usr/bin/lua

local file = ("/var/tmp/wm/layout") 
  local t= {}
  for line in io.lines(file) do 
    t[#t+ 1] = line
  end

local results = string.gmatch(t[1], t[1])
for w in results  do
   print(w)
end

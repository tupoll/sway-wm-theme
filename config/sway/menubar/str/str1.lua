#!/usr/bin/lua
local file = ("/var/tmp/wm/tag") 
  local t= {}
  for line in io.lines(file) do 
    t[#t+ 1] = line
  end

local results = string.gmatch(t[1], "1")
for w in results  do
   print("🏠")
end

print(" ")

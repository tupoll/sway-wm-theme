#!/usr/bin/lua
local file = ("/var/tmp/wm/playlist") 
  local t= {}
  for line in io.lines(file) do 
    t[#t+ 1] = line
  end
local b = {t[11]}

for key, value in pairs(b) do
    print( value)
end

#!/usr/bin/lua
local file = ("/var/tmp/wm/playlist") 
  local t= {}
  for line in io.lines(file) do 
    t[#t+ 1] = line
  end
local b = {t[1], t[2], t[4], t[5], t[6], t[7], t[8], t[9], t[10], t[11], t[12], t[13], t[14], t[15], t[16], t[17], t[18], t[19], t[20], t[21]}

for key, value in pairs(b) do
    print(key, value)
end

#!/usr/bin/lua

function a() io.popen("amixer sget A2DP | awk '{print $5}'>/var/tmp/sway/volume ")end
a()

 local file = ("/var/tmp/sway/volume") 
  local t= {}
  for line in io.lines(file) do 
    t[#t+ 1] = line
    end
   
local vol = string.gmatch(t[7], "%d+")
for w in vol  do 
   print(w)  
end

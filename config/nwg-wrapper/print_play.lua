#!/usr/bin/lua
            
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

print(str)

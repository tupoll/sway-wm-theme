function readfile(filename)
  local file = io.open(filename, "r")
  if file == nil then
    return
  end

  local str = file:read("a")
  file:close()

  return str
end

local str = readfile([[/var/tmp/wm/tag]])

print(str)

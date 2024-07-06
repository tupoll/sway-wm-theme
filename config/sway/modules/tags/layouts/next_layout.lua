#!/usr/bin/lua
--local function splitv()io.popen('fish -c layout_splitv')end
--splitv()
-- Opens a file in append mode
file = io.open("test.lua", "w")
local b =("local function splitv()io.popen('fish -c layout_splitv')end\n")
-- appends a word test to the last line of the file
file:write(b)

-- closes the open file
file:close()

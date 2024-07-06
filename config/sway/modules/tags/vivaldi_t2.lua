#!/usr/bin/lua
local function tag_2(sway) os.execute("fish -c tag2")end 
local function layout1() os.execute("sway layout tabbed &") end
 local function vivaldi() os.execute("vivaldi &")end                                                                                  
tag_2()       
layout1()
vivaldi()

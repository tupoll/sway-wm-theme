#!/usr/bin/lua
local function show() io.popen('nwg-wrapper -s date.sh -r 1000 -c date.css -p right -mr 50 -a start -mt 50 -j right --layer 3') end;
show()

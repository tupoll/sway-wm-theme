#!/usr/bin/lua
local function show() os.execute('nwg-wrapper -s date-wttr.sh -r 1000 -c date.css -p right -mr 50 -a start -mt 100 -j right --layer 3') end;
show()

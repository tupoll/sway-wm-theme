#!/usr/bin/lua
local function kil() io.popen('sleep 2 && pkill -f nwg-wrapper')
return kil
end
local  function layout() io.popen('nwg-wrapper -s layout.sh -r 500 -c timezones.css -p center -mr 50 -a start -mt 500 -j center --layer 3')
return layout
end
kil()
layout(kil)

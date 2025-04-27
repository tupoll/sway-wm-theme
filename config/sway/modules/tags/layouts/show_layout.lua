#!/usr/bin/lua
cmd1 = string.format("sleep %s", "2 && pkill -f nwg-wrapper")
cmd2 = string.format("nwg-wrapper %s", "-s layout.sh -r 500 -c timezones.css -p center -mr 50 -a start -mt 500 -j center --layer 3")

io.popen(cmd1)
io.popen(cmd2)

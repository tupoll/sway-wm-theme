#!/bin/fish
set time $(LC_ALL=ru_RU.UTF-8 TZ='Asia/Vladivostok' date +'%H:%M:%S')
#set time $(lua ~/data.lua)
echo '<span size="25000" foreground="#998000" face="monospace" weight="bold">Владивосток '$time'</span>'

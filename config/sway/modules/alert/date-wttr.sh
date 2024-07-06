#!/bin/fish

set date $(LC_ALL=ru_RU.UTF-8 TZ='Asia/Vladivostok' date +'%A, %d. %B')
set  wttr $(curl 'https://wttr.in/?format=1')
echo '<span size="35000" foreground="#998000">'$date'</span><span size="30000" foreground="#ccc">'
echo $wttr'</span>'

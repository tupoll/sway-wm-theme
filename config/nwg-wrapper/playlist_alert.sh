#!/bin/fish
set playlist $(lua /home/$USER/.config/nwg-wrapper/playlist.lua)
echo '<span size="15000" foreground="#5B3090" face="monospace" weight="bold">'$playlist'</span>'

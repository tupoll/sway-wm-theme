#!/bin/fish
set play $(lua /home/$USER/.config/nwg-wrapper/print_play.lua)
echo '<span size="15000" foreground="#CED413" face="monospace" weight="bold">'$play'</span>'



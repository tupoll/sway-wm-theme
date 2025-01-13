#!/bin/fish
set layout $(lua $HOME/.config/sway/modules/tags/layouts/print_layout.lua)
echo '<span size="45000" foreground="#998000" face="monospace" weight="bold">layout '$layout'</span>'


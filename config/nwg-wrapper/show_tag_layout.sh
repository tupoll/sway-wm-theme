#!/bin/fish
set tag $(print_tag)
set layout $(print_layout)
echo '<span size="18000" foreground="#98CFE1">'$tag'</span><span size="18000" foreground="#98CFE1">'
echo "layout" $layout'</span>'

Configuration of sway-wm with workspace and window management in awesome-wm style,
 while the use of shell fish is mandatory.
Installation script for deb.-like systems.
### Install

```bash
git clone https://github.com/tupoll/sway-wm-theme.git ~/.sway-wm-theme
cd ~/.sway-wm-theme
chomd +x install.sh
./install.sh
```

For the timer to work, as well as for connecting ssh (or other)
the luv library from luarocks is taken.
Install version lua5.4 from here:
```
 https://www.lua.org/download.html
``` 
luarocks:
```
  https://luarocks.org/#quick-start
```
##install:
```
sudo luarocks install luasocket
sudo luarocks install luasec
sudo luarocks install luv
```
Or install locally:
```
luarocks config local_by_default true
luarocks install luasocket --local
luarocks install luv --local
```
Copy the alert.lua file to your lua directory:
``
sudo cp -rv /home/$USER/.sway-wm-theme/alert.lua /usr/local/lib/lua/5.4/
``
or /usr/lib/lua/5.4/ ,...another version of lua.

Temporary sway files in the directory /var/tmp/sway
give user rights:
```
sudo chown -R <username>:<usergroup> /var/tmp/sway
```
In the file ~/.config/sway/modules/alert/date-wttr.sh we rewrite the city
to our own.
HOTKEYS:
```
Win=mod4
Control=ctrl
Alt=alt
Binding	Action
Ctrl + 0  tag0 ...ctrl + 9 tag0...tag9 
Ctrl + Space panel change
Ctrl + f thunar
Ctrl + e geany
Ctrl + o	libreoffice
Ctrl + w  vivaldi
Ctrl + i iptv(mpv)
Ctrl + t  telegram
Ctrl + s  screenshot
Ctrl + Space	Cycle to the next layout--------
CtrlShift + Space	Cycle to the previous layout----
Ctrl + 1 to 5	Switch to tag 1 to 5
CtrlShift + 1 to 5	Toggle tag 1 to 5
Ctrl + Right	workspace  next
Ctrl + Left   workspace  prev
mod4 + Enter  foot
mod4 + Right  
mod4 + Space	Cycle to the next layout
mod4 + f  fullscreen
mod4 + q  wofi
mod4 + Left  focus window left
mod4 + Right focus window right
mod4 + F1  pavucontrol
mod4 + F2  sound volume -
mod4 + F3  sound volume +
mod4 + F4  mute
mod4 + F5  back play
mod4 + F6  next play
mod4 + F7  play
mod4 + F8  stop
mod4 + F9  Playlist all 
mod4 + F10 Playlist thunar
alt  + d Date and weather
alt  + x Play,playlist
alt  + r Reboot
alt  + e Exit sway
alt  + p Power off
alt  + Space Alternating layout
```
For other hotkeys, see sway/config.

Built and running on Linux distribution based on Debian armv7
ARMBIAN

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
For notification, the utility on gtk3 mwg-wrapper is used, install this:

```
git clone https://github.com/nwg-piotr/nwg-wrapper.git
cd nwg-wrapper
sudo python3 setup.py install --optimize=1
```

On deb distributions, the go version does not allow you to build wallutils with a script
therefore removed, replace with any other viewer, for example
https://github.com/GhostNaN/mpvpaper
and change the lines in tag*.lua to this construction:
```
local funtion kil() os.execute("pkill -f mpvpaper")end
local function tag_1(sway) os.execute("sway workspace 1️⃣ fm && mpvpaper '*'  /var/tmp/sway/pictures/tag1.jpg &")end 
local function layout1() os.execute("fish -c layout_tabbed") end

kil()                                                                                   
tag_1()       
layout1()

local a = ("tag 1")
vol = io.open("/var/tmp/sway/tag", "w")
vol:write(a)
vol:close()
```

Temporary sway files in the directory /var/tmp/sway
give user rights:
```
sudo chown -R <username>:<usergroup> /var/tmp/sway
```
In the file ~/.config/sway/modules/alert/date-wttr.sh we rewrite the city
to our own.
Please remove from the environment: sudo apt remove sway-notification-center
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
Gentoo linux:
I give an example of the configuration of my portage for raspberry pi5.

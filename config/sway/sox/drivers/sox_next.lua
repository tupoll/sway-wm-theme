#!/usr/bin/lua
local function mkdir() os.execute("mkdir -p ~/tmp/sox")end
local function cpdir() os.execute("cp -R ~/tmp/playlist ~/tmp/sox/playlist")end
local function rdir() os.execute("cat ~/tmp/sox/playlist |sed '1d'|  /usr/bin/awk '{print $0}'>~/tmp/playlist")end
local function hdir() os.execute("head -n 1 ~/tmp/sox/playlist | tail -n1 >~/tmp/sox/name")end
local function chdir() os.execute("cat ~/tmp/sox/name>>~/tmp/playlist")end
local function stop() os.execute("fish -c sox_stop")end
local function play() os.execute("fish -c sox_play")end
local function playlist() os.execute('exec waybar -c $HOME/.config/sway/playbar/config -s $HOME/.config/sway/playbar/style.css &')end 
mkdir()
cpdir()
rdir()
hdir()
chdir()
stop()
play()
playlist()

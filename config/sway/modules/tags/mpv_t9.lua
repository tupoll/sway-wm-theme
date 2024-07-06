#!/usr/bin/lua

local function tag(sway) os.execute("fish -c tag9")end 
local function layout() os.execute("sway layout splith")end
local function mpv() os.execute("mpv http://ec106815c7b8.zatikov.net/playlists/uplist/fc78243accca2f9c39fe17efcb486b25/playlist.m3u8 &")end
tag()
mpv()
layout()

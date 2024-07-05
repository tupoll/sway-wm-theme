function sox_playlist --wraps='lua $HOME/.config/sway/sox/playlist_status.lua' --description 'alias sox_playlist lua $HOME/.config/sway/sox/playlist_status.lua'
  lua $HOME/.config/sway/sox/playlist_status.lua $argv
        
end

function sox_playlist_back --wraps='lua $HOME/.config/sway/sox/playlist_back_status.lua' --description 'alias sox_playlist_back lua $HOME/.config/sway/sox/playlist_back_status.lua'
  lua $HOME/.config/sway/sox/playlist_back_status.lua $argv
        
end

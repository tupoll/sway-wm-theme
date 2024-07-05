function sox_list --wraps='lua $HOME/.config/sway/sox/playlist.lua' --description 'alias sox_list lua $HOME/.config/sway/sox/playlist.lua'
  lua $HOME/.config/sway/sox/playlist.lua $argv
        
end

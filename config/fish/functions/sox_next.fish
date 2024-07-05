function sox_next --wraps='pkill -f play && lua $HOME/.config/sway/sox/drivers/sox_play.lua' --wraps='lua $HOME/.config/sway/sox/drivers/sox_next.lua' --description 'alias sox_next lua $HOME/.config/sway/sox/drivers/sox_next.lua'
  lua $HOME/.config/sway/sox/drivers/sox_next.lua $argv
        
end

function sox_play --wraps='lua $HOME/.config/sway/sox/drivers/sox_play.lua' --wraps='lua $HOME/.config/sway/sox/drivers/play_alert.lua' --wraps='lua ~/.config/sway/sox/drivers/sox_play.lua' --description 'alias sox_play lua ~/.config/sway/sox/drivers/sox_play.lua'
  lua ~/.config/sway/sox/drivers/sox_play.lua $argv
        
end

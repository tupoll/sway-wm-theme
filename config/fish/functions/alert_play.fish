function alert_play --wraps='lua $HOME/.config/sway/modules/alert/alert_play.lua' --wraps=$HOME/.config/sway/modules/alert/alert_play_ch.lua --wraps='lua $HOME/.config/sway/modules/alert/alert_play_ch.lua' --description 'alias alert_play lua /home/tupoll/.config/sway/modules/alert/alert_play_ch.lua'
  lua $HOME/.config/sway/modules/alert/alert_play_ch.lua $argv
        
end

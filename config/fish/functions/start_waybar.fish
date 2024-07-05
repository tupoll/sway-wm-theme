function start_waybar --wraps='lua $HOME/.config/sway/modules/waybar.lua' --description 'alias start_waybar lua $HOME/.config/sway/modules/waybar.lua'
  lua $HOME/.config/sway/modules/waybar.lua $argv
        
end

function print_kbd --wraps='lua $HOME/.config/sway/kbd.lua' --wraps='lua $HOME/.config/sway/modules/kbd.lua' --description 'alias print_kbd lua $HOME/.config/sway/modules/kbd.lua'
  lua $HOME/.config/sway/modules/kbd.lua $argv
        
end

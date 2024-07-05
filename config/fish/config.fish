if status is-interactive
    # Commands to run in interactive sessions can go here
end
  
set LANGUAGE ru_RU.UTF-8
set LANG ru_RU.UTF-8
set LC_MESSAGES ru_RU.UTF-8
set LC_CTYPE ru_RU.UTF-8
set LC_NUMERIC ru_RU.UTF-8
set LC_TIME ru_RU.UTF-8
set LC_COLLATE ru_RU.UTF-8
set LC_MONETARY ru_RU.UTF-8
set LC_MESSAGES ru_RU.UTF-8
set LC_PAPER ru_RU.UTF-8
set LC_NAME ru_RU.UTF-8
set LC_ADDRESS ru_RU.UTF-8
set LC_TELEPHONE ru_RU.UTF-8
set LC_MEASUREMENT ru_RU.UTF-8
set LC_IDENTIFICATION ru_RU.UTF-8
set LC_ALL ru_RU.UTF-8

set PATH $HOME/.local/src/node-v18.16.1-linux-x64/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.local/bin:$HOME/.local/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

set XDG_SESSION_TYPE wayland
set XDG_SESSION_DESKTOP sway
set XDG_CURRENT_DESKTOP sway

## Default programs:
set EDITOR "nano"
set TERMINAL "foot"
set BROWSER "vivaldi"
set FMGR "thunar"
#set MESA_GLSL_VERSION_OVERRIDE 320
#set MESA_GL_VERSION_OVERRIDE 3.2COMPAT


###Должно быть в конце файла
# Start X(wayland) at login
#if status is-login
#    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#        exec sway -- -keeptty
#    end
#end

#[ ! "$UID" = "0" ] && neofetch
#[  "$UID" = "0" ] && neofetch

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
     [ ! "$UID" = "0" ] && exec sway  
    end
end

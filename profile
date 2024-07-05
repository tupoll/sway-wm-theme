# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
#if [ -n "$BASH_VERSION" ]; then
#    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#	. "$HOME/.bashrc"
#    fi
#fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
## Script and binaries
export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.local/src/node-v18.16.1-linux-x64/bin:$PATH"

# Session
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=sway
export XDG_CURRENT_DESKTOP=sway
export MOZ_ENABLE_WAYLAND="1" # Firefox smooth scrolling

## Default programs:
export EDITOR="nano"
export TERMINAL="foot"
export BROWSER="vivaldi"
export FMGR="thunar"

## Clean up $HOME
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
#export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
#export ZPLUGDIR="$HOME/.local/src/zsh_plugins"
export TMUX_CONFIG_DIR="$XDG_CONFIG_HOME/tmux"

## Other program settings:
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export QT_QPA_PLATFORMTHEME="qt5ct" # Use QT on wayland/hyprland

## Autostart sway session
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec sway
fi

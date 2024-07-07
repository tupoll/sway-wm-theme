#!/bin/sh

cd ~/

### Sway packages
sudo apt install -y sway waybar swaylock swayidle swaybg libinput-dev python-i3ipc
sudo apt install -y gvfs-backends

### File manager (thunar)
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

### Terminal
sudo apt install -y foot

###
sudo apt install -y mtools dosfstools acpi acpid avahi-daemon
sudo systemctl enable acpid
sudo systemctl enable avahi-daemon

### Polkit
# sudo apt install -y policykit-1-gnome # (doesn't work on wayland; @debian)
sudo apt install -y polkit-kde-agent-1

### Network Manager
sudo apt install -y network-manager network-manager-gnome 

### Volume and brightness utilities
sudo apt install -y light pamixer

### Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pulsemixer

### Launcher and notification daemon
sudo apt install -y wofi mako-notifier wob libnotify-bin suckless-tools vim
### Bisa juga pakai mako-notifier tapi swaync lebih better

### Clipboard manager
sudo apt install -y  clipman

### Redshift replacement for wayland
sudo apt install -y wlsunset

### Screenshot stuff

sudo apt install -y grim grimshot slurp imagemagick  wl-clipboard

# Build wl-color-picker
[ ! -d "~/.stuff/" ] && mkdir -p ~/.stuff && cd ~/.stuff
git clone https://github.com/jgmdev/wl-color-picker
cd wl-color-picker
sudo make install

#Install lua luarocks luasocket
sudo apt install -y lua5.4 liblua5.4-dev
printf "\e[1;32m* About luarocks separately read README.md\e[0m\n"

sudo apt install -y meson ninja-build libcairo2-dev pango1.0-tools libgtk-3-dev libglib2.0-0 scdoc

# Build nwg-look
sudo apt install -y golang
sudo apt install -y libglib2.0-dev
sudo apt install -y libcairo2-dev
sudo apt install -y libwebkit2gtk-4.0-dev
# sudo apt install -y libcairo-gobject2 # sudah include sama yg atas?
git clone https://github.com/nwg-piotr/nwg-look
cd nwg-look
make build # (take long time)
sudo make install

# Build wallutils
sudo apt install -y git imagemagick libx11-dev libxcursor-dev libxmu-dev libwayland-dev libxpm-dev xbitmaps libxmu-headers libheif-dev make
git clone https://github.com/xyproto/wallutils
    cd wallutils
    make
sudo make PREFIX=/usr/local install
#####
sudo apt install -y wf-recorder

sudo apt install -y wayland-protocols xwayland 
sudo apt install -y libgtk-layer-shell-dev # ?
sudo apt install -y xdg-desktop-portal-wlr
sudo apt install -y dex jq 
sudo apt install -y geany 
sudo apt install -y build-essential 
sudo apt install -y libpam0g-dev libxcb1-dev
xdg-user-dirs-update

### Microcode for Intel/AMD 
#sudo apt install -y amd64-microcode
# sudo apt install -y intel-microcode 

#### For GTK setting
#### using gsettings command
sudo apt install -y libglib2.0-bin

### it will also install adwaita icon
sudo apt install -y arc-theme

### PDF viewer
sudo apt install -y mupdf zathura

### Image viewer
sudo apt install -y mirage nsxiv

### Music/media player packages
sudo apt install -y sox libmp3lame0 libtwolame-dev twolame libmp3lame-dev mpv

### firefox dependencies (build instruction at the on of this script)
sudo apt install -y libdbus-glib-1-2

### Install ripgrep
sudo apt install -y ripgrep

### Application on keybindings
sudo apt install -y galculator trash-cli calcurse

### Fonts and icons for now
sudo apt install -y fonts-firacode fonts-liberation2
sudo apt install -y fonts-noto-color-emoji fonts-font-awesome

### Printing and bluetooth (if needed)
sudo apt install -y cups system-config-printer simple-scan
sudo apt install -y bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

### Neofetch/HTOP
sudo apt install -y neofetch htop

## Install fish and copy all config
sudo apt install -y fish fzf bc


### Copy config
cp -rv ~/.sway-wm-theme/config/* ~/.config
# of 'symlink' it

cd ~/
cp -rv ~/.sway-wm-theme/local/bin/ ~/.local/
mkdir -p ~/.local/share
cp -rv ~/.sway-wm-theme/local/share/* ~/.local/share/
cp -rv ~/.sway-wm-theme/profile ~/.profile
cp -rv ~/.sway-wm-theme/bashrc ~/.bashrc
chsh -s $(which fish) # change default shell
sudo mkdir -p /var/tmp/sway
sudo echo "tmpfs  /var/tmp/sway  tmpfs size=5M  0 0">>/etc/fstab

# Create thunar config to have 'open terminal here':
[ ! -d "~/.config/xfce4/" ] && mkdir -p ~/.config/xfce4
echo "TerminalEmulator=foot" > ~/.config/xfce4/helpers.rc
echo "TerminalEmulatorDismissed=true" >> ~/.config/xfce4/helpers.rc
# Thunar - edit - configure custom actions
# on 'open terminal here' - create keyboard shortcut (ex: F4)

# Install icon and theme
sudo tar -xf ~/.sway-wm-theme/icons/qogir-icon.tar.gz -C /usr/share/icons

sudo apt autoremove

# Права :
cd ~/.local/bin 
chmod 755 *
cd 
chmod 755 ~/.config/sway/preserve-layout-per-window.py
chmod 755 ~/.config/sway/modules/tags/layouts/layout.sh
chmod 755 ~/.config/sway/modules/tags/layouts/ch_layout.fish
chmod 755 ~/.config/sway/modules/tags/layouts/alternating_layouts.py
chmod 755 ~/.config/sway/modules/alert/date.sh
chmod 755 ~/.config/sway/modules/alert/date-wttr.sh

printf "\e[1;32m* All configurations copied\e[0m\n"
printf "\e[1;32m* Install icons and themes yourself, nwg-look to help\e[0m\n"
printf "\e[1;32m* Reboot! Thank you for your choice.\e[0m\n"


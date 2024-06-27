#!/bin/sh
# automatic script for quick deployment of a working environment

# install packages
sudo apt update && sudo apt install -y build-essential make gdb tcc nasm yasm fasm git patch man pkg-config tmux mc bc vim emacs nano mg micro ffmpeg dunst libsdl2-dev libx11-dev libxft-dev libxinerama-dev yt-dlp neofetch screenfetch cpufetch dillo netsurf-fb netsurf-gtk lynx htop btop schism curl wget cmatrix bb caca-utils mpv nethack-console crawl ninvaders xorg xterm tint groff mandoc debootstrap vrms gzip bzip2 lzip transmission transmission-cli irssi mutt pass nginx grafx2 busybox bash-completion feh

cd ~

# clone my repo
git clone https://github.com/i4k1/dotfiles

# removing git files
cd dotfiles
rm -rf .git
cd ..

# add aliases
cat ~/dotfiles/.bashrc >> ~/.bashrc
rm ~/dotfiles/.bashrc

mkdir suckless
cd suckless

# download and extract dwm and dmenu
wget https://dl.suckless.org/dwm/dwm-6.5.tar.gz
wget https://dl.suckless.org/tools/dmenu-5.3.tar.gz
tar xvf dwm-6.5.tar.gz
tar xvf dmenu-5.3.tar.gz

# patch, compile and install dmenu
cd dmenu-5.3
wget https://tools.suckless.org/dmenu/patches/highlight/dmenu-highlight-4.9.diff
patch < dmenu-highlight-4.9.diff
sudo make install clean
cd ..

# patch, add config, compile and install dwm 
cd dwm-6.5
wget https://dwm.suckless.org/patches/hide_vacant_tags/dwm-hide_vacant_tags-6.4.diff
patch < dwm-hide_vacant_tags-6.4.diff
rm config.h
cp ~/dotfiles/.config/config.h config.h
sudo make install clean
cd ..

# move configs and 
cd ~
mv ~/dotfiles/* ~/
rm -rf ~/dotfiles

echo "if [ -z \"\$DISPLAY\" ] && [ \"\$XDG_VTNR\" = 1 ]; then exec startx; fi" >> ~/.bash_profile
echo "exec ~/.local/bin/dwmstatus.sh && exec dwm" >> ~/.xinitrc

startx

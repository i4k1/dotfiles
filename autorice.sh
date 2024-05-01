#!/bin/sh
# automatic script for quick deployment of a working environment

# install packages
sudo apt update && sudo apt full-upgrade && sudo apt autoremove && sudo apt install build-essential make gdb tcc nasm yasm fasm git patch man pkg-config tmux mc bc vim emacs nano mg micro ffmpeg dunst libsdl2-dev libx11-dev libxft-dev libxinerama-dev yt-dlp neofetch screenfetch cpufetch dillo netsurf lynx htop btop schism curl wget cmatrix bb caca-utils mpv nethack-console crawl ninvaders xorg xterm tint groff mandoc debootstrap vrms gzip bzip2 lzip transmission transmission-cli irssi mutt pass nginx grafx2 busybox

#!/bin/sh
# automatic script for quick deployment of a working environment

# install packages
sudo apt update && sudo apt full-upgrade && sudo apt autoremove && sudo apt install build-essential git tmux mc bc vim emacs mg micro ffmpeg dunst

#!/bin/sh
# my simple autorice script for debian-based distros

# install packages
sudo apt update && sudo apt full-upgrade && sudo apt autoremove && sudo apt install build-essential git tmux mc bc vim emacs mg micro ffmpeg dunst

# Dotfiles

>[!WARNING]
>WORK IN PROGRESS

- some useful scripts in [`~/.local/bin/`](.local/bin)
- some [`bash aliases`](.bashrc)
- configs for:
  - [`vim`](.vimrc)
  - [`emacs`](.emacs)
  - [`micro`](.config/micro/settings.json)
  - [`tmux`](.config/tmux/tmux.conf)
  - [`gtk2`](.config/gtk-2.0/gtkrc-2.0) & [`gtk3`](.config/gtk-3.0/settings.ini)
  - [`awesome`](.config/awesome/rc.lua)
  - [`dunst`](.config/dunst/dunstrc)
  - [`dillo browser`](.dillo/dillorc)

[`yass.sh`](yass.sh) (**Y**et **A**nother **S**tupid **S**cript) - my own simple automated script to quickly deploy a comfy working environment for Debian (something like [LARBS](https://larbs.xyz/)). This script also automatically installs all the necessary software, packages, configs, scripts and dotfiles that I use.

**Installation:**
```sh
curl https://raw.githubusercontent.com/i4k1/dotfiles/main/yass.sh | sh
```

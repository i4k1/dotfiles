# == WORK IN PROGRESS ==
Much of what is here doesn't work. Work in progress...

![UNDER CONSTRUCTION](https://sabrina-online.com/underconst.gif)

# dotfiles
My configs, scripts and dotfiles.
- some useful scripls in [`~/.local/bin/`](.local/bin)
- some [`bash aliases`](.bashrc)
- configs for:
  - [`vim`](.vimrc)
  - [`micro`](.config/micro/settings.json)
  - [`tmux`](.config/tmux/tmux.conf)
  - [`gtk2`](.config/gtk-2.0/gtkrc-2.0) & [`gtk3`](.config/gtk-3.0/settings.ini)
  - [`dunst`](.config/dunst/dunstrc)
  - [`dillo browser`](.dillo/dillorc)

# autodeployment script
[`autodeploy.sh`](autodeploy.sh) - my own simple automated script to quickly deploy a comfy working environment for Debian-based distributions (something like [LARBS](https://larbs.xyz/), but simpler). This script automatically installs all the necessary software, packages, configs and scripts that I use.

Installation:
```sh
curl https://raw.githubusercontent.com/i4k1/dotfiles/main/autodeploy.sh | sh
```

**== WORK IN PROGRESS ==**

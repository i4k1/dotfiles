# .files

- some useful scripts in [`~/.local/bin/`](.local/bin)
  - [`dwmstatus`](.local/bin/dwmstatus.sh) - [status monitor](https://dwm.suckless.org/status_monitor) script for [dwm](https://dwm.suckless.org)
  - [`ffwebmenc`](.local/bin/ffwebmenc.sh) - script to encode videos in WebM VP9 using [ffmpeg](https://ffmpeg.org)
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

## suckless software
- dwm with patches ([config](.config/config.h)):
  - [`hide_vacant_tags`](https://dwm.suckless.org/patches/hide_vacant_tags/dwm-hide_vacant_tags-6.4.diff)
  - [`alwayscenter`](https://dwm.suckless.org/patches/alwayscenter/dwm-alwayscenter-20200625-f04cac6.diff)
  - [`fullgaps`](https://dwm.suckless.org/patches/fullgaps/dwm-fullgaps-6.4.diff)
  - [`systray`](https://dwm.suckless.org/patches/systray/dwm-systray-6.3.diff)
  - [`awesomebar`](https://dwm.suckless.org/patches/awesomebar/dwm-awesomebar-20230431-6.4.diff)
  - [`pertag`](https://dwm.suckless.org/patches/pertag/dwm-pertag-6.2.diff)
  - [`alpha`](https://dwm.suckless.org/patches/alpha/dwm-alpha-6.4.diff)
- dmenu with patches:
  - [`highlight`](https://tools.suckless.org/dmenu/patches/highlight/dmenu-highlight-20201211-fcdc159.diff)
  - [`alpha`](https://tools.suckless.org/dmenu/patches/alpha/dmenu-alpha-20230110-5.2.diff)
- slock witch patch:
  - [`message`](https://tools.suckless.org/slock/patches/message/slock-message-20191002-b46028b.diff)
- st witch patches:
  - [`alpha`](https://st.suckless.org/patches/alpha/st-alpha-20220206-0.8.5.diff)
  - [`selalph`](https://st.suckless.org/patches/selectionbg-alpha/st-selectionbg-alpha-0.8.2.diff)
  - [`delkey`](https://st.suckless.org/patches/delkey/st-delkey-20201112-4ef0cbd.diff)
  - scrollback
  - [`w3m`](https://st.suckless.org/patches/w3m/st-w3m-0.8.3.diff)
  - [`boxdraw`](https://st.suckless.org/patches/boxdraw/st-boxdraw_v2-0.8.5.diff)

# Yet Another Stupid Script

>[!WARNING]
>WORK IN PROGRESS

[`yass.sh`](yass.sh) - my own automated script to quickly deploy a comfy working environment for Debian (something like [LARBS](https://larbs.xyz/)). This script also automatically installs all the necessary software, packages, configs, scripts and dotfiles that I use.

## TODO:
- [ ] make the script work also in [Arch](https://archlinux.org), [Gentoo](https://gentoo.org), [Slackware](http://www.slackware.com)
- [ ] make configs more adapted for different distributions
- [ ] can install with debootstrap, pacstrap etc
- [ ] create and configure a new user
- [ ] make it little prettier

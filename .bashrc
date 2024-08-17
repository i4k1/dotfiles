
alias l="ls -alFh --group-directories-first --time-style=long-iso --color=always"
alias yt="yt-dlp --add-metadata -i"
alias yta="yt -x --audio-format mp3 -f bestaudio/best"

if [ -z \"\$DISPLAY\" ] && [ \"\$XDG_VTNR\" = 1 ]; then exec startx; fi

# 02-12-2023 i4k
# $HOME\Documents\PowerShell\Profile.ps1

function prompt { return "$([char]27)[91m[$([char]27)[93m$($env:USERNAME)$([char]27)[92m@$([char]27)[94m$($env:COMPUTERNAME) $([char]27)[95m$(get-location)$([char]27)[91m]$([char]27)[0m> " }

function YouTube-DLP { return yt-dlp -Option --add-metadata -i }
function YouTube-DLP-Audio { return yt -x --audio-format mp3 -f bestaudio/best }

New-Alias -Name yt -Value YouTube-DLP -Force
New-Alias -Name yta -Value YouTube-DLP-Audio -Force

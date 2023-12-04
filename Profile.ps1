# 04-12-2023 i4k
# $HOME\Documents\PowerShell\Profile.ps1

function tildehome ([string] $tildelocation) {
    if ($tildelocation.Contains($HOME)) {
        return $tilde-location.Replace($HOME, "~")
    } else {
        return $tildelocation
    }
}

function prompt {
    return "$([char]27)[96mPS $([char]27)[92m$($env:USERNAME)@$($env:COMPUTERNAME) $([char]27)[95m$(tildehome($(get-location)))$([char]27)[0m > "
}

function YouTube-DLP ([string]$YTVIDEOURLS) {
    return yt-dlp --add-metadata -i "$YTVIDEOURLS"
}

function YouTube-DLP-Audio ([string]$YTVIDEOURLS) {
    return yt-dlp --add-metadata -i -x --audio-format mp3 -f bestaudio/best "$YTVIDEOURLS"
}

New-Alias -Name yt -Value YouTube-DLP -Force
New-Alias -Name yta -Value YouTube-DLP-Audio -Force

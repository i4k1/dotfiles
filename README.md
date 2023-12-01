# rice
Конфиги, скрипты, дотфайлы 

## Красивый Prompt в PowerShell
```powershell
new-item -type file -path $profile -force
notepad $PROFILE
```
`$PROFILE`:
```powershell
function prompt { return "$([char]27)[31m[$([char]27)[93m$($env:USERNAME)$([char]27)[92m@$([char]27)[34m$($env:COMPUTERNAME) $([char]27)[95m$(get-location)$([char]27)[31m]$([char]27)[0m> " }
```

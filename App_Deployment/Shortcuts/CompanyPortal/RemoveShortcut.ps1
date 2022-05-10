#=============================================================================================================================
# Script Name:     Remove-Shortcut.ps1
# Description:     Will remove a shortcut on the desktop for The specified site or app
# Date: 2022/05/09 Bob Blinde
#=============================================================================================================================
#Manual Variables
$ShortcutName = "Company Portal"
#=========================================================================================================


$RunningAsSystem = $(whoami -user) -match "S-1-5-18"
if ($RunningAsSystem){
    $desktopDir = Join-Path -Path $env:PUBLIC -ChildPath "Desktop"
}else{
    $desktopDir=$([Environment]::GetFolderPath("Desktop"))
}

$destinationPath = "$desktopDir\$ShortcutName.lnk"

Remove-Item -Path $destinationPath -EA SilentlyContinue
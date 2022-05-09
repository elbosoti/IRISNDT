#=============================================================================================================================
# Script Name:     Create-Shortcut.ps1
# Description:     Will create a shortcut on the public desktop for The specified site or app
# Date: 2022/05/06 Bob Blinde
#=============================================================================================================================
#Manual Variables
$ShortcutName = "Norming"
$IconName = "norming.ico"
$ShortcutTargetPath = "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
$ShortcutArguments = "--app=https://norming.irisndt.com/ess"
#=========================================================================================================


$RunningAsSystem = $(whoami -user) -match "S-1-5-18"

if ($RunningAsSystem){
    $desktopDir = Join-Path -Path $env:PUBLIC -ChildPath "Desktop"
}else{
    $desktopDir=$([Environment]::GetFolderPath("Desktop"))
}

$destinationPath = "$desktopDir\$ShortcutName.lnk"

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($destinationPath)

if ($IconName){
    Copy-Item "icons" -Destination "C:\ISIT\Applications\icons" -Force -Recurse
    $IconFile = "C:\ISIT\Applications\icons\$IconName"
    $Shortcut.IconLocation = $IconFile
}

$Shortcut.TargetPath = $ShortcutTargetPath

if($ShortcutArguments){
    $Shortcut.Arguments = $ShortcutArguments
}
$Shortcut.Save()

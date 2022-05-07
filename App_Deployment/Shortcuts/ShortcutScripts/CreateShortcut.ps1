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

$desktopDir=$([Environment]::GetFolderPath("Desktop"))


if ($IconName){
    Copy-Item "icons" -Destination "C:\ISIT\Applications\icons" -Force -Recurse
}



#=============================================================================================================================
#
# Script Name:     Winget_Uninstall_App.ps1
# Description:     Will remove the application based on the -AppID parameter
# Date: 2022/04/29 Bob Blinde
#powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File Winget_Uninstall_App.ps1 -AppID VideoLAN.VLC
#=============================================================================================================================

# Define Variables
param([string] $AppID)


winget uninstall --id $AppID --accept-package-agreements --accept-source-agreements --silent
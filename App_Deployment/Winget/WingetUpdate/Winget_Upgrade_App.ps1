#=============================================================================================================================
#
# Script Name:     Winget_Update_App.ps1
# Description:     Will try and update the application based on the -AppID parameter
# Date: 2022/03/29 Bob Blinde
#powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File Winget_Upgrade_App.ps1 -AppID VideoLAN.VLC
#=============================================================================================================================

# Define Variables
param([string] $AppID)


winget upgrade --id $AppID --accept-package-agreements --accept-source-agreements --silent

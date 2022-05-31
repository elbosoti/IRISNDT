#=============================================================================================================================
#
# Script Name:     Winget_Install_App.ps1
# Description:     Will try and install the application based on the -AppID parameter
# Date: 2022/04/29 Bob Blinde
#powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File Winget_Install_App.ps1 -AppID VideoLAN.VLC
#=============================================================================================================================

# Define Variables
param([string] $AppID)

winget install --id $AppID --accept-package-agreements --accept-source-agreements --silent
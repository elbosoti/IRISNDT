#=============================================================================================================================
#
# Script Name:     Winget_Upgrade_Detection.ps1
# Description:     Will evaluate if the app is installed
# Date: 2022/04/26 Bob Blinde
#=============================================================================================================================

# Define Variables
$AppID = "VideoLAN.VLC"

try{
    $WingetResponse = winget list --id $AppID
    if($WingetResponse -like "*available*"){
        Write-Host "Not updated"
        exit 1
    }elseif ($WingetResponse -like "*$AppID*") {
        Write-Host "Success"
        exit 0
    }else{
        Write-Host "Not detected"
        exit 1
    }
}catch{
    exit 1
}

#=============================================================================================================================
#
# Script Name:     Winget_Install_Detection.ps1
# Description:     Will evaluate if the app is installed
# Date: 2022/05/05 Bob Blinde
#=============================================================================================================================

# Define Variables
$AppID = "TimKosse.FileZilla.Client"

try{
    $WingetResponse = winget list --id $AppID
    if ($WingetResponse -like "*$AppID*") {
        Write-Host "Success"
        exit 0
    }else{
        Write-Host "Not detected"
        exit 1
    }
}catch{
    exit 1
}

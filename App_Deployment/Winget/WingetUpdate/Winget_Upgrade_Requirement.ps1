#=============================================================================================================================
#
# Script Name:     Winget_Upgrade_Requirement.ps1
# Description:     Will decide whether app needs to be updated or not
# Date: 2022/04/26 Bob Blinde
#=============================================================================================================================

# Define Variables
$AppID = "VideoLan.VLC"

try{
    $WingetRespone = winget list --id $AppID
    if($WingetRespone -like "*available*"){
        return $true
    }else{
        return $false
    }
}catch{#Error encountered, return false
    return $false
}
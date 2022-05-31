try{
    winget -v
    Write-Host "Winget is working"
    exit 0
}catch{
    Write-Error "winget is not working"
    exit 1
}
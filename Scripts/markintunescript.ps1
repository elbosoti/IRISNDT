# The purpose of this script is to remove a registry folder if the URL property of the folder contains any entry of the $removeUrls
$removeUrls = @("https://ca-edm-sage.irisndt.com", "https://sage.irisndt.com")
$path = "Registry::HKEY_CURRENT_USER\Software\Microsoft\Workspaces\Feeds"
# Proceeds only if the $path exists
if(Test-Path $path)
{
    $feeds = Get-ChildItem -Path $path
    # Loop through each folder in the $path
    foreach($feed in $feeds){
        $feed
        # Get properties of the folder
        $feedProperties = Get-ItemProperty $feed.PSPath
        # Continue only if the URL property exists
        if($feedProperties.URL.Length -gt 0){
            $feedProperties.URL
            # Loop through each url to remove for comparison
            foreach($removeURL in $removeUrls){
                # If the URL contains any of the remove URL, remove the folder
                if($feedProperties.URL.toLower().Contains($removeURL)){
                    "Match found.  Removing this folder."
                    Remove-Item $feed.PSPath
                    break;
                }
            }
        }
    }
}
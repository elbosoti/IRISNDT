Shamelessly stolen from: https://tech.nicolonsky.ch/intune-create-desktop-shortcut/

Create and remediate desktop and start menu shortcuts with Microsoft Intune using Win32 app deployment. Because with OneDrive Known Folder Move the Desktop is not stored in the default user profile location we need to resolve it with the ```[Environment]::GetFolderPath("Desktop")``` method.

## Quick Overview


Parameters:
* -ShortcutTargetPath	    Target path for your shortcut (URL, UNC) (file/folder)
* -ShortcutDisplayName	    Display name without file ending
* [-PinToStart]	            Optional: Create start additional start menu shortcut
* [-IconFile]	            Optional: Custom icon file for the shortcut (URL, UNC)
* [-ShortcutArguments]	    Optional: Additional command line arguments for the shortcut
* [-WorkingDirectory]	    Optional: WorkingDirectory for the shortcut

# Personal Desktop:
install as user
* install:

%windir%\sysnative\windowspowershell\v1.0\powershell.exe -ExecutionPolicy Bypass -file "CreateDesktopIcon.ps1" -ShortcutTargetPath "cmd" -ShortcutDisplayName "cmd"
* uninstall:

%windir%\sysnative\windowspowershell\v1.0\powershell.exe -ExecutionPolicy Bypass -file "RemoveDesktopIcon.ps1" -ShortcutDisplayName "cmd"

# Public Desktop:
Install as system
* install:

%windir%\sysnative\windowspowershell\v1.0\powershell.exe -ExecutionPolicy Bypass -file "CreateDesktopIcon.ps1" -ShortcutTargetPath "cmd" -ShortcutDisplayName "cmd"

* uninstall:

%windir%\sysnative\windowspowershell\v1.0\powershell.exe -ExecutionPolicy Bypass -file "RemoveDesktopIcon.ps1" -ShortcutDisplayName "cmd"
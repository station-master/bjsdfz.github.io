Dim objSHA
Dim Shell
Set objSHA = CreateObject("Shell.Application")
Set Shell=WScript.CreateObject("WScript.Shell")
Shell.run "TASKKILL /f /im explorer.exe",0
objSHA.ToggleDesktop
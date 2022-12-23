# fsrm-extension-list-update
#### Extension list update on Windows Server Resource Manager
##### Dot this manually:
###### Install from GUI new Windows role FSRM
###### Add from FSRM new file type group "Anti-Ransomware File Groups" and add one extension there
###### Configure email settings in FSRM
##### Here comes in play automation and PowerShell script from code:
###### Place fsrm_extension_update.ps1+blacklist_include.txt+blacklist_exclude.txt in folder c:\scripts\
###### Then use task scheduler under system account to make extension list update

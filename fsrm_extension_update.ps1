# Created by github.com/piekuns
# 2022-06-17

# Downloads latest extensions
$request=(Invoke-WebRequest -Uri "https://fsrm.experiant.ca/api/v1/combined" -UseBasicParsing).content | convertfrom-json | % {$_.filters}

# Reading included extensions from text file
$list_include = Get-Content -Path "c:\scripts\blacklist_include.txt"
$request+=($list_include)

# Re-create included extensions for group "Anti-Ransomware File Groups"
set-FsrmFileGroup -name "Anti-Ransomware File Groups" -IncludePattern @($request)

# Reading excluded extensions from text file
$list_exclude = Get-Content -Path "c:\scripts\blacklist_exclude.txt"

# Re-create excluded extensions for group "Anti-Ransomware File Groups"
set-FsrmFileGroup -name "Anti-Ransomware File Groups" -ExcludePattern @($list_exclude)
$baseDir = pwd
$source = $baseDir
$target = 'D:\Scoop\buckets\twsihan'

#Write-Host $source

attrib $target -R /L
Remove-Item -Path $target -Recurse -Force | Out-Null
New-Item -Path $target -ItemType Junction -Value $source | Out-Null

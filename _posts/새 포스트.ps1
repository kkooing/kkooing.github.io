try {
    $blogLoot = Get-Content "..\blogLoot.txt"
    $fileDate = get-date -format 'yyyy-MM-dd-'
    $filePermalink = Read-Host $fileDate
    $fileName = "$blogLoot/_posts/$fileDate$filePermalink.md"
    New-Item -Path "$fileName" -ItemType file
'---
title:      ""
categories: []
tags:       []
toc: false
toc_sticky: false
header:
  teaser: 
last_modified_at: 
---' > "$fileName"
}
catch {
    pause
}
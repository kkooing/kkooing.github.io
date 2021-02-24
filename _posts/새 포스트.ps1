try {
    $blogLoot = Get-Content "..\blogLoot.txt"
    $fileDate = get-date -format 'yyyy-MM-dd-'
    $filePermalink = Read-Host $fileDate
    $fileName = "$blogLoot/_posts/$fileDate$filePermalink.md"
    $Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False

$content = '---
title:      ""
categories: []
tags:       []
toc: false
toc_sticky: false
header:
  teaser: 
last_modified_at: 
---'

    [System.IO.File]::WriteAllLines($fileName, $content, $Utf8NoBomEncoding)
}
catch {
    pause
}
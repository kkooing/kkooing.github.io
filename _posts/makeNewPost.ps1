New-Item -Path "$(get-date -format 'yyyy-MM-dd-')draft.md" -ItemType file
"---
title:      ''
categories: []
tags:       []
last_modified_at: 
---" > "$(get-date -format 'yyyy-MM-dd-')draft.md"
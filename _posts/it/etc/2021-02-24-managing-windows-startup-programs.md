---
title           : "윈도우 시작프로그램 관리"
tags            : [windows, startup, regedit]
last_modified_at: 2021-02-24T11:14:37+09:00
---

### 관리자 계정

`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run`
`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce`
`HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices`
`HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce`
`HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit`

`HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run`
`HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\RunOnce`

### 현재 유저

`HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run`
`HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce`
`HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServices`
`HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce`

`HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Windows`

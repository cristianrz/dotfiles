; Includes
; =======
#Include desktop-switch.ahk
#Include window-move.ahk

; Hotkeys
; =======

; [Ctrl + e] opens file explorer at home
#e::
    Run, C:\Users\%A_UserName%\, Max
return

; [Ctrl + t] opens terminal
#t::
    Run, "C:\tools\Cmder\Cmder.exe"
return

; [Ctrl + h] toggles hidden files
^h::
    MsgBox, Hidden Files Toggle Successful
    RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
    if HiddenFiles_Status = 2
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
    else
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
    WinGetClass, eh_Class, A
    Send, {F5}
return

; [Ctrl + Shift + q] closes current window
#+q::
    Send, {Alt down}{F4}{Alt up}
return

; [Win + f] puts window in full screen
#f::
    Send, {LWin down}{Up}{LWin up}
return

Alt & n::
    Send ñ
return

Alt & a::
    Send á
return

Alt & e::
    Send é
return

Alt & i::
    Send í
return

Alt & o::
    Send ó
return

Alt & u::
    Send ú
return

; Search in outlook
#IfWinActive, ahk_exe OUTLOOK.exe
^f::
    Send {Ctrl down}b{Ctrl up}
    Send {End}{Shift down}{Home}{Shift up}
return
#IfWinActive
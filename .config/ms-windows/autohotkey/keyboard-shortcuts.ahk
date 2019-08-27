Menu, Tray, Icon, C:\Users\%A_UserName%\.config\ms-windows\autohotkey\one.png   ;Changes menu tray ico

; ---------------
; Functionalities
; ---------------

; Disable Caps Lock
CapsLock::
Send {LWin down}{Tab}{LWin up}
return

!2::
Send {LWin down}s{LWin up}
return


; Disables alt F4
!F4::
return


~LWin Up::
return

~RWin Up::
return

; -------
; Hotkeys
; -------

; [Ctrl + e] opens file explorer at home
#e::
Run, C:\Users\%A_UserName%\, Max
return

; [Ctrl + h] toggles hidden files
^h::
MsgBox, Hidden Files Toggle Successful
RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
If HiddenFiles_Status = 2
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
Else
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
WinGetClass, eh_Class,A
send, {F5}
Return

; [Ctrl + Shift + q] closes current window
#+q::
Send {Alt down}{F4}{Alt up}
return

; [Win + Enter] opens terminal
LWin & Enter::
Run "C:\Users\%A_UserName%\AppData\Local\hyper\Hyper.exe", Max
return

; [Win + f] puts window in full screen
#f::
Send {LWin down}{Up}{LWin up}
return

; [Win + Space] opens Everything
#Space::
Run, C:\Program Files\Everything\Everything.exe , Max
return

; ----------
; Hotstrings
; ----------

::_n_::ñ

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


LWin & 1::
Menu, Tray, Icon, C:\Users\%A_UserName%\.config\ms-windows\autohotkey\one.png   ;Changes menu tray ico
if (desktop = 1){
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
} else if (desktop = 2){
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
} else if (desktop = 3){
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
} else if (desktop = 4){
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
}
desktop = 1
return

LWin & 2::
Menu, Tray, Icon, C:\Users\%A_UserName%\.config\ms-windows\autohotkey\two.png   ;Changes menu tray ico
if (desktop = 1){
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
} else if (desktop = 2){
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
} else if (desktop = 3){
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
} else if (desktop = 4){
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
}

desktop = 2
return

LWin & 3::
Menu, Tray, Icon, C:\Users\%A_UserName%\.config\ms-windows\autohotkey\three.png   ;Changes menu tray ico
if (desktop = 1){
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
} else if (desktop = 2){
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
} else if (desktop = 3){
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
} else if (desktop = 4){
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
}

desktop = 3
return

LWin & 4::
Menu, Tray, Icon, C:\Users\%A_UserName%\.config\ms-windows\autohotkey\four.png   ;Changes menu tray ico
if (desktop = 1){
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
} else if (desktop = 2){
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
} else if (desktop = 3){
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
} else if (desktop = 4){
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
}

desktop = 4
return

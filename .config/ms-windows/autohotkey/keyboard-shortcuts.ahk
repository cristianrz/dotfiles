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
Run, C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk, Max
return

; [Win + f] puts window in full screen
#f::
Send {LWin down}{Up}{LWin up}
return


; ----------
; Hotstrings
; ----------

Alt & n::
Send �
return

Alt & a::
Send �
return

Alt & e::
Send �
return

Alt & i::
Send �
return

Alt & o::
Send �
return

Alt & u::
Send �
return

; Moves windows with alt + drag

Alt & LButton::
CoordMode, Mouse  ; Switch to screen/absolute coordinates.
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
if EWD_WinState = 0  ; Only if the window isn't maximized 
    SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
return

EWD_WatchMouse:
GetKeyState, EWD_LButtonState, LButton, P
if EWD_LButtonState = U  ; Button has been released, so drag is complete.
{
    SetTimer, EWD_WatchMouse, off
    return
}
GetKeyState, EWD_EscapeState, Escape, P
if EWD_EscapeState = D  ; Escape has been pressed, so drag is cancelled.
{
    SetTimer, EWD_WatchMouse, off
    WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
    return
}

; Otherwise, reposition the window to match the change in mouse coordinates
; caused by the user having dragged the mouse:
CoordMode, Mouse
MouseGetPos, EWD_MouseX, EWD_MouseY
WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
SetWinDelay, -1   ; Makes the below move faster/smoother.
WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.
EWD_MouseStartY := EWD_MouseY
return

SetTitleMatchMode, 2

; Search in outlook
#IfWinActive, ahk_exe OUTLOOK.exe
^f::
  Send {Ctrl down}b{Ctrl up}
	Send {End}{Shift down}{Home}{Shift up}
Return
#IfWinActive 
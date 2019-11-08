#InstallKeybdHook
#Persistent
#HotkeyInterval,100
#NoEnv
SetKeyDelay, –1
SetTitleMatchMode, 2 ; Makes matching the titles easier
SendMode Input
SetWorkingDir %A_ScriptDir%

XButton1::
{
; put the hiding windows stuff here
WinMinimize, Firefox
WinMinimize, MSYS2
WinMinimize, PowerShell
WinMinimize, Notepad
WinActivate, Outlook
WinActivate, Word
WinActivate, VERSION
Return
}


XButton2::
{
; put the hiding windows stuff here
WinMinimize, Firefox
WinMinimize, MSYS2
WinMinimize, PowerShell
WinMinimize, Notepad
WinActivate, Outlook
WinActivate, Word
WinActivate, VERSION
Return
}
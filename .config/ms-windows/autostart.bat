@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Do you want to run startup programs? 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

if exist "C:\Program Files (x86)\Trend Micro\OfficeScan Client\PccNTMon.exe" (
	start /min "" "C:\Program Files (x86)\Trend Micro\OfficeScan Client\PccNTMon.exe"
)

if exist "C:\Program Files\Duplicati 2\Duplicati.GUI.TrayIcon.exe" (
	start /min "" "C:\Program Files\Duplicati 2\Duplicati.GUI.TrayIcon.exe"
)

if exist "C:\Program Files\pia_manager\pia_manager.exe" (
	start /min "" "C:\Program Files\pia_manager\pia_manager.exe"
)

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business 2016.lnk" (
	start /min "" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business 2016.lnk"
)

if exist "C:\Users\%USERNAME%\.config\ms-windows\autohotkey\keyboard-shortcuts.ahk" (
	start /min "" "C:\Users\%USERNAME%\.config\ms-windows\autohotkey\keyboard-shortcuts.ahk"
)

if exist "C:\Program Files\Private Internet Access\pia-client.exe" (
	start /min "" "C:\Program Files\Private Internet Access\pia-client.exe"
)

if exist "C:\Program Files\LGHUB\lghub.exe" (
	start /min "" "C:\Program Files\LGHUB\lghub.exe"
)

timeout 5

if exist "C:\Program Files\VeraCrypt\VeraCrypt.exe" (
	start "" "C:\Program Files\VeraCrypt\VeraCrypt.exe"
)

if exist "C:\Users\%USERNAME%\.config\ms-windows\autostart-assistant.ahk" (
	Start "" AutoHotkey.exe "C:\Users\%USERNAME%\.config\ms-windows\autostart-assistant.ahk"
)

:END
endlocal

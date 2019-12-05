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

if exist "C:\Users\%USERNAME%\.config\ms-windows\autohotkey\keyboard-shortcuts.ahk" (
	start /min "" "C:\Users\%USERNAME%\.config\ms-windows\autohotkey\keyboard-shortcuts.ahk"
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

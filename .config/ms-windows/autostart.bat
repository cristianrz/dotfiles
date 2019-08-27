@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Do you want to run startup programs? 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

if exist "C:\Program Files (x86)\AutoProxySwitcher\AutoProxySwitcher.exe" (
	start "" "C:\Program Files (x86)\AutoProxySwitcher\AutoProxySwitcher.exe"
)

if exist "C:\Program Files (x86)\Trend Micro\OfficeScan Client\PccNTMon.exe" (
	start "" "C:\Program Files (x86)\Trend Micro\OfficeScan Client\PccNTMon.exe"
)

if exist "C:\Program Files\Duplicati 2\Duplicati.GUI.TrayIcon.exe" (
	start "" "C:\Program Files\Duplicati 2\Duplicati.GUI.TrayIcon.exe"
)

if exist "C:\Program Files\Everything\Everything.exe" (
	start "" "C:\Program Files\Everything\Everything.exe"
)

if exist "C:\Program Files\pia_manager\pia_manager.exe" (
	start "" "C:\Program Files\pia_manager\pia_manager.exe"
)

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business 2016.lnk" (
	start "" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business 2016.lnk"
)

if exist "C:\Users\%USERNAME%\.config\ms-windows\autohotkey\keyboard-shortcuts.ahk" (
	start "" "C:\Users\%USERNAME%\.config\ms-windows\autohotkey\keyboard-shortcuts.ahk"
)

if exist "C:\Program Files\Private Internet Access\pia-client.exe" (
	start "" "C:\Program Files\Private Internet Access\pia-client.exe"
)

if exist "C:\Program Files\LGHUB\lghub.exe" (
	start "" "C:\Program Files\LGHUB\lghub.exe"
)

timeout 5

if exist "C:\Program Files\VeraCrypt\VeraCrypt.exe" (
	start "" "C:\Program Files\VeraCrypt\VeraCrypt.exe"
)

:END
endlocal

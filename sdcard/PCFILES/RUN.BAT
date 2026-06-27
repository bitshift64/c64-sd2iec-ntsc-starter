@echo off
title C64 SD2IEC NTSC downloader v13
set CARDROOT=%~d0\
echo Starting C64 SD2IEC NTSC downloader v13...
echo.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0DOWNLOAD.PS1"
echo.
echo Making FB first in the root directory for LOAD"*",8...
copy /Y "%~dp0BOOTFIRST.PS1" "%TEMP%\C64_BOOTFIRST.PS1" >nul
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%TEMP%\C64_BOOTFIRST.PS1" -RootArg "%CARDROOT%"
echo.
echo Finished. On the C64 try: LOAD"*",8 then RUN
echo.
pause

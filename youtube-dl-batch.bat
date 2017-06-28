@echo off
setlocal enabledelayedexpansion
set name=%1
for /f "tokens=*" %%a in ('type %name%') do (
set line=%%a
youtube-dl !line!
)
pause

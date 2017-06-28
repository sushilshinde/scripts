@echo off
setlocal enabledelayedexpansion
for /f "tokens=*" %%a in ('type list.txt') do (
set line=%%a
youtube-dl !line!
)
pause
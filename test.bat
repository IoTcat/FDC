@echo off
COPY /Y script\fdc_startup.bat tmp.bat
setlocal enabledelayedexpansion
set fn=tmp.bat
(for /f "tokens=*" %%i in (%fn%) do (
set s=%%i
set s=!s:$$$$=%cd%!
echo !s!))>temp1126.txt
move /y temp1126.txt "%fn%"
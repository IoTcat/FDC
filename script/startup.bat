@echo off
cd ..
set /p email=Git Email:
set /p usr=Git Username:
git config user.email %email%
git config user.usr %usr%
git push
pm2 start update.js --name fdc
pm2 save
COPY /Y script\fdc_startup.bat tmp.bat
setlocal enabledelayedexpansion
set fn=tmp.bat
(for /f "tokens=*" %%i in (%fn%) do (
set s=%%i
set s=!s:$$$$=%cd%!
echo !s!))>temp1126.txt
move /y temp1126.txt "%fn%"
start script\admin.bat
npm i -g npm
echo Setup finished!!!
pause

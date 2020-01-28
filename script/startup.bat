@echo
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
cd ..
set /p email=Git Email:
set /p usr=Git Username:
git config user.email %email%
git config user.usr %usr%
git push
pm2 start update.js --name fdc
pm2 save
COPY /Y script\fdc_startup.bat "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\"
setlocal enabledelayedexpansion
set fn="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\fdc_startup.bat"
(for /f "tokens=*" %%i in (%fn%) do (
set s=%%i
set s=!s:$$$$=%cd%!
echo !s!))>temp1126.txt
move /y temp1126.txt "%fn%"
npm i -g npm

@echo
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
cd ..
set /p email=Git Email:
set /p usr=Git Username:
git config user.email %email%
git config user.usr %usr%
git push
copy /Y script\fdc_startup.bat "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
pm2 start update.js --name fdc
pm2 save
npm i -g npm

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
echo "pm2 start %cd%\update.js --name fdc&pm2 ls" > "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\fdc.bat"
npm i -g npm

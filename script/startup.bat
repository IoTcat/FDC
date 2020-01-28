@echo
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
pm2 start update.js --name fdc
copy /Y fdc_startup.bat "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
pause
@echo off
cd ..
set /p email=Git Email:
set /p usr=Git Username:
git config user.email %email%
git config user.usr %usr%
cls&echo Please wait...
git push
pm2 start update.js --name fdc
pm2 save
npm i -g npm
echo Setup finished!!!
pause

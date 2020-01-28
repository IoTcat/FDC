
E:\cloud\OneDrive\git\fdc>(
set s=pm2 start $$$$ --name fdc --watch & pm2 ls  
 set s=!s:$$$$=E:\cloud\OneDrive\git\fdc!  
 echo !s! 
) 
pm2 start E:\cloud\OneDrive\git\fdc --name fdc --watch & pm2 ls

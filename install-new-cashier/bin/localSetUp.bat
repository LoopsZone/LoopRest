@echo off

Set init=%CD%

cd C:\WINDOWS\system32

vagrant box add laravel/homestead -2

Set/p path=Ingrese el path de desarrollo ejemplo D:/development : 

cd /d %path%

mkdir source\config

copy %init%\install-new-cashier\bin\config\config\phpConfig.php %path%\source\config\
copy %init%\install-new-cashier\bin\config\config\rabbitConfig.js %path%\source\config\
copy %init%\install-new-cashier\bin\config\config.php %path%\source\

mkdir DevOps
cd DevOps
mkdir new_cashier
cd new_cashier

copy %init%\install-new-cashier\bin\config\Homestead.yaml %path%\DevOps\new_cashier\
copy %init%\install-new-cashier\bin\config\Vagrantfile %path%\DevOps\new_cashier\

Set/p source=ingrese el directorio principal del proyecto cashier ejemplo E:source 
%init%\install-new-cashier\bin\configFiles.sh %source% %path% %init%
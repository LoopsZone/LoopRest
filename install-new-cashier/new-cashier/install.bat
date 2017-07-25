@echo off

cd C:\WINDOWS\system32

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
::@powershell -NoProfile -ExecutionPolicy Bypass -Command “iex ((New-Object System.Net.WebClient).DownloadString(‘https://chocolatey.org/install.ps1’))” && SET “PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin”

choco install virtualbox -y 
choco install composer -y
choco install git -y
choco install openssh -y
choco install vagrant -y

echo.

SET/P dir=Ingrese el path del directorio principal del proyecto cashier
cd %dir%
vagrant box add laravel/homestead || vagrant box add laravel/homestead https://atlas.hashicorp.com/laravel/boxes/homestead

composer global require "laravel/homestead=~2.0"

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"/v PATH /t REG_EXPAND_SZ /d "%path%;C:\Users\%computername%\AppData\Roaming\Composer\vendor\bin;" /f

homestead -V

ssh.sh
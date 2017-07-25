@echo off

cd C:\WINDOWS\system32

::Windows 7
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install virtualbox -y 
choco install git -y
choco install openssh -y
choco install nodejs.install -y
choco install vagrant -y

Set/p restar=Se requiere reiniciar este equipo para completar la instalacion desea reiniciarla ahora? (Y/N)

if /i %restar%==y goto restar
if /i %restar%==n goto close

echo Not found.
goto commonexit

:restar
    echo Reiniciando...
    shutdown -r
goto commonexit

:close
    exit
goto commonexit

:commonexit
pause

::Mario Henmanuel Vargas Ugalde <hemma.hvu@gmail.com>
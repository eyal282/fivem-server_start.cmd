@ECHO OFF
:choice
set /P c=Would you like to delete your sevrer cache?[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice
:somewhere
echo "Deleting server cache"
rd /s /q "D:\Youtube_Server\cache\"
echo -
echo Youtube_Server
echo -
start D:\Youtube_Server\run.cmd +exec server.cfg
exit
:somewhere_else
echo
@echo off
echo -
echo Server starter by Dan. 
echo -
start D:\Youtube_Server\run.cmd +exec server.cfg
exit
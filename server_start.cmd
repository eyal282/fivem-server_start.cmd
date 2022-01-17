@ECHO OFF

SET path=C:/Users/Administrator/Desktop/server

:choice
set /P c=Would you like to delete your server cache and crashes?[Y/N]?
if /I "%c%" EQU "Y" goto :delete_garbage
if /I "%c%" EQU "N" goto :start_server_logger

::goto :start_server_normal

goto start_server_logger

:delete_garbage
echo Deleting server cache and crashes
rd /s /q "%path%/cache"
rd /s /q "%path%/crashes"
goto start_server_logger

:start_server_logger
echo
@echo off
echo -
echo Server starter by Dan, edit by Eyal282
echo -
echo Closing this terminal closes the server, the file will be found in %path%/server-terminal.txt.
echo -
echo You can send commands here, but you cannot see them at all. If the big view screen is closed, blindly run this command: svgui
echo -
cd %path%


%path%/FXServer.exe +svgui +set sv_licenseKey licensekey +exec server.cfg +set onesync_population true +set onesync_enableBeyond true > %path%/server-terminal.txt

exit




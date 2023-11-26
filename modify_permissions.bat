@echo off

:: Set folder path
set "folderPath=C:\script"

:: Take ownership of the folder
takeown /F "%folderPath%" /R /D Y

:: Grant full control to Administrators group
icacls "%folderPath%" /grant:r "Administrators:(OI)(CI)F"

:: Deny access to all other users
icacls "%folderPath%" /deny "*S-1-1-0:(OI)(CI)(RX,WD,AD)"

:: Display a message to the user
echo Access to the folder has been restricted to administrators only.

:: Pause to keep the command prompt window open
pause

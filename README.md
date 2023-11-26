# systemAdmin
All things about sytem administration

Read about the Disclaimer before you continue!!!
=============================================================================================

First Script: restrict_access.bat

This script is a Windows batch script that sets folder permissions to restrict access to a specified folder, allowing only administrators to have read and execute permissions. Other users, identified by the SID (Security Identifier) "*S-1-1-0," are denied access.

Here's a brief description of each part of the script:

    Set folder path:
        set "folderPath=C:\script": Defines the folder path that you want to restrict access to. Change the path to your desired folder.

    Grant permissions to Administrators group:
        icacls "%folderPath%" /grant:r "Administrators:(OI)(CI)RX": Grants read (R) and execute (X) permissions to the Administrators group for the specified folder. The (OI)(CI) flags ensure that the permissions apply to both the object and its child objects.

    Deny access to all other users:
        icacls "%folderPath%" /deny "*S-1-1-0:(OI)(CI)(RX,WD,AD)": Denies read (RX), write (WD), and delete (AD) permissions to users with the SID "*S-1-1-0." This SID corresponds to the "Everyone" group.

    Display a message to the user:
        echo Access to the folder has been restricted to administrators only.: Prints a message indicating that access to the folder has been restricted.

    Pause to keep the command prompt window open:
        pause: Pauses the script execution, keeping the command prompt window open. This is useful for allowing the user to read the message before the window closes.


        Note: Ensure that you have the necessary permissions to change folder permissions and that you understand the implications of restricting access to a folder before applying this script.


Secodn Script: modify_permissions.bat

Grants full control (F) to the Administrators group for the specified folder and its contents ((OI)(CI) flags ensure inheritance).

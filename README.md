# generic-windows-prov
This is a Windows Configuration Designer [available via the Windows App Store] project that breaks OOBE, sets the computer name based on the serial number, creates a local admin account, loads chocolatey, and installs some baseline software with chocolatey.

The CommandFile blocks within the Customizations XML will need to be updated accordingly to the directory of the project. 

The prov.bat file creates install and log directories to store scripts and log outputs; it executes powershell to install chocolatey and to copy the scripts (or added binaries) from the package to the C:\Install directory as well as running a regedit to add a runonce for a powershell script.

The powershell script install.ps1, just executes chocolatey to install a baseline set of software, but this script can be modified to add customizations.

The C:\Logs directory can be accessed to review logs to determine if any failures have occurred.

This project can be modified and rebuilt with encryption and/or signing using the Windows Configuration Designer. 

mkdir C:\Install
mkdir C:\Logs

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) | Out-File -FilePath 'C:\Logs\choco.log'" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
xcopy %~dp0* C:\Install /i /y >> C:\Logs\copy.log
C:\Windows\Regedit.exe /S C:\Install\runOnce.reg
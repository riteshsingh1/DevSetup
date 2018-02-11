@echo on

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install bitnami-xampp

choco install composer

choco install nodejs.install

choco install yarn

choco install sublimetext3

choco install googlechrome

choco install sqlite

@pause
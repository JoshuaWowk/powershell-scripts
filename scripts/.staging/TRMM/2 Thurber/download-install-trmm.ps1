# ***********************************
# * DOWNLOAD & INSTALL TACTICAL RMM *
# *     ---   2 THURBER   ---       *
# ***********************************

# Set temp folder as $destination. Download the installation script for 2 Thurber and run it.
```powershell
Invoke-WebRequest -Uri "https://github.com/JoshuaWowk/powershell-scripts/raw/main/scripts/TRMM/install-trmm-2th.ps1" -OutFile "$env:TEMP\\install-trmm-2th.ps1" && & "$env:TEMP\\install-trmm-2th.ps1"
```
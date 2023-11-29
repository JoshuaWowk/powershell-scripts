# ***********************************
# * DOWNLOAD & INSTALL TACTICAL RMM *
# *     ---   14 Thurber   ---      *
# *   ---   Manual command   ---    *
# ***********************************

# Set temp folder as $destination. Download the installation script for 14 Thurber and run it.

Invoke-WebRequest -Uri "https://github.com/JoshuaWowk/powershell-scripts/raw/main/scripts/TRMM/install-trmm-14th.ps1" -OutFile "$env:TEMP\\install-trmm-14th.ps1" && & "$env:TEMP\\install-trmm-14th.ps1"

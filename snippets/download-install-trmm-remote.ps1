# ***********************************
# * DOWNLOAD & INSTALL TACTICAL RMM *
# *       ---   Remote   ---        *
# *   ---   Manual command   ---    *
# ***********************************

# Set temp folder as $destination. Download the installation script for Remote and run it.

Invoke-WebRequest -Uri "https://github.com/JoshuaWowk/powershell-scripts/raw/main/scripts/TRMM/install-trmm-remote.ps1" -OutFile "$env:TEMP\\install-trmm-remote.ps1" && & "$env:TEMP\\install-trmm-remote.ps1"

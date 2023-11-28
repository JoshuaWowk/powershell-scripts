$url = "https://github.com/JoshuaWowk/powershell-scripts/raw/main/scripts/TRMM/install-trmm-14th.ps1"
$destination = "C:\\path\\to\\your\\desired\\location\\install-trmm-14th.ps1"
Invoke-WebRequest -Uri "https://github.com/JoshuaWowk/powershell-scripts/raw/main/scripts/TRMM/install-trmm-14th.ps1" -OutFile $destination

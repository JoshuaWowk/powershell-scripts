# $url = "https://example.com/example.zip"  # replace with your URL
# $destination = "$env:TEMP\\yourfile.zip"  # replace 'yourfile.zip' with your filename
Invoke-WebRequest -Uri "https://github.com/JoshuaWowk/powershell-scripts/raw/main/scripts/TRMM/install-trmm-14th.ps1" -OutFile "$env:TEMP\\install-trmm-14th.ps1"

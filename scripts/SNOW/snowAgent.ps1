# Check if the snow directory exists, if not, create it
$snowDirectory = "C:\apps\snow"
if (-not (Test-Path $snowDirectory)) {
    New-Item -ItemType Directory -Path $snowDirectory -ErrorAction SilentlyContinue | Out-Null
}
# Check if the .snowLogs directory exists, if not, create it
$logsDirectory = Join-Path -Path $snowDirectory -ChildPath ".snowLogs"
if (-not (Test-Path $logsDirectory)) {
    New-Item -ItemType Directory -Path $logsDirectory -ErrorAction SilentlyContinue | Out-Null
}
# Start the transcript
Start-Transcript -Path (Join-Path -Path $logsDirectory -ChildPath "snowAgent.txt") -Append

# Check if the snowAgent folder already exists, if so, force delete it
$destinationPath = Join-Path -Path $snowDirectory -ChildPath "snowAgent"
if (Test-Path $destinationPath) {
    Remove-Item -Path $destinationPath -Recurse -Force
}

New-Item -ItemType Directory -Path $destinationPath -ErrorAction Stop

$regPath = Join-Path -Path $destinationPath -ChildPath "reg.reg"

# Check if Expand-Archive cmdlet is available, if not, install the required module
if (-not (Get-Command Expand-Archive -ErrorAction SilentlyContinue)) {
    Write-Output "Installing required module 'Microsoft.PowerShell.Archive'..."
    Install-Module -Name Microsoft.PowerShell.Archive -Force
}

# Unzip snowAgent.zip
try {
    Write-Output "Unzipping snowAgent.zip to: $destinationPath"
    Expand-Archive -Path .\snowAgent.zip -DestinationPath $destinationPath -ErrorAction Stop
}
catch {
    Write-Error "Failed to unzip snowAgent.zip: $_"
    exit 1
}


regedit /s $regPath
Start-Sleep -Seconds 5 

# msiexec /i snowClient.msi /q /promptrestart

# Install snowClient.msi and wait for it to complete
$msiPath = Join-Path -Path $destinationPath -ChildPath "snowClient.msi"
Start-Process -FilePath msiexec.exe -ArgumentList "/i `"$msiPath`" /q /promptrestart" -Wait

# Continue with the rest of your script here
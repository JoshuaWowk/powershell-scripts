$watcherProcessName = "ElgatoAudioControlServerWatcher"
$serverProcessName = "ElgatoAudioControlServer"
$installationPath = "C:\Program Files\Elgato\Volume Controller"
$logFilePath = Join-Path -Path $installationPath -ChildPath "scriptLog.txt"

# Check if log file exists, if not create it
if (-not (Test-Path -Path $logFilePath)) {
    New-Item -Path $logFilePath -ItemType File
}

# Start transcript and append to log file
Start-Transcript -Path $logFilePath -Append -Force

# Kill the watcher process
$watcherProcess = Get-Process -Name $watcherProcessName -ErrorAction SilentlyContinue
if ($watcherProcess) {
    $watcherProcess | Stop-Process -Force
}

# Kill the server process
$serverProcess = Get-Process -Name $serverProcessName -ErrorAction SilentlyContinue
if ($serverProcess) {
    $serverProcess | Stop-Process -Force
}

# Start the watcher process
$watcherPath = "C:\Program Files\Elgato\Volume Controller\ElgatoAudioControlServerWatcher.exe"
Start-Process -FilePath $watcherPath -NoNewWindow
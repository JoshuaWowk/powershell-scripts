# *****************************
# *  DEFINE & INITIALIZE LOG  *
# *****************************

# Get the current timestamp
$startTimestamp = Get-Date

# Define the log directory and log file
$scriptName = $MyInvocation.MyCommand.Name
$logDir = "C:\.Logs"
$logFolder = Join-Path -Path $logDir -ChildPath "$scriptName"
$logFile = Join-Path -Path $logDir -ChildPath "$scriptName.log"

# Create the log directory if it doesn't exist
if (!(Test-Path -Path $logDir)) {
    New-Item -ItemType Directory -Path $logDir | Out-Null
}

# Create the log folder if it doesn't exist
if (!(Test-Path -Path $logFolder)) {
    New-Item -ItemType Directory -Path $logFolder | Out-Null
}
Write-Output "Initialize $scriptName log" | Out-File -Append $logFile

# Output the timestamp
Write-Output "$scriptName startTime: $startTimestamp" | Out-File -Append $logFile
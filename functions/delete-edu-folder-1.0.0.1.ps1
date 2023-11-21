# Check if the directory exists
    if (Test-Path -Path $deleteDirPath) {
        # The directory exists, so delete it
        Remove-Item -Path $deleteDirPath -Recurse -Force
    } else {
        # The directory does not exist, so do nothing
        # Enter the appropriate remediation/error action here, example below.
        # Write-Output "Directory doesn't exist" | Out-File -Append $logFile
    }
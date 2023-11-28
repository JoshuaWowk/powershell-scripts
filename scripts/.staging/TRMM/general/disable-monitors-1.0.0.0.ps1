# ***************************************
# * DOWNLOAD MMT & DISABLE AUX DISPLAYS *
# ***************************************

# Check for C:\.etc\.tools and create it if it doesn't exist
$path = "C:\\.etc\\.tools"
if (!(Test-Path -Path $path)) {
    New-Item -ItemType Directory -Path $path
}

$zipUrl = "https://github.com/JoshuaWowk/powershell-scripts/raw/main/tools/multimonitortool/multimonitortool-x64.zip"
$zipDestination = "$env:TEMP\\multimonitortool-x64.zip"
Invoke-WebRequest -Uri $zipUrl -OutFile $zipDestination
Expand-Archive -Path $zipDestination -DestinationPath $path

# Path to MultiMonitorTool.exe
$toolPath = $path + "\multimonitortool-x64\MultiMonitorTool.exe"

# Get the list of monitors
$monitors = & $toolPath /scomma monitors.csv

# Load the list of monitors from the CSV file
$monitorsList = Import-Csv -Path monitors.csv

# Loop through the monitors and disable all but the primary
foreach ($monitor in $monitorsList) {
    if ($monitor.'Primary?' -eq 'No') {
        & $toolPath /disable $monitor.'Monitor ID'
    }
}

# **********************
# * SCRIPT EXPLANATION *
# **********************

# GitHub Copilot: This PowerShell script downloads a tool called MultiMonitorTool, extracts it, and then uses it to disable all non-primary monitors connected to the system. Here's a step-by-step breakdown:

# 1. It first checks if the directory "C:\\.etc\\.tools" exists, and if not, it creates it.
# 2. It then downloads the MultiMonitorTool from a specified URL and saves it as a zip file in the system's TEMP directory.
# 3. The downloaded zip file is then extracted to the "C:\\.etc\\.tools" directory.
# 4. The path to the MultiMonitorTool executable is stored in the `$toolPath` variable.
# 5. The script then runs the MultiMonitorTool with the `/scomma` option, which saves the details of all monitors into a CSV file named "monitors.csv".
# 6. The CSV file is then imported into the `$monitorsList` variable.
# 7. Finally, the script loops through each monitor in the `$monitorsList`. If a monitor is not the primary monitor (as indicated by the 'Primary?' column in the CSV), it is disabled using the `/disable` option of the MultiMonitorTool.

# Please note that this script assumes that the user has the necessary permissions to download files, create directories, and disable monitors. Also, the script does not handle any potential errors, such as a failed download or the MultiMonitorTool not working as expected.

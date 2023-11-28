# Path to MultiMonitorTool.exe
$toolPath = "C:\\.etc\\.tools\\multimonitortool-x64\\MultiMonitorTool.exe"

# Get the list of monitors
$monitors = & $toolPath /scomma monitors.csv

# Load the list of monitors from the CSV file
$monitorsList = Import-Csv -Path monitors.csv

# Loop through the monitors and enable all of them
foreach ($monitor in $monitorsList) {
    & $toolPath /enable $monitor.'Monitor ID'
}
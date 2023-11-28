# Path to MultiMonitorTool.exe
$toolPath = "C:\\path\\to\\MultiMonitorTool.exe"

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

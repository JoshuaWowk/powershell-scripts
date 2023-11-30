
# Define the path to the CSV file containing the list of user UPNs and new passwords
$csvFilePath = ".\logistics-users.csv"

# Define the path to the CSV file where the results will be logged
$logFilePath = "C:\path\to\password_reset_log.csv"

# Check if the log file path exists
if (-not (Test-Path -Path $logFilePath)) {
    # Create the log file
    $null = New-Item -Path $logFilePath -ItemType File
}

# Load the user UPNs and new passwords from the CSV file
$userData = Import-Csv -Path $csvFilePath

# Loop through each user and change their password
foreach ($user in $userData) {
    $upn = $user.UPN
    $newPassword = $user.NewPassword

    # Change the user's password
    Set-MsolUserPassword -UserPrincipalName $upn -NewPassword $newPassword

    # Get the user's display name
    $user = Get-MsolUser -UserPrincipalName $upn
    $displayName = $user.DisplayName

    # Log the user's display name, UPN, and new password in the CSV file
    $logEntry = [PSCustomObject]@{
        DisplayName = $displayName
        UPN = $upn
        NewPassword = $newPassword
    }
    $logEntry | Export-Csv -Path $logFilePath -Append -NoTypeInformation
}

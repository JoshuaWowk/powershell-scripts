# ************************
# * DELETE-FILE FUNCTION *
# ************************
function Delete-File { 
    
    param (
        [Parameter(Mandatory=$true)]
        [string]$deleteFilePath
    )
    # Check if the file exists
    if (Test-Path -Path $deleteFilePath) {
        # The file exists, so delete it
        Remove-Item -Path $deleteFilePath -Force
    } else {
        # The file does not exist, so do nothing
        # Enter the appropriate remediation/error action here, example below.
        # Write-Output "File doesn't exist" | Out-File -Append $logFile
    }
}

# ********************************
# * CALL DELETE-FILE FUNCTION *
# ********************************

# Call Delete-File function with the path to the zip file to delete
Delete-File -deleteFilePath "C:\Epicor\ERPDT\161830-EDU.zip"

# **************************
# * DELETE-FOLDER FUNCTION *
# **************************
function Delete-Folder { 
    
    param (
        [Parameter(Mandatory=$true)]
        [string]$deleteDirPath
    )
    # Check if the directory exists
    if (Test-Path -Path $dirPath) {
        # The directory exists, so delete it
        Remove-Item -Path $deleteDirPath -Recurse -Force
    } else {
        # The directory does not exist, so do nothing
        Write-Host "Directory does not exist."
    }
}

# *******************************
# * CALL DELETE-FOLDER FUNCTION *
# *******************************

# Call Delete-Folder function with the path to the folder to delete
Delete-Folder -deleteDirPath = "C:\Epicor\ERPDT\161830-EDU"
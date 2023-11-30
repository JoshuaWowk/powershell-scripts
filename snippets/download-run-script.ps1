# ***********************************
# * DOWNLOAD & INSTALL TACTICAL RMM *
# *     ---   2 THURBER   ---       *
# *   ---   Manual command   ---    *
# ***********************************

# Set temp folder as $destination. Download the installation script for 2 Thurber and run it.
$uri = "<set uri here>"
$outfile = "$env:TEMP\\m365-pwd-reset.ps1"


Invoke-WebRequest -Uri $uri -OutFile $outfile && & $outfile

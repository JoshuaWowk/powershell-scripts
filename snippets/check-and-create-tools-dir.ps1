# Check for C:\.etc\.tools and create it if it doesn't exist
$path = "C:\\.etc\\.tools"
if (!(Test-Path -Path $path)) {
    New-Item -ItemType Directory -Path $path
}

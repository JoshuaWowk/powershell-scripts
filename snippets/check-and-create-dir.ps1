$path = "C:\\.etc\\.scripts"
if (!(Test-Path -Path $path)) {
    New-Item -ItemType Directory -Path $path
}

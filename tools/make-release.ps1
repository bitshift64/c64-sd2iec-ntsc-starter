# Creates a ready-to-extract SD card zip from the sdcard folder.
# Run from the repository root in PowerShell.

$ErrorActionPreference = "Stop"
$RepoRoot = Split-Path -Parent $PSScriptRoot
$SdRoot = Join-Path $RepoRoot "sdcard"
$OutDir = Join-Path $RepoRoot "dist"
$OutZip = Join-Path $OutDir "C64_SD2IEC_NTSC_Clean_Card.zip"

if (!(Test-Path $SdRoot)) {
    throw "sdcard folder not found: $SdRoot"
}

if (!(Test-Path $OutDir)) {
    New-Item -ItemType Directory -Path $OutDir | Out-Null
}

if (Test-Path $OutZip) {
    Remove-Item $OutZip -Force
}

Push-Location $SdRoot
try {
    Compress-Archive -Path * -DestinationPath $OutZip -Force
}
finally {
    Pop-Location
}

Write-Host "Created: $OutZip"
Write-Host "Upload this ZIP as a GitHub Release asset."

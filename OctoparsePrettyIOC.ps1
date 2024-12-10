
param (
    [string]$jsonFilePath
)

# Check if the file exists
if (-not (Test-Path $jsonFilePath)) {
    Write-Host "File not found: $jsonFilePath"
    exit
}

# Load the JSON content from the file
$jsonContent = Get-Content -Path $jsonFilePath | ConvertFrom-Json


if ($jsonContent.SHA1) {
    Write-Host "SHA1"
    $splitText = $jsonContent.SHA1 -split ","
    $splitText
    Write-Host
}

if ($jsonContent.MD5) {
    Write-Host "SHA1"
    $splitText = $jsonContent.SHA1 -split ","
    $splitText
    Write-Host
}

if ($jsonContent.SHA256) {
    Write-Host "SHA256"
    $splitText = $jsonContent.SHA256 -split ","
    $splitText
    Write-Host
}

if ($jsonContent.IP) {
    Write-Host "IP"
    $splitText = $jsonContent.IP -split ","
    $splitText
    Write-Host
}

if ($jsonContent.DOMAIN) {
    Write-Host "DOMAIN"
    $splitText = $jsonContent.DOMAIN -split ","
    $splitText
    Write-Host
}




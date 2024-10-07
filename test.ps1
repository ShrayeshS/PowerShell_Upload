
$env:azPath = "C:\Program Files (x86)\Microsoft SDKs\Azure\CLI2\wbin"
$filePath = "$env:BUILD_SOURCESDIRECTORY\file.txt"
# Execute the Azure CLI command and capture output
if (-not (Test-Path $filePath)) {
    # File does not exist, create it
    New-Item -Path $filePath -ItemType File
    Write-Host "File created at $filePath"
} else {
    Write-Host "File already exists at $filePath"
}

& "$env:azPath\az" --version | Out-File -FilePath $filePath


#Write-Host "Azure CLI Version:" $Build.SourcesDirectory



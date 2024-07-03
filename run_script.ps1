# Define variables
$url = "https://github.com/goatrbxdad/Remote/raw/main/ABS%20Remote.exe"
$output = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), "ABS Remote.exe")

# Download file from GitHub
try {
    Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing -ErrorAction Stop
    Write-Output "File downloaded successfully."
}
catch {
    Write-Error "Failed to download file: $_"
    Exit 1  # Exit with a specific error code if needed
}

# Wait for 5 seconds before closing PowerShell (optional)
Start-Sleep -Seconds 5

# Close PowerShell
Exit

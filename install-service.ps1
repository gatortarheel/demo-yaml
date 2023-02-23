# Define variables
$serviceName = "MyService"
$servicePath = "C:\Path\To\Service.exe"

# Stop the service
Stop-Service -Name $serviceName -Force

# Install or update the service
New-Service -Name $serviceName -BinaryPathName $servicePath -DisplayName $serviceName -StartupType Automatic

# Start the service
Start-Service -Name $serviceName

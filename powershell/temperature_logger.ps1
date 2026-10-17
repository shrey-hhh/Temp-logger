$portName = "COM6"
$baudRate = 9600
$logFile = "$HOME\Desktop\room_temp_log.txt"

$port = New-Object System.IO.Ports.SerialPort(
    $portName,
    $baudRate,
    [System.IO.Ports.Parity]::None,
    8,
    [System.IO.Ports.StopBits]::One
)

$port.Open()

Write-Host "Connected to $portName! Saving data to Desktop..." -ForegroundColor Green
Write-Host "Press [Ctrl + C] to stop." -ForegroundColor Yellow

Add-Content -Path $logFile -Value "--- Log Started: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') ---"

try {
    while ($port.IsOpen) {
        $line = $port.ReadLine().Trim()

        if ($line) {
            $logEntry = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') -> $line °F"
            Write-Host $logEntry
            Add-Content -Path $logFile -Value $logEntry
        }
    }
}
catch {
    Write-Host "Logging stopped: $($_.Exception.Message)" -ForegroundColor Red
}
finally {
    if ($port -and $port.IsOpen) {
        $port.Close()
        Write-Host "Port cleanly closed." -ForegroundColor Cyan
    }
}

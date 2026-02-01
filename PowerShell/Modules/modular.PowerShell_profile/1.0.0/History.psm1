# ============================
# History-Module
# ============================

$historyPath = "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"

if (Test-Path $historyPath) {
    $lines = Get-Content $historyPath -Tail 50

    $clean = foreach ($line in $lines) {
        if ([string]::IsNullOrWhiteSpace($line)) { continue }
        if ($line.StartsWith("#")) { continue }
        if ($line[0] -eq 0x1B) { continue }
        $line
    }

    Write-Host "`nLast 50 Commands:" -ForegroundColor Yellow
    $clean | ForEach-Object { Write-Host $_ }
}

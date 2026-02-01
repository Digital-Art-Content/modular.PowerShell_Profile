# ============================
# HealthCheck-Module
# ============================

function Test-OK($name, $condition) {
    if ($condition) {
        Write-Host "[OK] $name" -ForegroundColor Green
    } else {
        Write-Host "[FAIL] $name" -ForegroundColor Red
    }
}

Write-Host "`nSystem-Check:" -ForegroundColor Cyan

Test-OK "Internet" (Test-Connection 1.1.1.1 -Count 1 -Quiet)
Test-OK "PSReadLine" (Get-Module -ListAvailable PSReadLine)
Test-OK "WinGet" (Get-Command winget -ErrorAction SilentlyContinue)
Test-OK "Git" (Get-Command git -ErrorAction SilentlyContinue)
Test-OK "Profile writable" (Test-Path $PROFILE)

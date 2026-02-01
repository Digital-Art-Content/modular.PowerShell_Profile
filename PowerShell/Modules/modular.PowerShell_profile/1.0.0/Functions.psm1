# ============================
# Functions-Module
# ============================

function h50 { Get-Content (Get-PSReadLineOption).HistorySavePath -Tail 50 }
function psr { pwsh }
function editp { code $PROFILE }
function sys { Get-ComputerInfo }
function netr { ipconfig /flushdns; netsh int ip reset }
function update { Start-Process "ms-settings:windowsupdate" }

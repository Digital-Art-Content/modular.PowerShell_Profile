# ============================
# UI-Module
# ============================

$FormatEnumerationLimit = -1

# ============================

Set-PSReadlineOption -HistoryNoDuplicates
Set-PSReadLineOption -HistorySaveStyle SaveIncrementally
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -MaximumHistoryCount 10000
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# ============================

function Prompt {
    $last = $?
    $color = if ($last) { "Green" } else { "Red" }
    $time = (Get-Date).ToString("HH:mm:ss")
    $path = (Get-Location).Path

    Write-Host "[$time]" -NoNewline -ForegroundColor Cyan
    Write-Host " [Exit:$last]" -NoNewline -ForegroundColor $color
    Write-Host " $path" -NoNewline -ForegroundColor Blue
    return "> "
}
#
# ============================
#End
# ============================
#The script 'function prompt' adds time to the PowerShell output.
#
#Parameters for 'Set-PSReadLineOption'
#'-HistoryNoDuplicates' prevents duplicate command entries
#'-HistorySaveStyle SaveIncrementally' Command history is saved immediately
#'-PredictionSource HistoryAndPlugin' uses HistoryFile and Plugins as Source for Commands
#'-MaximumHistoryCount 10000' set the count of max saved Commands to '10000'

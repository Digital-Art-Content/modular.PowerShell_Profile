# ============================
# Hauptprofil – load Modules
# ============================
#changed from the modular.PowerShell_profile Module
#
Write-Host "Welcome: $env:USERNAME" -ForegroundColor Cyan
#
#============================
#
#PowerShell automatically loads the target module when it is used.
$PSModuleAutoloadingPreference = "All"
#============================
#
#Set the starting location for PowerShell.
Set-Location "$env:windir\System32"
#Path=C:\Windows\system32\
#============================
#
#Loading Modules
Import-Module "$HOME\Documents\PowerShell\Modules\modular.PowerShell_profile\UI.psm1" -Force
Import-Module "$HOME\Documents\PowerShell\Modules\modular.PowerShell_profile\History.psm1" -Force
Import-Module "$HOME\Documents\PowerShell\Modules\modular.PowerShell_profile\Functions.psm1" -Force
Import-Module "$HOME\Documents\PowerShell\Modules\modular.PowerShell_profile\HealthCheck.psm1" -Force
#============================
#
#If you are not using Powertoys or the CommandNotFound-Feature, add a # before the line.
Import-Module -Name Microsoft.WinGet.CommandNotFound
#============================
#
#Github on PowerShell (Visit=https://github.com/dahlbyk/posh-git or https://www.powershellgallery.com/packages/posh-git/1.0.0
#Script execution policy must be set to either 'RemoteSigned' or 'Unrestricted'
#Git must be installed and available via the PATH environment variable. Check that git is accessible from PowerShell 
#by executing 'git --version' on PowerShell. If it is not recognized as the name of a command, install Git from https://git-scm.com. 
#If you have Git installed, make sure the path to git is in your PATH environment variable.
Import-Module posh-git
#============================
#
#-ExecutionPolicy ('Bypass'=noCertificate-Check, 'RemoteSigned'=blocks digital-unsigned Scripts, 
#'AllSigned'=Just certificated Files and Scripts, 'Restricted'=No ConfigFile and Scripts are loading, 'Unrestricted'=Bypass equivalent
#
#-Scope "CurrentUser=You|Process=Current Session|LocalMachine=Systemwide, for all Users|'UserPolicy' or 'MachinePolicy' (Only with GroupPolicy)
Set-ExecutionPolicy -ExecutionPolicy 'Bypass' -Scope 'CurrentUser'
#============================
#


Import-Module posh-git

# function GitStatus {
#   git status 
# }
# Set-Alias gs GitStatus

# Notepad $profile to open your profile file
# Load posh-git example profile
#. 'C:\tools\poshgit\dahlbyk-posh-git-a4faccd\profile.example.ps1' choco
#load ssh-.ps1
# . 'C:\Users\a00577465\OneDrive - ONEVIRTUALOFFICE\Documents\WindowsPowerShell\profile.ps1'

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Import-Module posh-git
# #Start-SshAgent -Quiet

# Alias functions
function Get-GitStatus { & git status $args }
Set-Alias -Name gs -Value Get-GitStatus

function Get-GitPull { & git pull $args }
New-Alias -Name gpl -Value Get-GitPull -Force -Option AllScope

function Get-GitAdd { & git add --all $args }
New-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope

function Get-GitCommit { & git commit -ev $args }
New-Alias -Name gc -Value Get-GitCommit -Force -Option AllScope

function Get-GitPush { & git push $args }
New-Alias -Name gps -Value Get-GitPush -Force -Option AllScope

function Get-GitBranch { & git branch $args }
New-Alias -Name gb -Value Get-GitBranch -Force -Option AllScope

function Get-GitCheckout { & git checkout $args }
New-Alias -Name go -Value Get-GitCheckout -Force -Option AllScope

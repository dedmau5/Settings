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
Set-Alias -Name gpl -Value Get-GitPull -Force -Option AllScope

function Get-GitAdd { & git add --all $args }
Set-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope

function Get-GitCommit { & git commit -ev $args }
Set-Alias -Name gcm -Value Get-GitCommit -Force -Option AllScope

function Get-GitCommit { & git commit -ev $args }
Set-Alias -Name cm -Value Get-GitCommit -Force -Option AllScope

function Get-GitPush { & git push $args }
Set-Alias -Name gps -Value Get-GitPush -Force -Option AllScope

function Get-GitBranch { & git branch $args }
Set-Alias -Name gbr -Value Get-GitBranch -Force -Option AllScope

function Get-GitCheckout { & git checkout $args }
Set-Alias -Name go -Value Get-GitCheckout -Force -Option AllScope


Register-ArgumentCompleter -Native -CommandName az -ScriptBlock {
    param($commandName, $wordToComplete, $cursorPosition)
    $completion_file = New-TemporaryFile
    $env:ARGCOMPLETE_USE_TEMPFILES = 1
    $env:_ARGCOMPLETE_STDOUT_FILENAME = $completion_file
    $env:COMP_LINE = $wordToComplete
    $env:COMP_POINT = $cursorPosition
    $env:_ARGCOMPLETE = 1
    $env:_ARGCOMPLETE_SUPPRESS_SPACE = 0
    $env:_ARGCOMPLETE_IFS = "`n"
    $env:_ARGCOMPLETE_SHELL = 'powershell' 
    az 2>&1 | Out-Null
    Get-Content $completion_file | Sort-Object | ForEach-Object {
        [System.Management.Automation.CompletionResult]::new($_, $_, "ParameterValue", $_)
    }
    Remove-Item $completion_file, Env:\_ARGCOMPLETE_STDOUT_FILENAME, Env:\ARGCOMPLETE_USE_TEMPFILES, Env:\COMP_LINE, Env:\COMP_POINT, Env:\_ARGCOMPLETE, Env:\_ARGCOMPLETE_SUPPRESS_SPACE, Env:\_ARGCOMPLETE_IFS, Env:\_ARGCOMPLETE_SHELL
}
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

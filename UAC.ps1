$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
Set-ItemProperty -Path $registryPath -Name "ConsentPromptBehaviorAdmin" -Value 5 -type dword
Set-ItemProperty -Path $registryPath -Name "ConsentPromptBehaviorUser" -Value 3 -type dword
Set-ItemProperty -Path $registryPath -Name "EnableInstallerDetection" -Value 1 -type dword
Set-ItemProperty -Path $registryPath -Name "EnableLUA" -Value 1 -type dword
Set-ItemProperty -Path $registryPath -Name "EnableVirtualization" -Value 1 -type dword
Set-ItemProperty -Path $registryPath -Name "PromptOnSecureDesktop" -Value 1 -type dword
Set-ItemProperty -Path $registryPath -Name "ValidateAdminCodeSignatures" -Value 0 -type dword
Set-ItemProperty -Path $registryPath -Name "FilterAdministratorToken" -Value 0 -type dword
set-ItemProperty -Path $registryPath -Name "DisableLockWorkstation" -Value 0 -type dword

$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('Windows PowerShell')
Sleep 1
$wshell.SendKeys('~')


# powershell
Small helper scripts and infos to use Powershell

# Einzeiler:
dir -R | where-object {$_.lastwritetime -ge (get-date).AddHours(-10)}

$Script1=test.ps1 ; Measure-Command -Expression { $Script1 }

$tmpfile = [io.path]::GetTempFileName()

# Defaults setzen falls nix anderes angegeben wird.
```
Param (
 [string]$computer = $env:computername
) #end param

If(-not($computerName)) { $computerName = $env:computerName } ; $computername
```
# Check to prevent Errors?
```
if((Get-WmiObject win32_computersystem).model -ne "virtual machine")
 {
 $response = Read-Host -prompt "This script is best run in a VM.
 Do you wish to continue? <y / n>"
 if ($response -eq "n") { exit }
 }
```
# Test me:
Get-Process -IncludeUserName | Select-Object Username |Select-String 'EKF\\asc'

Get-Process -IncludeUserName | Where UserName -match 'EKF\\asc' # | Stop-Process -force 

Get-Process -IncludeUserName | Where {$_.username -like "*user*"}

Get-Process -IncludeUserName | Where {$_.username -eq "domain\user"}

Get-ChildItem -Path HKCU:\ -Recurse > file


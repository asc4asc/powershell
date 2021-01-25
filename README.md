# powershell
Small helper scripts and infos to use Powershell

# Einzeiler:
dir -R | where-object {$_.lastwritetime -ge (get-date).AddHours(-10)}


# Defaults setzen falls nix anderes angegeben wird.

Param (
 [string]$computer = $env:computername
) #end param

If(-not($computerName)) { $computerName = $env:computerName } ; $computername

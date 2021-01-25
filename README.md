# powershell
Small helper scripts and infos to use Powershell

# Einzeiler:
dir -R | where-object {$_.lastwritetime -ge (get-date).AddHours(-10)}

If(-not($computerName)) { $computerName = $env:computerName } ; $computername

# from Windows PowerShell Best Practices / Ed Wilson
# call /testumgebung file.txt
Param(
 [Parameter(Mandatory=$true)]
 [string]$path,
 [string]$computer = $env:computername
)#end param

# *** Functions ***
Function Get-Bios($computer)
{
 "Calling function $($myInvocation.InvocationName)"
 Get-WmiObject -class win32_bios -computer $computer
}#end function Get-Bios

# *** Entry point to script ***
Start-Transcript -path $path
"Starting $($myInvocation.InvocationName) at $(Get-Date)"
Get-Bios -computer $computer
Stop-Transcript

<#
  .SYNOPSIS
  Check if you are admin if not try to become this rigths.

  .DESCRIPTION
  The Script checks if you are realy admin. And try to help if not.
  
  .PARAMETER InputPath
  no

  .PARAMETER OutputPath
  no

  .INPUTS
  None. You cannot pipe objects.

  .OUTPUTS
  None. Does not generate any output.

  .EXAMPLE
  PS> .\toadmin.ps1
#>

param ()
# param ([string]$InputPath, [string]$OutPutPath)

function Test-IsAdmin
{
 <#
 .Synopsis
 Tests if the user is an administrator
 .Description
 Returns true if a user is an administrator, false if the user is not an administrator
 .Example: 
 #>
 $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
 $principal = New-Object Security.Principal.WindowsPrincipal $identity
 $principal.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
} 

$ent = Test-IsAdmin
if ( -Not $ent ) {
  Start-Process powershell -Verb runAs
}

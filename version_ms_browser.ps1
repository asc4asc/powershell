$productPath = $Env:WinDir + "\SystemApps\Microsoft.MicrosoftEdge_*\MicrosoftEdge.exe" 
    If(Test-Path $productPath) { 
        $productProperty = Get-ItemProperty -Path $productPath 
        Write-Host $productProperty.VersionInfo.ProductVersion 
    } 
    Else { 
        Write-Host "Not find Microsoft Edge." 
    }   
    
    
# z.B. 11.00.19041.546

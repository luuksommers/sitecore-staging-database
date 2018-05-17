$url = "https://" + $env:BackofficeHostname + "/sitecore/admin/whichdatabase.aspx"
Write-Host("Checking database on: $url")
try {
    $result = Invoke-WebRequest -Uri $url -UseBasicParsing -ErrorAction SilentlyContinue
} 
catch [System.Net.WebException] {
    Write-Error($_.Exception.Response)
    return
}


if($result.Content.length -lt 10)
{
    Write-Host("Found database: $result")
    Get-Item Z.Web2.Add.config.disabled | Rename-Item -newname { $_ -replace "\.disabled" }

    if($result.Content -eq "web")
    {
        Get-Item *.config.disabled | Rename-Item -newname { $_ -replace "\.disabled" }
    }
}
else 
{
    Write-Error("To much data for a database name")
}

Write-Host "Azure Security Audit Report" -ForegroundColor Cyan

$results = @()
$insecureFound = $false

Write-Host "`nStorage Account Public Access Status:" -ForegroundColor Yellow

Get-AzStorageAccount | ForEach-Object {
    $account = $_
    $publicAccess = $account.AllowBlobPublicAccess

    # Build result object
    $result = [PSCustomObject]@{
        StorageAccount = $account.StorageAccountName
        ResourceGroup  = $account.ResourceGroupName
        PublicAccess   = $publicAccess
    }

    $results += $result

    # Highlight insecure accounts
    if ($publicAccess -eq $true) {
        Write-Host "⚠️  $($account.StorageAccountName) in $($account.ResourceGroupName) is PUBLIC!" -ForegroundColor Red
        $insecureFound = $true
    }
    else {
        Write-Host "✅ $($account.StorageAccountName) is secure." -ForegroundColor Green
    }
}

# Export report
$reportPath = "storage_audit_report.csv"
$results | Export-Csv -Path $reportPath -NoTypeInformation

Write-Host "`nReport exported to $reportPath" -ForegroundColor Cyan

# Compliance summary
Write-Host "`nCompliance Summary:" -ForegroundColor Yellow
if ($insecureFound) {
    Write-Host "FAIL: Public storage access detected." -ForegroundColor Red
}
else {
    Write-Host "PASS: All storage accounts are secure." -ForegroundColor Green
}


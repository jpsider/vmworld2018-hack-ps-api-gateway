$Service = (Get-Content -Path ".\Services\ESXi.json" | ConvertFrom-Json).Service

$Port = $Service.Port
$Desc = $Service.Description
$IP_Address = $Service.IP_Address
$Username = $Service.Username
$Password = $Service.Password
$RoutesFilePath = $Service.RoutesFilePath
$SecurityType = $Service.Security.Type
if($SecurityType -ne "Disabled"){
    $Thumbprint = $Service.Security.Thumbprint
} else {
    $Thumbprint = $null
}

Write-Output "$Port"
Write-Output "$Desc"
Write-Output "$IP_Address"
Write-Output "$Username"
Write-Output "$Password"
Write-Output "$RoutesFilePath "
Write-Output "$SecurityType"
Write-Output "$Thumbprint"
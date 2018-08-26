# Should Start the mgmt Endpoint
# Have a flag for starting all other endpoints


<#
    .DESCRIPTION
        This script will Start the API Gateway
    .EXAMPLE
        Start-ApiGateway.ps1 -ServiceDefinitionDirectory $ServiceDirectory -MgmtOnly 
    .NOTES
    	This will return data
#>

param(
    $ServiceDefinitionDirectory,
    $MgmtOnly
)

$EndpointsToStart = Get-ChildItem -Path $ServiceDefinitionDirectory | Select-Object FullName

foreach ($DefinitionFile in $EndpointsToStart) {
    $DefinitionFileName = $DefinitionFile.FullName
    $ServiceDefinition = (Get-Content -Path "$DefinitionFileName" | ConvertFrom-Json).Service

    Write-Output $ServiceDefinition
    $Port = $ServiceDefinition.Port
    $Desc = $ServiceDefinition.Description
    $IP_Address = $ServiceDefinition.IP_Address
    $Username = $ServiceDefinition.Username
    $Password = $ServiceDefinition.Password
    $RoutesFilePath = $ServiceDefinition.RoutesFilePath
    $SecurityType = $ServiceDefinition.Security.Type
    if($SecurityType -ne "Disabled"){
        $Thumbprint = $ServiceDefinition.Security.Thumbprint
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

    # We should have the information to use RestPS to start the Endpoint

}
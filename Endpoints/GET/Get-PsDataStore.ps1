<#
    .DESCRIPTION
        This script will Determine the connection status of the Endpoint to the External Service
    .EXAMPLE
        Get-ServiceStatus.ps1 -RequestArgs $RequestArgs -Body $Body
    .NOTES
    	This will return data
#>

param(
    $RequestArgs,
    $Body
)

$message = Get-Datastore
$return = $message | Select-Object Name,FreeSpaceGB,CapacityGB
return $return
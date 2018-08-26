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

# Add Code to determine the Endpoint's Service connection status
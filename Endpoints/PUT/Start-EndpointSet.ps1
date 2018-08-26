<#
    .DESCRIPTION
        This script will Start a group of endpoints
    .EXAMPLE
        Start-Endpoint.ps1 -RequestArgs $RequestArgs -Body $Body
    .NOTES
    	This will return data
#>

param(
    $RequestArgs,
    $Body
)

# Add Code to Start an endpoint Set
# Request args or body should contain a path for service definition files
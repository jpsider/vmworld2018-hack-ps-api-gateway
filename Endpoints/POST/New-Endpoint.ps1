<#
    .DESCRIPTION
        This script will Create a New Endpoint
    .EXAMPLE
        Restart-Endpoint.ps1 -RequestArgs $RequestArgs -Body $Body
    .NOTES
    	This will return data
#>

param(
    $RequestArgs,
    $Body
)

# This will require the addition of an Endpoint script and an update to 1 or more routes files
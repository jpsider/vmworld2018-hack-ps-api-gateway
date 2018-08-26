<#
    .DESCRIPTION
        This script will Restart an Endpoints connection to the external service
    .EXAMPLE
        Restart-ExternalConnection.ps1 -RequestArgs $RequestArgs -Body $Body
    .NOTES
    	This will return data
#>

param(
    $RequestArgs,
    $Body
)

# Add Code to Restart the Endpoints ExternalConnection
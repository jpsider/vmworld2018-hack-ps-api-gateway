function Invoke-AvailableRouteSet
{
    <#
	.DESCRIPTION
		This function defines the available Routes (Rest Methods and Commands/Scripts).
	.EXAMPLE
        Invoke-AvailableRouteSet
	.NOTES
        This will return null.
    #>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingInvokeExpression", '')]
    $script:Routes = @(
        @{
            'RequestType'    = 'GET'
            'RequestURL'     = '/endpoint/status'
            'RequestCommand' = 'return 1'
        }
        @{
            'RequestType'    = 'PUT'
            'RequestURL'     = '/RestartEndpoint'
            'RequestCommand' = 'C:\open_projects\vmworld2018-hack-ps-api-gateway\endpoints\PUT\Restart-Endpoint.ps1'
        }
        @{
            'RequestType'    = 'PUT'
            'RequestURL'     = '/StartEndpoint'
            'RequestCommand' = 'C:\open_projects\vmworld2018-hack-ps-api-gateway\endpoints\PUT\Start-Endpoint.ps1'
        }
        @{
            'RequestType'    = 'PUT'
            'RequestURL'     = '/StopEndpoint'
            'RequestCommand' = 'C:\open_projects\vmworld2018-hack-ps-api-gateway\endpoints\PUT\Stop-Endpoint.ps1'
        }
        @{
            'RequestType'    = 'PUT'
            'RequestURL'     = '/RestartEndpointSet'
            'RequestCommand' = 'C:\open_projects\vmworld2018-hack-ps-api-gateway\endpoints\PUT\Restart-EndpointSet.ps1'
        }
        @{
            'RequestType'    = 'PUT'
            'RequestURL'     = '/StartEndpointSet'
            'RequestCommand' = 'C:\open_projects\vmworld2018-hack-ps-api-gateway\endpoints\PUT\Start-EndpointSet.ps1'
        }
        @{
            'RequestType'    = 'PUT'
            'RequestURL'     = '/StopEndpointSet'
            'RequestCommand' = 'C:\open_projects\vmworld2018-hack-ps-api-gateway\endpoints\PUT\Stop-EndpointSet.ps1'
        }
    )
}
Invoke-AvailableRouteSet
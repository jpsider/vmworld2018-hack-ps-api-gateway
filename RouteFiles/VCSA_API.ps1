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
            'RequestURL'     = '/VM'
            'RequestCommand' = 'Get-VM'
        }
        @{
            'RequestType'    = 'GET'
            'RequestURL'     = '/endpoint/status'
            'RequestCommand' = 'return 1'
        }
        @{
            'RequestType'    = 'GET'
            'RequestURL'     = '/endpoint/ServiceStatus'
            'RequestCommand' = 'C:\open_Projects\vmworld2018-hack-ps-api-gateway\endpoints\GET\Get-ServiceStatus.ps1'
        }
        @{
            'RequestType'    = 'PUT'
            'RequestURL'     = '/vm'
            'RequestCommand' = 'C:\open_Projects\vmworld2018-hack-ps-api-gateway\endpoints\GET\Get-ServiceStatus.ps1'
        }
        @{
            'RequestType'    = 'POST'
            'RequestURL'     = '/data'
            'RequestCommand' = 'C:\open_Projects\vmworld2018-hack-ps-api-gateway\endpoints\GET\Get-ServiceStatus.ps1'
        }
        @{
            'RequestType'    = 'DELETE'
            'RequestURL'     = '/data'
            'RequestCommand' = 'C:\open_Projects\vmworld2018-hack-ps-api-gateway\endpoints\GET\Get-ServiceStatus.ps1'
        }
    )
}
Invoke-AvailableRouteSet
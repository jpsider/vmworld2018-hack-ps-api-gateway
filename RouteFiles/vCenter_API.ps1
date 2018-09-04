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
            'RequestType'    = 'GET'
            'RequestURL'     = '/datastore'
            'RequestCommand' = 'C:\open_Projects\vmworld2018-hack-ps-api-gateway\endpoints\GET\Get-PsDatastore.ps1'
        }
    )
}
Invoke-AvailableRouteSet
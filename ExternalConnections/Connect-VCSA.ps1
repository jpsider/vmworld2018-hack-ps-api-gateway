<#
    .DESCRIPTION
        This script will Connect the Enpoint to VCSA
    .EXAMPLE
        Connect-VCSA -IP_Address $IP -Username $UN -Password $PW
    .NOTES
    	This will return data
#>

param(
    $IP_Address,
    $UserName,
    $Password
)

# Add Code to connect to VCSA
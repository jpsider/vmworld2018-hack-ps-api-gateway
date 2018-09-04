<#
    .DESCRIPTION
        This script will Connect the Enpoint to vCenter
    .EXAMPLE
        Connect-vCenter -IP_Address $IP -Username $UN -Password $PW
    .NOTES
    	This will return data
#>

param(
    $IP_Address = "192.168.2.220",
    $UserName = "administrator",
    $Password = "VMware1!"
)

# Add Code to connect to vCenter

Connect-VIServer -Server $IP_Address -User $UserName -Password $Password

Start-RestPSListener -RoutesFilePath "C:\OPEN_PROJECTS\vmworld2018-hack-ps-api-gateway\RouteFiles\vCenter_API.ps1" -Port 8082
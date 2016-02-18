[CmdletBinding(DefaultParameterSetName = 'None')]
param
(
    [String] [Parameter(Mandatory = $true)] $ServerName,
	[String] $AzureFirewallName = "AzureWebAppFirewall" 
)

$ErrorActionPreference = 'Stop'

If ((Get-AzureSqlDatabaseServerFirewallRule -ServerName $ServerName -RuleName $AzureFirewallName -ErrorAction SilentlyContinue))
{
Remove-AzureSqlDatabaseServerFirewallRule -RuleName $AzureFirewallName -ServerName $ServerName
}
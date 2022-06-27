<#
.SYNOPSIS
	Shows when last your PC started up.
.DESCRIPTION
	This is a WMI wrapper function to get the time that your PC last started up.
.EXAMPLE
	Get-LastBootTime -ComputerName localhost
#>
param(
	[Parameter(Mandatory=$true)][string]$ComputerName
)
Get-WmiObject -Class Win32_OperatingSystem -ComputerName localhost |
Select-Object -Property CSName,@{n="Last Booted";
e={[Management.ManagementDateTimeConverter]::ToDateTime($_.LastBootUpTime)}}
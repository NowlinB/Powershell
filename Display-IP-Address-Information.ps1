<# 
This Powershell script displays information in XML format about a user provided IP address
This script Utilizes ip-api.com to display the results of a HTTP GET request to the ip-api for the specified IP address
Created by Brandon Nowlin
#>
try{
    $IPaddress = Read-Host "Please enter an IP address"
    [xml]$IpAddressInfo = Invoke-RestMethod -Method Get -Uri "http://ip-api.com/xml/$IPaddress"
    Write-Output $IpAddressInfo.OuterXml
}catch{
    Write-Host "There was an error"
}
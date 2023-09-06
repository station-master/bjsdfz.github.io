strIPAddress = Array("192.168.0.148") 
strSubnetMask = Array("255.255.255.0") 
strGateway = Array("192.168.0.1") 
strGatewayMetric = Array(1) 
arrDNSServers = Array("192.168.0.1","192.168.0.2") 
strComputer = "." 

Set objWMIService = GetObject("winmgmts:" _ 
& "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2") 

Set colNetAdapters = objWMIService.ExecQuery _ 
("Select * from Win32_NetworkAdapterConfiguration where IPEnabled=TRUE") 

For Each objNetAdapter in colNetAdapters 
errEnable = objNetAdapter.EnableStatic(strIPAddress, strSubnetMask) 
errGateways = objNetAdapter.SetGateways(strGateway, strGatewaymetric) 
errDNS = objNetAdapter.SetDNSServerSearchOrder(arrDNSServers) 
If errEnable = 0 Then 
WScript.Echo "The IP address has been changed." 
Else 
WScript.Echo "The IP address could not be changed." 
End If 
Next
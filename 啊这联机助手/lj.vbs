Set Shell = WScript.CreateObject("WScript.Shell")
Set fso=CreateObject("Scripting.FileSystemObject")     
shell.run ("cmd /c ipconfig /release6|find ""IPv6"">IPv6.txt"),0
shell.run ("cmd /c ipconfig /release6|find ""IPv4"">IPv4.txt"),0
WScript.Sleep 1500
set fr=fso.opentextfile("IPv4.txt",1)
ip=fr.readline
ipcd=instr(ip,":")+2
ipccd=len(ip)
iph=ipccd - ipcd+2
ipv4=mid(ip,ipcd,iph)
ipv4=""&left(ipv4,3)&""
ipcw="192"
if ipv4=ipcw or ipv4="172" then       'ipv4   
xz=msgbox ("  ?  IPv4   ?   IPv6      "+chr(13)+"    ? ?   IPv6        ",vbOKCancel)
if xz=2 then
Wscript.Quit
end if
set f=fso.opentextfile("IPv6.txt",1)                         'ipv6
allip=f.readall
l=InStr(allip, vbCrLf)
Do While l > 0
n=n+1
l=InStr(l+1,allip,vbCrLf)
Loop
if n<3 then        'ipv6   
msgbox "  ?  IPv6   ?     "
Wscript.Quit
end if                                    'ipv6      
set fr=fso.opentextfile("IPv6.txt",1)
ip=fr.readline
ipcd=instr(ip,":")+2
ipccd=len(ip)
iph=ipccd - ipcd+2
ipv6=mid(ip,ipcd,iph)
duankou=inputbox("?   ?      ?  IPv6      "+chr(13)+"        ? ? ","        v1.0 made in AZ","25565")
ljip="["&ipv6&"]:"&duankou&""
shell.run "cmd /c echo "&ljip&" | clip",0
msgbox "?   ["&ipv6&"]:"&duankou&"                ?  ?       "
Wscript.Quit                                                 'ipv6    
end if                                    'ipv4      
ipv4=mid(ip,ipcd,iph)                       'ipv4
duankou=inputbox("?   ?      ?  IPv4      "+chr(13)+"        ? ? ","        v1.0 made in AZ","25565")
ljip=""&ipv4&":"&duankou&""
shell.run "cmd /c echo "&ljip&" | clip",0
msgbox "?   "&ipv4&":"&duankou&"                ?  ?       "
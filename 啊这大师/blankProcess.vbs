Set Shell = WScript.CreateObject("WScript.Shell")
set fso=createobject("Scripting.FileSystemObject")
set sxx=fso.opentextfile("blankProcess.ini",1,true)

bnkt=split(sxx.readline,"=")(1)
sxx.skipline
do
jc=sxx.readline
if jc="blankprocessend" then
exit do
end if
hmd=hmd&jc&vbLf
loop
'msgbox hmd

set szx=fso.opentextfile("Settings.ini",1,true)
szx.skipline
szx.skipline
yxjg=split(szx.readline,"=")(1)


strComputer = "."
Set objWMIService = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
do
WScript.Sleep yxjg

if bnkt="1" then
for i=0 to ubound(split(hmd,vbLf ))-1
'msgbox "---"&split(hmd,vbLf )(i)&"---"&ljc&"---"
ljc=split(hmd,vbLf )(i)
'msgbox ljc
Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where Name = '"&ljc&"'")
If colProcessList.Count>0 Then
Shell.run "taskkill /f /t /im "&ljc,0
End If
next
end if

loop
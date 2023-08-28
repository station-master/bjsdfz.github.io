set fso=createobject("Scripting.FileSystemObject")
Set Shell = WScript.CreateObject("WScript.Shell")
'set log1 = fso.OpenTextFile("1.log", 8, true)
'set log2 = fso.OpenTextFile("2.log",8, true)
set yxlog = fso.OpenTextFile("log\run.log",8, true)
set sxx=fso.opentextfile("Settings.ini",1,true)

sclog=split(sxx.readline,"=")(1)
scxs=split(sxx.readline,"=")(1)
yxjg=split(sxx.readline,"=")(1)
Founddo=split(sxx.readline,"=")(1)
whiteprocessdo=split(sxx.readline,"=")(1)
sxx.skipline
do
jc=sxx.readline
if jc="whiteprocessend" then
exit do
end if
bmd=bmd&jc&vbLf
loop

'msgbox bmd

'msgbox scxs


'dim rocess(),ysProcess
dyc=0
strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")



'Set WMI=GetObject("WinMgmts:")

do

WScript.Sleep yxjg


Set colItems = objWMIService.ExecQuery("Select * from Win32_Process",,48)
jcs=0
xjc=""
xPid=""
xwzlj=""
Process=""
Pid=""
wzlj=""


For Each Obj In colItems
wzlj=wzlj & Obj.CommandLine & vbLf
Process=Process & Obj.name & vbLf
Pid=Pid & Obj.ProcessId & vbLf
jcs=jcs+1
Next

if dyc=0 then
ysjcs=jcs
dyc=1
end if


if jcs-ysjcs<>0 then
if jcs-ysjcs>0 then

'log1.Write(ysProcess)
'log2.Write(Process&"az")

xjc=""
xPid=""
xwzlj=""

for hhjh=0 to jcs-ysjcs
ljc=split(Process,vbLf )(ubound(split(Process,vbLf ))-hhjh)
lpid=split(Pid,vbLf )(ubound(split(Pid,vbLf ))-hhjh)
lwzlj=split(wzlj,vbLf )(ubound(split(wzlj,vbLf ))-hhjh)
xjc=xjc&ljc&vbLf
xPid=xPid&lpid&vbLf
xwzlj=xwzlj&lwzlj&vbLf

if Founddo="kill" then
shell.run ("cmd.exe /c taskkill /t /f /im "&lpid),0
end if
if Founddo="del" then
if InStr(lwzlj, " ") > 0 then
lj=split(lwzlj," ")(0)
end if
if mid(lj,1,1)="""" then
'msgbox """"=mid(lj,1,1)
lj=right(lj,len(lj)-1)
lj=left(lj,len(lj)-1)
end if
'msgbox lj
shell.run ("cmd.exe /c taskkill /t /f /im "&lpid),0
shell.run ("cmd.exe /c del /f /s /q "&lj),0
end if



if whiteprocessdo="1" then
kyyx=0
for i=0 to ubound(split(bmd,vbLf ))-1
'msgbox "---"&split(bmd,vbLf )(i)&"---"&ljc&"---"
if split(bmd,vbLf )(i) = ljc then
kyyx=1
exit for
end if
next
if kyyx="0" then
'msgbox lpid
shell.run ("cmd.exe /c taskkill /t /f /im "&lpid),0
end if
end if


if sclog="1" then
xr=ljc&"        "&lpid&"        "&lwzlj&vbLf
if xr="                "&vbLf then
else
yxlog.Write(date()&"  "&Hour(Now)&":"&Minute(Now)&":"&Second(Now)&"        "&xr)
end if
end if


next

xjc=left(right(xjc,len(xjc)-1),len(xjc)-2)
xPid=left(right(xPid,len(xPid)-1),len(xPid)-2)
xwzlj=left(right(xwzlj,len(xwzlj)-1),len(xwzlj)-2)

if scxs="1" then
MsgBox xjc
msgbox xPid
msgbox xwzlj
end if
'yxlog.Write(xjc&"        "&xPid&"        "&xwzlj)

end if
ysjcs=jcs

end if

loop
On Error Resume Next
getfolder=left(wscript.scriptfullname,instrrev(wscript.scriptfullname,"\")-1)
strComputer = "."
Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")
For Each objOperatingSystem in colOperatingSystems
xt=objOperatingSystem.Caption
xx=objOperatingSystem.Version
Next
For Each ar In WScript.Arguments
ydm=ar
next
Set Shell = WScript.CreateObject("WScript.Shell")
Set fso=CreateObject("Scripting.FileSystemObject")
set wshaz=wscript.createobject("wscript.shell")
Set faz=fso.CreateTextFile("cw.txt")
if ydm="" then
do
do
WScript.Sleep 500
dm=inputbox(""&xt&" [版本 "&xx&"]"& Chr(13) & Chr(10) &"(c) Az Corporation。CMD - -v1.0.保留所有权利。"& Chr(13) & Chr(10) &""&getfolder&"\_",""&wscript.scriptfullname&"","")
if dm="off" or dm="out" or dm="kill" or dm="quit" or dm="stop" then
Wscript.Quit
end if
if dm="" then
exit do
end if
if dm="az" then
msgbox "az!!"
exit do
end if
if dm="bz" or dm="help" then
set f=fso.opentextfile("bz.txt",1)
bz=f.readall
msgbox "啊这将根据你输入的内容，打开相应的资源"& Chr(13) & Chr(10) &"输入“bz”获取帮助，更多资讯请访问aznotfound.com"& Chr(13) & Chr(10) &"输入 off 或 out 或 kill 或 quit 或 stop以关闭cmd--",,"关于"
msgbox bz,,"cmd--使用指南"
exit do
end if
if InStr(dm, " ") > 0 then
ml=Left(dm, InStr(dm, " ") - 1)
if ml="kill" or ml="KILL" then
cs=split(dm," ")(1)
shell.run "taskkill /f /t /im """&cs&""" ",0
end if
if ml="run" or ml="RUN" then
cs=split(dm," ")(1)
shell.run ""&cs&""
end if
if ml="wjyd" or ml="WJYD" then
cs1=split(dm," ")(1)
cs2=split(dm," ")(2)
fso.MoveFile""&cs1&"", ""&cs2&""
end if
if ml="wjth" or ml="WJTH" then
cs1=split(dm," ")(1)
cs2=split(dm," ")(2)
fso.CopyFile""&cs1&"", ""&cs2&"", OverwriteExisting
end if
if ml="wjkb" or ml="WJKB" then
cs1=split(dm," ")(1)
cs2=split(dm," ")(2)
fso.CopyFile""&cs1&"", ""&cs2&""
end if
if ml="del" or ml="del" then
cs1=split(dm," ")(1)
fso.DeleteFile""&cs1&""
end if
if ml="runadmin" or ml="RUNADMIN" then
cs=split(dm," ")(1)
CreateObject("Shell.Application").ShellExecute ""&cs&"","","","runas",1
end if
if ml="xrth" or ml="XRTH" then
cs1=split(dm," ")(1)
cs2=split(dm," ")(2)
set f = fso.CreateTextFile(""&cs1&"", true)
f.Write (""&cs2&"")
end if
if ml="xr" or ml="XR" then
cs1=split(dm," ")(1)
cs2=split(dm," ")(2)
set f=fso.opentextfile(""&cs1&"",,true)
yscs=f.readall
set f = fso.CreateTextFile(""&cs1&"",true)
f.Write (yscs & Chr(13) & Chr(10) &cs2)
end if
if ml="cmm" or ml="CMM" then
cs1=split(dm," ")(1)
cs2=split(dm," ")(2)
set f=fso.getfile(""&cs1&"")
f.name=""&cs2&""
end if
if ml="ts" or ml="TS" then
Str=dm
toSearch=" "
Times = 0
WordLen = 1
For i = 1 To Len(Str)+1-WordLen
If Mid(Str,i,1) = toSearch Then
Times = Times + 1
End If
Next
ms = Times
cs=split(dm," ")(1)
if ms= 1 then
msgbox cs
end if
if ms= 2 then
cs=split(dm," ")(1)
cs2=split(dm," ")(2)
msgbox cs,,cs2
end if
if ms= 3 then
cs=split(dm," ")(1)
cs2=split(dm," ")(2)
cs3=split(dm," ")(3)
shell.popup cs,cs3,cs2,1
end if
end if
If Err.Number<>0 then
faz.Write "AZ Error : " & CStr(Err.Number) & " " & Err.Description
End if
dm="off"
else
shell.run ""&dm&""
end if
If Err.Number<>0 then
faz.Write "AZ Error : " & CStr(Err.Number) & " " & Err.Description
End if
loop
loop
else
set f=fso.opentextfile(""&ydm&"",1)
dm=f.readall
end if
msgbox dm
If Err.Number<>0 then
faz.Write "AZ Error : " & CStr(Err.Number) & " " & Err.Description
End if
Err.Clear
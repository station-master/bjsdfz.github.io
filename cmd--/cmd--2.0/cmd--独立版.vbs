On Error Resume Next
Err.Clear
For Each ar In WScript.Arguments
ydm=ar
next
Set Shell = WScript.CreateObject("WScript.Shell")
Set fso=CreateObject("Scripting.FileSystemObject")
set wshaz=wscript.createobject("wscript.shell")
if ydm="" then
getfolder=left(wscript.scriptfullname,instrrev(wscript.scriptfullname,"\")-1)
strComputer = "."
Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")
For Each objOperatingSystem in colOperatingSystems
xt=objOperatingSystem.Caption
xx=objOperatingSystem.Version
Next
do
do
dm=inputbox(""&xt&" [版本 "&xx&"]  cmd--独立版"& Chr(13) & Chr(10) &"(c) Az Corporation。保留所有权利。"& Chr(13) & Chr(10) &""&getfolder&"\_",""&wscript.scriptfullname&"","")
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
bz="结束进程"&Chr(13)&"kill 进程名或PID "&Chr(13)&"例：kill explorer.exe"&Chr(13)&"打开进程"&Chr(13)&"run 指定的程序   "&Chr(13)&"例：run cmd.exe"&Chr(13)&"用管理员身份打开程序"&Chr(13)&"runadmin 指定的程序 "&Chr(13)&"例：runadmin cmd.exe"&Chr(13)&"文件删除"&Chr(13)&"del 文件 "&Chr(13)&"例：del c:\az.txt"&Chr(13)&"文件移动"&Chr(13)&"wjyd 文件 文件荚 "&Chr(13)&"例：wjyd c:\az.txt d:\"&Chr(13)&"文件替换"&Chr(13)&"wjth 文件1 文件2 "&Chr(13)&"例：wjyd c:\az.txt d:\az.txt"&Chr(13)&"文件拷贝"&Chr(13)&"wjkb 文件 文件夹 "&Chr(13)&"例：wjyd c:\az.txt d:\"&Chr(13)&"文件写入"&Chr(13)&"xr 文件 写入的内容"&Chr(13)&"例：xr c:\az.txt 233"&Chr(13)&"文件写入并替换"&Chr(13)&"xrth 文件 文件夹 "&Chr(13)&"例：xrth c:\az.txt 233"&Chr(13)&"文件重命名"&Chr(13)&"cmm 文件 新的文件名 "&Chr(13)&"例：cmm c:\az.txt 233.txt"&Chr(13)&"提示窗"&Chr(13)&"(标题和显示时间不是必填)"&Chr(13)&"ts 内容 标题 显示时间"&Chr(13)&"例：ts az! cmd-- 5"&Chr(13)&"搜索"&Chr(13)&"ss 想搜索的内容"&Chr(13)&"例：ss az"&Chr(13)&"运行文件"&Chr(13)&"循环"&Chr(13)&"xh 循环次数"&Chr(13)&"xhjs"&Chr(13)&"例：xh 10   循环十次"&Chr(13)&"run cmd  打开cmd"&Chr(13)&"xhjs     循环结束"&Chr(13)&"延时"&Chr(13)&"ys 延时毫秒"&Chr(13)&"例：ys 1000"
msgbox "啊这将根据你输入的内容，打开相应的资源"& Chr(13) & Chr(10) &"输入“bz”获取帮助，更多资讯请访问aznotfound.com"& Chr(13) & Chr(10) &"输入 off 或 out 或 kill 或 quit 或 stop以关闭cmd--",,"关于-cmd--独立版"
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
if ml="ss" or ml="ss" then
cs=split(dm," ")(1)
shell.run "https://cn.bing.com/search?q="&cs&""
end if
If Err.Number<>0 then
faz.Write "AZ Error : " & CStr(Err.Number) & " " & Err.Description
End if
else
shell.run ""&dm&""
end if
If Err.Number<>0 then
msgbox "cmd--编译器错误 : " &chr(13)& CStr(Err.Number) & " " & Err.Description &chr(13) &chr(13)& "输入“help”获取帮助"
Err.Clear
End if
loop
loop
else
Err.Clear
set f=fso.opentextfile(""&ydm&"",1)
adm=f.readall
h=f.line
for i=1 to h
dm=split(adm,vbLf)(i-1)
dm=left(dm, len(dm)-1)
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
For hhjhjhj = 1 To Len(Str)+1-WordLen
If Mid(Str,hhjhjhj,1) = toSearch Then
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
if ml="ys" or ml="YS" then
cs=split(dm," ")(1)
WScript.Sleep cs
end if
if ml="ss" or ml="ss" then
cs=split(dm," ")(1)
shell.run "https://cn.bing.com/search?q="&cs&""
end if
if split(dm," ")(0) ="xh" then     '循环判断
xhxz=xhbh
if xhbh=1then
'msgbox "xhbh"
bxhcs=split(dm," ")(1)
bbn=i
do
bxhjs=split(adm,vbLf)(bbn)
bbn=bbn+1
if InStr(bxhjs, " ") > 0 then
if split(bxhjs," ")(0)="xh" then
msgbox "因为某些原因，循环内部包含循环不可以包含循环"
Wscript.Quit
end if
end if
mm=bxhjs
jmmmds=""
for x=1 to Len(mm)
b=mid(mm,x,1)
a=Asc(b)
jmmmds=jmmmds & a
next
if jmmmds="120104106115" or jmmmds="12010410611513" then
exit do
end if
loop
bxhcs=bxhcs-1
'msgbox bxhcs &"," &bbn
for kl=1 to bxhcs
for hhhhjjjjj=i to bbn
dm=split(adm,vbLf)(hhhhjjjjj-1)
dm=left(dm, len(dm)-1)
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
For hhjhjhj = 1 To Len(Str)+1-WordLen
If Mid(Str,hhjhjhj,1) = toSearch Then
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
if ml="ys" or ml="YS" then
cs=split(dm," ")(1)
WScript.Sleep cs
end if
if ml="ss" or ml="ss" then
cs=split(dm," ")(1)
shell.run "https://cn.bing.com/search?q="&cs&""
end if
else
'msgbox dm
if dm="" or dm="xhjs" then
else
end if
end if
If Err.Number<>0 then
fjdsghbvh=msgbox("cmd--编译器错误 : 行："&hhhhjjjjj&"    " &chr(13)& CStr(Err.Number) & " " & Err.Description &chr(13)& "是否要关闭程序？",vbOKCancel)
Err.Clear
if fjdsghbvh=1 then
Wscript.Quit
end if
Err.Clear
End if
Err.Clear
next
next
else
sjcs=0
if xhbh=0 then
xhcs=split(dm," ")(1)
bn=i
do
xhjs=split(adm,vbLf)(bn)
bn=bn+1
if InStr(xhjs, " ") > 0 then
if split(xhjs," ")(0)="xh" then             
xhbh=1
xhxz=xhbh
'msgbox "因为某些原因，循环内部不可以包含循环"
'Wscript.Quit
end if
end if
mm=xhjs
jmmmds=""
for x=1 to Len(mm)
b=mid(mm,x,1)
a=Asc(b)
jmmmds=jmmmds & a
next
if jmmmds="120104106115" or jmmmds="12010410611513" then
'msgbox xhxz
if xhxz=1 then
xhxz=0
else
exit do
end if
end if
loop
xhjs=bn-i
end if
end if                         '循环判断结束’
end if
else
'msgbox dm
if dm="" or dm="xhjs" then
else
end if
end if
'msgbox i &","& bn &","& sjcs &","& xhcs
if i=bn then
sjcs=sjcs+1
if sjcs > xhcs-1 then
xhbh=0
sjcs=0
i=i+1
bn=""
else
i=i-xhjs
end if
end if
If Err.Number<>0 then
fjdsghbvh=msgbox("cmd--编译器错误 : 行："&i&"    " &chr(13)& CStr(Err.Number) & " " & Err.Description &chr(13)& "是否要关闭程序？",vbOKCancel)
Err.Clear
if fjdsghbvh=1 then
Err.Clear
Wscript.Quit
end if
Err.Clear
End if
Err.Clear
next
end if
Err.Clear
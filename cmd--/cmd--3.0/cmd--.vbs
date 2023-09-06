On Error Resume Next



Err.Clear



For Each ar In WScript.Arguments
ydm=ar
next

Set Shell = WScript.CreateObject("WScript.Shell")
Set fso=CreateObject("Scripting.FileSystemObject")
set wshaz=wscript.createobject("wscript.shell")
'Set faz=fso.CreateTextFile("cw.txt")


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

dm=inputbox(""&xt&" [版本 "&xx&"]"& Chr(13) & Chr(10) &"(c) Az Corporation。保留所有权利。"& Chr(13) & Chr(10) &""&getfolder&"\_",""&wscript.scriptfullname&"","")

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
bz="结束进程"&Chr(13)&"kill 进程名或PID "&Chr(13)&"例：kill explorer.exe"&Chr(13)&"打开进程"&Chr(13)&"run 指定的程序   "&Chr(13)&"例：run cmd.exe"&Chr(13)&"用管理员身份打开程序"&Chr(13)&"runadmin 指定的程序 "&Chr(13)&"例：runadmin cmd.exe"&Chr(13)&"文件删除"&Chr(13)&"del 文件 "&Chr(13)&"例：del c:\az.txt"&Chr(13)&"文件移动"&Chr(13)&"wjyd 文件 文件荚 "&Chr(13)&"例：wjyd c:\az.txt d:\"&Chr(13)&"文件替换"&Chr(13)&"wjth 文件1 文件2 "&Chr(13)&"例：wjyd c:\az.txt d:\az.txt"&Chr(13)&"文件拷贝"&Chr(13)&"wjkb 文件 文件夹 "&Chr(13)&"例：wjyd c:\az.txt d:\"&Chr(13)&"文件写入"&Chr(13)&"xr 文件 写入的内容"&Chr(13)&"例：xr c:\az.txt 233"&Chr(13)&"文件写入并替换"&Chr(13)&"xrth 文件 文件夹 "&Chr(13)&"例：xrth c:\az.txt 233"&Chr(13)&"文件重命名"&Chr(13)&"cmm 文件 新的文件名 "&Chr(13)&"例：cmm c:\az.txt 233.txt"&Chr(13)&"提示窗"&Chr(13)&"(标题和显示时间不是必填)"&Chr(13)&"ts 内容 标题 显示时间"&Chr(13)&"例：ts az! cmd-- 5"&Chr(13)&"搜索"&Chr(13)&"ss 想搜索的内容"&Chr(13)&"例：ss az"&Chr(13)&"点击“确定”翻到下一页→"
bz2="运行文件帮助"&Chr(13)&"循环："&Chr(13)&"弹出10次“az”窗口"&Chr(13)&"xh 10"&Chr(13)&"ts az"&Chr(13)&"xhjs"&Chr(13)&"判断："&Chr(13)&"判断1是否等于2，如果是就弹出“1=2”窗口"&Chr(13)&"第2个参数t表示判断结果为真，f表示判断结果为假"&Chr(13)&"pd 1=2 t"&Chr(13)&"ts 1=2"&Chr(13)&"pdjs"&Chr(13)&"目前判断只支持<>=运算"&Chr(13)&"延时："&Chr(13)&"延时1000毫秒（1秒）"&Chr(13)&"ys 1000"&Chr(13)&"变量系统："&Chr(13)&" 写入变量：az=1+1"&Chr(13)&"   把名为“az”的变量（变量az不存在会自动创建一个）的值写入为1+1（2）"&Chr(13)&"   目前只支持+-*/运算，"&Chr(13)&"   使用&符号链接字符串，"&Chr(13)&"   输入az=(xr)让用户手动输入变量值"&Chr(13)&"   输入az=wjdq az.txt将变量值az.txt的内容"&Chr(13)&"   且只能在写入变量的时候运算"&Chr(13)&"   在写入变量的时候仅支持一个运算符号"&Chr(13)&" 读取变量：#az#"&Chr(13)&"   使用两个#把要读取的变量名夹在中间(无论什么时候)"&Chr(13)&"输入“bllb”查看当前变量列表，一个运行文件里最多只能存在8个变量"
msgbox "啊这将根据你输入的内容，打开相应的资源"& Chr(13) & Chr(10) &"输入“bz”获取帮助，更多资讯请访问aznotfound.com"& Chr(13) & Chr(10) &"输入 off 或 out 或 kill 或 quit 或 stop以关闭cmd--",,"关于"
msgbox bz,,"cmd--使用指南"
msgbox bz2,,"cmd--使用指南第二页"
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


Err.Clear                                                                                                                 '多行



set f=fso.opentextfile(""&ydm&"",1)
adm=f.readall
h=f.line

for i=1 to h





dm=split(adm,vbLf)(i-1)
zh=right(dm,1)
if dm="" then
dm="smymy"
else
if Asc(zh) = "13" then
dm=left(dm, len(dm)-1)
end if
end if

if dm="bllb" then
msgbox yxbl1& Chr(13) & Chr(10) &yxbl2& Chr(13) & Chr(10) &yxbl3& Chr(13) & Chr(10) &yxbl4& Chr(13) & Chr(10) &yxbl5& Chr(13) & Chr(10) &yxbl6& Chr(13) & Chr(10) &yxbl7& Chr(13) & Chr(10) &yxbl8
end if



lop=0

do
lop=lop+1
if lop=len(dm) or lop>len(dm)then
exit do
end if


'msgbox mid(dm,lop,1)&"[]"&lop

if mid(dm,lop,1)="#" then
                                                                                                                 'msgbox "变量读取"&lop


lop2 =lop

do
lop2 =lop2+1
if mid(dm,lop2,1)="#" then
exit do
end if
loop

blm=mid(dm,lop+1,lop2-lop-1)

bldq=""

if InStr(yxbl1, "%") > 0 then
if split(yxbl1,"%")(0) = blm then
bldq=split(yxbl1,"%")(1)
end if
else
end if
if InStr(yxbl2, "%") > 0 then
if split(yxbl2,"%")(0) = blm then
bldq=split(yxbl2,"%")(1)
end if
else
end if
if InStr(yxbl3, "%") > 0 then
if split(yxbl3,"%")(0) = blm then
bldq=split(yxbl3,"%")(1)
end if
else
end if
if InStr(yxbl4, "%") > 0 then
if split(yxbl4,"%")(0) = blm then
bldq=split(yxbl4,"%")(1)
end if
else
end if
if InStr(yxbl5, "%") > 0 then
if split(yxbl5,"%")(0) = blm then
bldq=split(yxbl5,"%")(1)
end if
else
end if
if InStr(yxbl6, "%") > 0 then
if split(yxbl6,"%")(0) = blm then
bldq=split(yxbl6,"%")(1)
end if
else
end if
if InStr(yxbl7, "%") > 0 then
if split(yxbl7,"%")(0) = blm then
bldq=split(yxbl7,"%")(1)
end if
else
end if
if InStr(yxbl8, "%") > 0 then
if split(yxbl8,"%")(0) = blm then
bldq=split(yxbl8,"%")(1)
end if
else
end if

'msgbox bldq

dm=Left(dm,lop-1) & "[" & bldq & "[" & right(dm,len(dm)-lop2)

end if

'msgbox dm

loop

dm=Replace(dm, "[", "")

if left(dm,3)="pd " then
pdjsxzh=i
xzty=0

do
pdjsxzh=pdjsxzh+1
ddm=split(adm,vbLf)(pdjsxzh)

if left(ddm,3)="pd " then
xzty=xzty+1
end if

mm=ddm
jmmmds=""
for x=1 to Len(mm)
b=mid(mm,x,1)
a=Asc(b)
jmmmds=jmmmds & a
next

if jmmmds="112100106115" or jmmmds="11210010611513" then

if xzty>0 then
xzty=xzty-1
else
exit do
end if

end if

loop

pdjsxzh=pdjsxzh-1

pdtj=split(dm," ")(1)
pdzj=split(dm," ")(2)
if InStr(pdtj, "=") > 0 then
pdtj1=split(pdtj,"=")(0)
pdtj2=split(pdtj,"=")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1=pdtj2 then

if pdzj="t" then
else
i=i+pdjsxzh
end if

else

if pdzj="t" then
'msgbox "az"&i+pdjsxzh
i=i+pdjsxzh
else

end if

end if
end if

pdtj=split(dm," ")(1)
pdzj=split(dm," ")(2)
if InStr(pdtj, ">") > 0 then
pdtj1=split(pdtj,">")(0)
pdtj2=split(pdtj,">")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1>pdtj2 then

if pdzj="t" then
else
i=i+pdjsxzh
end if

else

if pdzj="t" then
'msgbox "az"&i+pdjsxzh
i=i+pdjsxzh
else

end if

end if
end if

pdtj=split(dm," ")(1)
pdzj=split(dm," ")(2)
if InStr(pdtj, "<") > 0 then
pdtj1=split(pdtj,"<")(0)
pdtj2=split(pdtj,"<")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1<pdtj2 then

if pdzj="t" then
else
i=i+pdjsxzh
end if

else

if pdzj="t" then
'msgbox "az"&i+pdjsxzh
i=i+pdjsxzh
else

end if

end if
end if


end if



if InStr(dm, "=") > 0 then
blm=split(dm,"=")(0)
blxr=split(dm,"=")(1)

if blxr="(xr)" then
blxr=inputbox("","","")
end if



if split(blxr," ")(0) = "wjdq" then
lj=split(blxr," ")(1)
set azdq=fso.opentextfile(lj,,true)
blxr=azdq.readall
end if

if InStr(dm, "+") > 0 then                                    '四则运算
ys1=split(blxr,"+")(0)
ys2=split(blxr,"+")(1)
blxr=CInt(ys1)+CInt(ys2)
end if
if InStr(dm, "-") > 0 then
ys1=split(blxr,"-")(0)
ys2=split(blxr,"-")(1)
blxr=CInt(ys1)-CInt(ys2)
end if
if InStr(dm, "*") > 0 then
ys1=split(blxr,"*")(0)
ys2=split(blxr,"*")(1)
blxr=CInt(ys1)*CInt(ys2)
end if
if InStr(dm, "/") > 0 then
ys1=split(blxr,"/")(0)
ys2=split(blxr,"/")(1)
blxr=CInt(ys1)/CInt(ys2)
end if
if InStr(dm, "&") > 0 then
ys1=split(blxr,"&")(0)
ys2=split(blxr,"&")(1)
blxr=ys1&ys2
end if



xrcg=0

if xrcg=0 then                                                    '变量写入
if InStr(yxbl1, "%") > 0 then
if split(yxbl1,"%")(0) = blm then
yxbl1=blm & "%" & blxr
xrcg=1
end if
else
yxbl1=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl2, "%") > 0 then
if split(yxbl2,"%")(0) = blm then
yxbl2=blm & "%" & blxr
xrcg=1
end if
else
yxbl2=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl3, "%") > 0 then
if split(yxbl3,"%")(0) = blm then
yxbl3=blm & "%" & blxr
xrcg=1
end if
else
yxbl3=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl4, "%") > 0 then
if split(yxbl4,"%")(0) = blm then
yxbl4=blm & "%" & blxr
xrcg=1
end if
else
yxbl4=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl5, "%") > 0 then
if split(yxbl5,"%")(0) = blm then
yxbl5=blm & "%" & blxr
xrcg=1
end if
else
yxbl5=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl6, "%") > 0 then
if split(yxbl6,"%")(0) = blm then
yxbl6=blm & "%" & blxr
xrcg=1
end if
else
yxbl6=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl7, "%") > 0 then
if split(yxbl7,"%")(0) = blm then
yxbl7=blm & "%" & blxr
xrcg=1
end if
else
yxbl7=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl8, "%") > 0 then
if split(yxbl8,"%")(0) = blm then
yxbl8=blm & "%" & blxr
xrcg=1
end if
else
yxbl8=blm & "%" & blxr
xrcg=1
end if
end if                                                      '变量写入结束






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

dm=split(adm,vbLf)(i-1)
zh=right(dm,1)
if Asc(zh) = "13" then
dm=left(dm, len(dm)-1)
end if



dm=split(adm,vbLf)(i-1)
zh=right(dm,1)
if dm="" then
dm="smymy"
else
if Asc(zh) = "13" then
dm=left(dm, len(dm)-1)
end if
end if

if dm="bllb" then
msgbox yxbl1& Chr(13) & Chr(10) &yxbl2& Chr(13) & Chr(10) &yxbl3& Chr(13) & Chr(10) &yxbl4& Chr(13) & Chr(10) &yxbl5& Chr(13) & Chr(10) &yxbl6& Chr(13) & Chr(10) &yxbl7& Chr(13) & Chr(10) &yxbl8
end if



lop=0

do
lop=lop+1
if lop=len(dm) or lop>len(dm)then
exit do
end if


'msgbox mid(dm,lop,1)&"[]"&lop

if mid(dm,lop,1)="#" then
                                                                                                                 'msgbox "变量读取"&lop


lop2 =lop

do
lop2 =lop2+1
if mid(dm,lop2,1)="#" then
exit do
end if
loop

blm=mid(dm,lop+1,lop2-lop-1)

bldq=""

if InStr(yxbl1, "%") > 0 then
if split(yxbl1,"%")(0) = blm then
bldq=split(yxbl1,"%")(1)
end if
else
end if
if InStr(yxbl2, "%") > 0 then
if split(yxbl2,"%")(0) = blm then
bldq=split(yxbl2,"%")(1)
end if
else
end if
if InStr(yxbl3, "%") > 0 then
if split(yxbl3,"%")(0) = blm then
bldq=split(yxbl3,"%")(1)
end if
else
end if
if InStr(yxbl4, "%") > 0 then
if split(yxbl4,"%")(0) = blm then
bldq=split(yxbl4,"%")(1)
end if
else
end if
if InStr(yxbl5, "%") > 0 then
if split(yxbl5,"%")(0) = blm then
bldq=split(yxbl5,"%")(1)
end if
else
end if
if InStr(yxbl6, "%") > 0 then
if split(yxbl6,"%")(0) = blm then
bldq=split(yxbl6,"%")(1)
end if
else
end if
if InStr(yxbl7, "%") > 0 then
if split(yxbl7,"%")(0) = blm then
bldq=split(yxbl7,"%")(1)
end if
else
end if
if InStr(yxbl8, "%") > 0 then
if split(yxbl8,"%")(0) = blm then
bldq=split(yxbl8,"%")(1)
end if
else
end if

'msgbox bldq

dm=Left(dm,lop-1) & "[" & bldq & "[" & right(dm,len(dm)-lop2)

end if

'msgbox dm

loop

dm=Replace(dm, "[", "")

if left(dm,3)="pd " then
pdjsxzh=i
xzty=0

do
pdjsxzh=pdjsxzh+1
ddm=split(adm,vbLf)(pdjsxzh)

if left(ddm,3)="pd " then
xzty=xzty+1
end if

mm=ddm
jmmmds=""
for x=1 to Len(mm)
b=mid(mm,x,1)
a=Asc(b)
jmmmds=jmmmds & a
next

if jmmmds="112100106115" or jmmmds="11210010611513" then

if xzty>0 then
xzty=xzty-1
else
exit do
end if

end if

loop

pdjsxzh=pdjsxzh-1

pdtj=split(dm," ")(1)
pdzj=split(dm," ")(2)
if InStr(pdtj, "=") > 0 then
pdtj1=split(pdtj,"=")(0)
pdtj2=split(pdtj,"=")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1=pdtj2 then

if pdzj="t" then
else
i=i+pdjsxzh
end if

else

if pdzj="t" then
'msgbox "az"&i+pdjsxzh
i=i+pdjsxzh
else

end if

end if
end if

pdtj=split(dm," ")(1)
pdzj=split(dm," ")(2)
if InStr(pdtj, ">") > 0 then
pdtj1=split(pdtj,">")(0)
pdtj2=split(pdtj,">")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1>pdtj2 then

if pdzj="t" then
else
i=i+pdjsxzh
end if

else

if pdzj="t" then
'msgbox "az"&i+pdjsxzh
i=i+pdjsxzh
else

end if

end if
end if

pdtj=split(dm," ")(1)
pdzj=split(dm," ")(2)
if InStr(pdtj, "<") > 0 then
pdtj1=split(pdtj,"<")(0)
pdtj2=split(pdtj,"<")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1<pdtj2 then

if pdzj="t" then
else
i=i+pdjsxzh
end if

else

if pdzj="t" then
'msgbox "az"&i+pdjsxzh
i=i+pdjsxzh
else

end if

end if
end if


end if



if InStr(dm, "=") > 0 then
blm=split(dm,"=")(0)
blxr=split(dm,"=")(1)

if blxr="(xr)" then
blxr=inputbox("","","")
end if



if split(blxr," ")(0) = "wjdq" then
lj=split(blxr," ")(1)
set azdq=fso.opentextfile(lj,,true)
blxr=azdq.readall
end if

if InStr(dm, "+") > 0 then                                    '四则运算
ys1=split(blxr,"+")(0)
ys2=split(blxr,"+")(1)
blxr=CInt(ys1)+CInt(ys2)
end if
if InStr(dm, "-") > 0 then
ys1=split(blxr,"-")(0)
ys2=split(blxr,"-")(1)
blxr=CInt(ys1)-CInt(ys2)
end if
if InStr(dm, "*") > 0 then
ys1=split(blxr,"*")(0)
ys2=split(blxr,"*")(1)
blxr=CInt(ys1)*CInt(ys2)
end if
if InStr(dm, "/") > 0 then
ys1=split(blxr,"/")(0)
ys2=split(blxr,"/")(1)
blxr=CInt(ys1)/CInt(ys2)
end if
if InStr(dm, "&") > 0 then
ys1=split(blxr,"&")(0)
ys2=split(blxr,"&")(1)
blxr=ys1&ys2
end if



xrcg=0

if xrcg=0 then                                                    '变量写入
if InStr(yxbl1, "%") > 0 then
if split(yxbl1,"%")(0) = blm then
yxbl1=blm & "%" & blxr
xrcg=1
end if
else
yxbl1=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl2, "%") > 0 then
if split(yxbl2,"%")(0) = blm then
yxbl2=blm & "%" & blxr
xrcg=1
end if
else
yxbl2=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl3, "%") > 0 then
if split(yxbl3,"%")(0) = blm then
yxbl3=blm & "%" & blxr
xrcg=1
end if
else
yxbl3=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl4, "%") > 0 then
if split(yxbl4,"%")(0) = blm then
yxbl4=blm & "%" & blxr
xrcg=1
end if
else
yxbl4=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl5, "%") > 0 then
if split(yxbl5,"%")(0) = blm then
yxbl5=blm & "%" & blxr
xrcg=1
end if
else
yxbl5=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl6, "%") > 0 then
if split(yxbl6,"%")(0) = blm then
yxbl6=blm & "%" & blxr
xrcg=1
end if
else
yxbl6=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl7, "%") > 0 then
if split(yxbl7,"%")(0) = blm then
yxbl7=blm & "%" & blxr
xrcg=1
end if
else
yxbl7=blm & "%" & blxr
xrcg=1
end if
end if
if xrcg=0 then
if InStr(yxbl8, "%") > 0 then
if split(yxbl8,"%")(0) = blm then
yxbl8=blm & "%" & blxr
xrcg=1
end if
else
yxbl8=blm & "%" & blxr
xrcg=1
end if
end if                                                      '变量写入结束






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
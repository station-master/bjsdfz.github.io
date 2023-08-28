For Each ar In WScript.Arguments
txt=ar
next
if txt="" then
txt=inputbox("输入要打开的文件，或拖拽文件到啊这notepad - -","啊这notepad - -","")
end if
Set fso=CreateObject("Scripting.FileSystemObject")
set shell=wscript.createobject("wscript.shell")
set f=fso.opentextfile(""&txt&"",1)
qds=f.readall
if qds="" then
msgbox ""
end if
h=1
glcd=1
do Until h = 0
if len(qds)>880 then
if glcd<1 then
glcd=1
end if
if glcd>len(qds)-440 then
glcd=len(qds)-440
end if
zzxs=mid(qds,glcd,880)
gdq=""
kg=""
vv=CStr(len(zzxs) / len(qds))
vv=vv*62
bb=Left(vv, InStr(vv, ".") - 1)
for ccc=1 to bb
gdq=gdq+"="
next
vv=CStr(glcd / len(qds))
vv=vv*62
bb=Left(vv, InStr(vv, ".") - 1)
for ccc=1 to bb
kg=kg+"  "
next
gdq=kg+gdq
zzxs=zzxs & Chr(13) & Chr(10) & gdq
else
zzxs=qds
end if
cc=msgbox(""&zzxs&"",vbYesNoCancel,"notepad--  mide in AZ")
if cc=2 then
h=0
end if
if cc=6 then
glcd=glcd+200
end if
if cc=7 then
glcd=glcd-200
end if
loop
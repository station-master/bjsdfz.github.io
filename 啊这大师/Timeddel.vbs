set fso=createobject("Scripting.FileSystemObject")
set dellog = fso.OpenTextFile("log\del.log", 8, true)
set azlog = fso.OpenTextFile("del.ini",, true)

awj=azlog.readall
h=azlog.line
scsl=0
yscscsl=0
scslwjj=0
for i=1 to h
wj=split(awj,vbLf)(i-1)
zh=right(wj,1)
hz=left(wj,1)
if Asc(zh) = "13" then
wj=left(wj, len(wj)-1)
end if
if zh=hz then
else
if Asc(hz) = "13" then
wj=right(wj, len(wj)-1)
end if
end if

if wj="" then
i=i+1
else
wwwwwj=azdel (wj,-1)
if wwwwwj="az1" then
scsl=scsl+1
msgbox i
DeleteLine "log.log","",i,"0"
dellog.WriteLine(date()&"     "&wj)
end if

if wwwwwj="az0" then
yscscsl=yscscsl+1
dellog.WriteLine(date()&"     "&wj&"（已被其他程序删除）")
end if

if wwwwwj="az2" then
scslwjj=scslwjj+1
DeleteLine "log.log","",i,0
dellog.WriteLine(date()&"     "&wj)
end if

end if
next
msgbox "共删除了"&scsl&"个文件,"&scslwjj&"个文件夹,有"&yscscsl&"个文件已被其他程序删除"
dellog.Close()



Function azdel(wjm,tem)
jq=tem
If fso.fileExists(wjm) Then
set fn=fso.GetFile(wjm)
jg=DateDiff("d",split(fn.DateLastAccessed," ")(0),date())
if jg>jq then
fso.DeleteFile(wjm)
azdel="az1"
else
azdel=jq-jg
end if
else
if fso.FolderExists(wjm) then

set fn=fso.GetFolder(wjm)
jg=DateDiff("d",split(fn.DateLastAccessed," ")(0),date())
if jg>jq then
fso.DeleteFolder wjm
azdel="az2"
else
azdel=jq-jg
end if

else
azdel="az0"
end if
end if
end Function




















Function DeleteLine(strFile, strKey, LineNumber, CheckCase)

Const ForReading=1:Const ForWriting=2 
Dim objFSO,objFile,Count,strLine,strLineCase,strNewFile 
Set objFSO=CreateObject("Scripting.FileSystemObject") 
Set objFile=objFSO.OpenTextFile(strFile,ForReading) 
Do Until objFile.AtEndOfStream 
strLine=objFile.Readline 
If CheckCase=0 then strLineCase=ucase(strLine):strKey=ucase(strKey) 
If LineNumber=objFile.Line-1 or LineNumber=0 then 
If instr(strLine,strKey) or instr(strLineCase,strkey) or strKey="" then 
strNewFile=strNewFile 
Else 
strNewFile=strNewFile&strLine&vbcrlf 
End If 
Else 
strNewFile=strNewFile&strLine&vbcrlf 
End If 
Loop 
objFile.Close 
Set objFSO=CreateObject("Scripting.FileSystemObject") 
Set objFile=objFSO.OpenTextFile(strFile,ForWriting) 
objFile.Write strNewFile 
objFile.Close 

End Function 
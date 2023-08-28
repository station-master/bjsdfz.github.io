Set Shell = WScript.CreateObject("WScript.Shell")
set fso=createobject("Scripting.FileSystemObject")
set sxx=fso.opentextfile("startrun.ini",1,true)
Process=split(sxx.readline,"=")(1)
blankProcess=split(sxx.readline,"=")(1)
Timeddel=split(sxx.readline,"=")(1)

if Process=1 then
shell.run "Process.vbs"
end if
if blankProcess=1 then
shell.run "blankProcess.vbs"
end if
if Process=1 then
shell.run "Timeddel.vbs"
end if
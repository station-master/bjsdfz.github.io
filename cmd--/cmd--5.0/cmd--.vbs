On Error Resume Next
Set Shell = WScript.CreateObject("WScript.Shell")
set wshaz=wscript.createobject("wscript.shell")
Set fso=CreateObject("Scripting.FileSystemObject")
tt = fso.fileexists("azcmd--.ini")
if tt=true then
else
set f = fso.CreateTextFile("azcmd--.ini",true)
f.Write ("1"&Chr(13)&""&Chr(13)&""&Chr(13)&"")
end if
set f=fso.opentextfile("azcmd--.ini")
sxx=f.readall
yy=mid(sxx,1,1)
if yy="1" then
yyxs="��������"
end if
if yy="2" then
yyxs="���w����"
end if
if yy="3" then
yyxs="English"
end if
if yy="4" then
yyxs="�����A��"
end if
if yy="1" then 
yy1="�汾"
yy2="cmd - -v5.0 (c) Az Corporation����������Ȩ����"
yy3="���⽫��������������ݣ�����Ӧ����Դ"
yy4="���롰bz����ȡ���������롰yy���������ԣ�Ĭ��Ϊ�������ģ�"
yy5="���� off �� out �� kill �� quit �� stop�Թر�cmd--"
yy6="����"
yy7="cmd--ʹ��ָ��"
yy8="cmd--ʹ��ָ�ϵڶ�ҳ"
yy9="cmd--���������� : "
yy10="���롰help����ȡ����"
yy11="��ΪĳЩԭ��ѭ���ڲ�����ѭ�������԰���ѭ��"
yy12="cmd--���������� : �У�"
yy13="�Ƿ�Ҫ�رճ���"
yy14="��ǰ����Ϊ:"
yy15="���룺"
yy16="������ɣ�����������Ч"
yy17="�������������Ϊ���룬���Է��벻һ��100%׼ȷ"
bz="��������"&Chr(13)&"kill ��������PID "&Chr(13)&"����kill explorer.exe"&Chr(13)&"�򿪽���"&Chr(13)&"run ָ���ĳ���   "&Chr(13)&"����run cmd.exe"&Chr(13)&"�ù���Ա��ݴ򿪳���"&Chr(13)&"runadmin ָ���ĳ��� "&Chr(13)&"����runadmin cmd.exe"&Chr(13)&"�ļ�ɾ��"&Chr(13)&"del �ļ� "&Chr(13)&"����del c:\az.txt"&Chr(13)&"�ļ��ƶ�"&Chr(13)&"wjyd �ļ� �ļ��� "&Chr(13)&"����wjyd c:\az.txt d:\"&Chr(13)&"�ļ��滻"&Chr(13)&"wjth �ļ�1 �ļ�2 "&Chr(13)&"����wjyd c:\az.txt d:\az.txt"&Chr(13)&"�ļ�����"&Chr(13)&"wjkb �ļ� �ļ��� "&Chr(13)&"����wjyd c:\az.txt d:\"&Chr(13)&"�ļ�д��"&Chr(13)&"xr �ļ� д�������"&Chr(13)&"����xr c:\az.txt 233"&Chr(13)&"�ļ�д�벢�滻"&Chr(13)&"xrth �ļ� �ļ��� "&Chr(13)&"����xrth c:\az.txt 233"&Chr(13)&"�ļ�������"&Chr(13)&"cmm �ļ� �µ��ļ��� "&Chr(13)&"����cmm c:\az.txt 233.txt"&Chr(13)&"��ʾ��"&Chr(13)&"(�������ʾʱ�䲻�Ǳ���)"&Chr(13)&"ts ���� ���� ��ʾʱ��"&Chr(13)&"����ts az! cmd-- 5"&Chr(13)&"����"&Chr(13)&"ss ������������"&Chr(13)&"����ss az"&Chr(13)&"ע���д��"&Chr(13)&"redxr д���·�� д�������"&Chr(13)&"����regxr HKEY_USERS\az az"&Chr(13)&"ɾ��ע���"&Chr(13)&"regdel ɾ��������"&Chr(13)&"����regxr HKEY_USERS\az"&Chr(13)&"�����ȷ����������һҳ��"
bz2="�����ļ�����"&Chr(13)&"ѭ����"&Chr(13)&"����10�Ρ�az������"&Chr(13)&"xh 10"&Chr(13)&"ts az"&Chr(13)&"xhjs"&Chr(13)&"ѭ��ֱ��"&Chr(13)&"(Ŀǰ�ж�ֻ֧��<>=����)"&Chr(13)&"xh pd ���� �ж����"&Chr(13)&"xhjs"&Chr(13)&"����"&Chr(13)&"xh pd #az#=5 t  "&Chr(13)&"az=#az#+1"&Chr(13)&"xhjs"&Chr(13)&"ѭ��ֱ������az=5"&Chr(13)&"�жϣ�"&Chr(13)&"�ж�1�Ƿ����2������Ǿ͵�����1=2������"&Chr(13)&"��2������t��ʾ�жϽ��Ϊ�棬f��ʾ�жϽ��Ϊ��"&Chr(13)&"pd 1=2 t"&Chr(13)&"ts 1=2"&Chr(13)&"pdjs"&Chr(13)&"Ŀǰ�ж�ֻ֧��<>=����"&Chr(13)&"��ʱ��"&Chr(13)&"��ʱ1000���루1�룩"&Chr(13)&"ys 1000"&Chr(13)&"����ϵͳ��"&Chr(13)&" д�������az=1+1"&Chr(13)&"   ����Ϊ��az���ı���������az�����ڻ��Զ�����һ������ֵд��Ϊ1+1��2��"&Chr(13)&"   Ŀǰֻ֧��+-*/���㣬"&Chr(13)&"   ʹ��&���������ַ�����"&Chr(13)&"   ����az=(xr)���û��ֶ��������ֵ"&Chr(13)&"   ����az=wjdq az.txt������ֵaz.txt������"&Chr(13)&"   ����az=zcbdq HKEY_USERS\az������ֵHKEY_USERS\az������"&Chr(13)&"   ��ֻ����д�������ʱ������"&Chr(13)&"   ��д�������ʱ���֧��һ���������"&Chr(13)&" ��ȡ������#az#"&Chr(13)&"   ʹ������#��Ҫ��ȡ�ı����������м�(����ʲôʱ��)"&Chr(13)&"���롰bllb���鿴��ǰ�����б�һ�������ļ������ֻ�ܴ���8������"
end if
if yy="2" then
yy1="�汾"
yy2="cmd - -v5.0 (c) Az Corporation���������Й�����"
yy3="���@��������ݔ��ă��ݣ����_�������YԴ"
yy4="ݔ�롰bz���@ȡ������ݔ�롰yy���O���Z�ԣ�Ĭ�J�麆�w���ģ�"
yy5="ݔ�� off �� out �� kill �� quit �� stop���P�]cmd--"
yy6="�P�"
yy7="cmd--ʹ��ָ��"
yy8="cmd--ʹ��ָ�ϵڶ��"
yy9="cmd--���g���e�` : "
yy10="ݔ�롰help���@ȡ����"
yy11="���ĳЩԭ��ѭ�h�Ȳ�����ѭ�h�����԰���ѭ�h"
yy12="cmd--���g���e�` : �У�"
yy13="�Ƿ�Ҫ�P�]����"
yy14="��ǰ�Z�Ԟ�:"
yy15="ݔ�룺"
yy16="�O����ɣ��؆�������Ч"
yy17="�����w���������C�g���Z�Է��g��һ��100%�ʴ_"
bz="�Y���M��"&Chr(13)&"kill �M������PID "&Chr(13)&"����kill explorer.exe"&Chr(13)&"���_�M��"&Chr(13)&"run ָ���ĳ���   "&Chr(13)&"����run cmd.exe"&Chr(13)&"�ù���T��ݴ��_����"&Chr(13)&"runadmin ָ���ĳ��� "&Chr(13)&"����runadmin cmd.exe"&Chr(13)&"�ļ��h��"&Chr(13)&"del �ļ� "&Chr(13)&"����del c:\az.txt"&Chr(13)&"�ļ��Ƅ�"&Chr(13)&"wjyd �ļ� �ļ��v "&Chr(13)&"����wjyd c:\az.txt d:\"&Chr(13)&"�ļ���Q"&Chr(13)&"wjth �ļ�1 �ļ�2 "&Chr(13)&"����wjyd c:\az.txt d:\az.txt"&Chr(13)&"�ļ���ؐ"&Chr(13)&"wjkb �ļ� �ļ��A "&Chr(13)&"����wjyd c:\az.txt d:\"&Chr(13)&"�ļ�����"&Chr(13)&"xr �ļ� ����ă���"&Chr(13)&"����xr c:\az.txt 233"&Chr(13)&"�ļ�����K��Q"&Chr(13)&"xrth �ļ� �ļ��A "&Chr(13)&"����xrth c:\az.txt 233"&Chr(13)&"�ļ�������"&Chr(13)&"cmm �ļ� �µ��ļ��� "&Chr(13)&"����cmm c:\az.txt 233.txt"&Chr(13)&"��ʾ��"&Chr(13)&"(���}���@ʾ�r�g���Ǳ���)"&Chr(13)&"ts ���� ���} �@ʾ�r�g"&Chr(13)&"����ts az! cmd-- 5"&Chr(13)&"����"&Chr(13)&"ss �������ă���"&Chr(13)&"����ss az"&Chr(13)&"�]�Ա팑��"&Chr(13)&"redxr �����·�� ����ă���"&Chr(13)&"����regxr HKEY_USERS\az az"&Chr(13)&"�h���]�Ա�"&Chr(13)&"regdel �h���ă���"&Chr(13)&"����regxr HKEY_USERS\az"&Chr(13)&"�c�����_����������һ퓡�"
bz2="�\���ļ�����"&Chr(13)&"ѭ�h��"&Chr(13)&"����10�Ρ�az������"&Chr(13)&"xh 10"&Chr(13)&"ts az"&Chr(13)&"xhjs"&Chr(13)&"ѭ�hֱ��"&Chr(13)&"(Ŀǰ�Д�ֻ֧��<>=�l��)"&Chr(13)&"xh pd �l�� �Д����"&Chr(13)&"xhjs"&Chr(13)&"����"&Chr(13)&"xh pd #az#=5 t  "&Chr(13)&"az=#az#+1"&Chr(13)&"xhjs"&Chr(13)&"ѭ�hֱ��׃��az=5"&Chr(13)&"�Дࣺ"&Chr(13)&"�Д�1�Ƿ���2������Ǿ͏�����1=2������"&Chr(13)&"��2������t��ʾ�Д�Y�����棬f��ʾ�Д�Y�����"&Chr(13)&"pd 1=2 t"&Chr(13)&"ts 1=2"&Chr(13)&"pdjs"&Chr(13)&"Ŀǰ�Д�ֻ֧��<>=�\��"&Chr(13)&"�ӕr��"&Chr(13)&"�ӕr1000���루1�룩"&Chr(13)&"ys 1000"&Chr(13)&"׃��ϵ�y��"&Chr(13)&" ����׃����az=1+1"&Chr(13)&"   �����顰az����׃����׃��az�����ڕ��Ԅӄ���һ������ֵ�����1+1��2��"&Chr(13)&"   Ŀǰֻ֧��+-*/�\�㣬"&Chr(13)&"   ʹ��&��̖朽��ַ�����"&Chr(13)&"   ݔ��az=(xr)׌�Ñ��ք�ݔ��׃��ֵ"&Chr(13)&"   ݔ��az=wjdq az.txt��׃��ֵaz.txt�ă���"&Chr(13)&"   ݔ��az=zcbdq HKEY_USERS\az��׃��ֵHKEY_USERS\az�ă���"&Chr(13)&"   ��ֻ���ڌ���׃���ĕr���\��"&Chr(13)&"   �ڌ���׃���ĕr��H֧��һ���\���̖"&Chr(13)&" �xȡ׃����#az#"&Chr(13)&"   ʹ�Ãɂ�#��Ҫ�xȡ��׃�����A�����g(�oՓʲ��r��)"&Chr(13)&"ݔ�롰bllb���鿴��ǰ׃���б�һ���\���ļ��Y���ֻ�ܴ���8��׃��"
end if
if yy="3" then
yy1= "version"
yy2="cmd - -v5.0 (c) Az Corporation��All rights are reserved"
yy3= "ah, according to what you have entered, the corresponding resources will be opened."
yy4= "enter BZ for help, and set the language YY (the default is simple Chinese)."
yy5= "enter off, out, kill, quit or stop to close the cmd--"
yy6= "about"
yy7= "cmd-- use guide"
yy8= "cmd-- the second page of the guide."
yy9= "cmd-- the builder is wrong:"
yy10= "type help for help."
yy11= "for some reason, the inner circle can't contain the circulation."
yy12= "cmd-- builder error: OK:"
yy13= "do you want to close the program?"
yy14= "the current language is:"
yy15= "enter:"
yy16= "the setup is completed, and the restart process is effective."
yy17= "except for the simple Chinese, the translation is not necessarily 100% accurate."
bz="The process was over"&Chr(13)&"Kill the process name or PID"&Chr(13)&"For example, kill explorer.exe"&Chr(13)&"Open the progress"&Chr(13)&"Run"&Chr(13)&"For example, run cmd.exe"&Chr(13)&"Open the program as an administrator"&Chr(13)&"The program designated by runadmin"&Chr(13)&"For example, runadmin cmd.exe"&Chr(13)&"Delete the file"&Chr(13)&"Del file"&Chr(13)&"For example, del c:az.txt"&Chr(13)&"file move"&Chr(13)&"Wjyd file box"&Chr(13)&"For example, wjyd c:az.txt d:\"&Chr(13)&"Document replacement"&Chr(13)&"Wjth document 1 document 2"&Chr(13)&"For example, wjyd c:az.txt d:az.txt"&Chr(13)&"Copy the file"&Chr(13)&"Wjkb file folder"&Chr(13)&"For example, wjyd c:az.txt d:\"&Chr(13)&"File writing"&Chr(13)&"What was written in the XR file"&Chr(13)&"For example, XR c:az.txt 233"&Chr(13)&"Write and replace the file"&Chr(13)&"Xrth file folder"&Chr(13)&"For example, xrth c:az.txt 233"&Chr(13)&"The document was renamed"&Chr(13)&"The new name of the CMM file"&Chr(13)&"For example, CMM c:az.txt 233.txt"&Chr(13)&"Notice window"&Chr(13)&"(title and display time are not required)"&Chr(13)&"The title of TS showed the time"&Chr(13)&"For example, TS AZ!cmd-- 5"&Chr(13)&"search"&Chr(13)&"What SS wanted to search"&Chr(13)&"For example: SS AZ"&Chr(13)&"Registration form writing"&Chr(13)&"What was written in the path redxr wrote"&Chr(13)&"For example, regxr HKEY_USERS\az az"&Chr(13)&"Delete the registry"&Chr(13)&"Regdel"&Chr(13)&"For example, regxr HKEY_USERS\a"
bz2="Operation document help"&Chr(13)&"Circles:"&Chr(13)&"AZ window popped up 10 times"&Chr(13)&"xh 10"&Chr(13)&"ts az"&Chr(13)&"xhjs"&Chr(13)&"It went on until"&Chr(13)&"(at present, we only support the condition.)"&Chr(13)&"XH PD condition to determine whether it was true or not"&Chr(13)&"xhjs"&Chr(13)&"For example:"&Chr(13)&"xh pd #az#=5 t  "&Chr(13)&"az=#az#+1"&Chr(13)&"xhjs"&Chr(13)&"It went on until the variable az=5"&Chr(13)&"Judgment:"&Chr(13)&"To determine if 1 was equal to 2, the 1=2 window would pop up if it was"&Chr(13)&"The second one, t, meant the judgment result was true, and f meant the judgment result was false"&Chr(13)&"pd 1=2 t"&Chr(13)&"ts 1=2"&Chr(13)&"pdjs"&Chr(13)&"At present, the judgment only supported calculation"&Chr(13)&"Time delay:"&Chr(13)&"Delay 1000 ms. (1 second)"&Chr(13)&"ys 1000"&Chr(13)&"Variable system:"&Chr(13)&"Write into the variable: az=1+1"&Chr(13)&"Write the value of the variable named AZ (the variable AZ doesn't exist and will automatically create one) into 1+1 (2)"&Chr(13)&"At present, he only supported the plus operation,"&Chr(13)&"Using the symbol to link the string,"&Chr(13)&"Enter az= (XR) and let the user enter the variable value in hand"&Chr(13)&"Enter az=wjdq az.txt and change the value of the variable to az.txt"&Chr(13)&"He input az=zcbdq HKEY_USERSaz changed the value of the variable to HKEY_The content of USERSaz"&Chr(13)&"And it could only be operated when the variable was written"&Chr(13)&"Only one Rune was supported when writing a variable"&Chr(13)&"Read the variable: #az#"&Chr(13)&"Use two Greg to put the variable name in the middle (no matter when)"&Chr(13)&"He input bllb to check the list of the current variables. There could only be 8 variables at most in a run fil"
end if
if yy="4" then
yy1="��"
yy2="cmd - -v5.0 (c) Az Corporation����ȫ�ࡣ"
yy3="���@������ݔ�ߣ��_��֮�Y"
yy4="����bz��ȡ��������yy�����ԣ�Ĭ�� ���w���� ��"
yy5="�� off �� out �� kill �� quit �� stop���P�]cmd--"
yy6="�P"
yy7="cmd--��ָ��"
yy8="cmd--ʹָ��֮��"
yy9="cmd--���g�` : "
yy10="����help��ȡ��"
yy11="����ʣ�ѭ�h����ѭ�h���ɺ��h"
yy12="cmd--���g�` : �У�"
yy13="�M���]ʽ��"
yy14="���Ԟ�:"
yy15="����"
yy16="�óɣ��؆�ʽ��"
yy17="�����w���ľ��C�g�����g��100%�_"
bz="���M��"&Chr(13)&"kill�M������PID"&Chr(13)&"����kill explorer.exe"&Chr(13)&"�_�M��"&Chr(13)&"runָ��֮ʽ"&Chr(13)&"����run cmd.exe"&Chr(13)&"��˾�͆���"&Chr(13)&"runadminָ��֮ʽ"&Chr(13)&"����runadmin cmd.exe"&Chr(13)&"�Ąh"&Chr(13)&"del��"&Chr(13)&"����del��\ az��.txt"&Chr(13)&"����"&Chr(13)&"wjyd�Ġ��v"&Chr(13)&"����wjyd \ az�ڡ�.txt \�ڡ�"&Chr(13)&"�Ĵ�"&Chr(13)&"wjth��һ�ģ�"&Chr(13)&"����wjyd��\��az.txt��\ az��.txt"&Chr(13)&"�Ŀ�ؐ"&Chr(13)&"wjkb���ļ��A"&Chr(13)&"����wjyd \ az�ڡ�.txt \�ڡ�"&Chr(13)&"�ģ�"&Chr(13)&"xr�ĕ���"&Chr(13)&"����xr��\��az.txt 233"&Chr(13)&"�ĕ��K��"&Chr(13)&"xrth���ļ��A"&Chr(13)&"����xrth \ az�ڡ�.txt 233"&Chr(13)&"��������"&Chr(13)&"cmm����֮����"&Chr(13)&"����cmm \ az�ڡ�.txt 233.txt"&Chr(13)&"����"&Chr(13)&"�����}�c���r�Ǳ��"&Chr(13)&"ts�x�}�ѕr"&Chr(13)&"����ts az��cmd --��"&Chr(13)&"��"&Chr(13)&"ss������"&Chr(13)&"����ss az"&Chr(13)&"�]�Ա�"&Chr(13)&"redxr��֮������"&Chr(13)&"����regxr HKEY _USERS \ az az"&Chr(13)&"�h�]�Ա�"&Chr(13)&"regdel�h��"&Chr(13)&"����regxr HKEY _USERS \ az"
bz2="������"&Chr(13)&"ѭ�h��"&Chr(13)&"��ʮ����az����"&Chr(13)&"xhʮ"&Chr(13)&"ts az"&Chr(13)&"xhjs"&Chr(13)&"ѭ�h��"&Chr(13)&"�����ֻ֧< > =Ҳ��"&Chr(13)&"xh pd�Q���Ҳ"&Chr(13)&"xhjs"&Chr(13)&"����"&Chr(13)&"xh pd # az # =��t"&Chr(13)&"az = # az # +��"&Chr(13)&"xhjs"&Chr(13)&"ѭ�h���Raz =��"&Chr(13)&"�ࣺ"&Chr(13)&"��һ�M�ǣ������Ǆt�ɡ�1 =������"&Chr(13)&"�ڶ�������tʾ������棬��ʾ������"&Chr(13)&"pd 1 =��t"&Chr(13)&"ts 1 =��"&Chr(13)&"pdjs"&Chr(13)&"���ֻ֧<��> ="&Chr(13)&"�ܡ���"&Chr(13)&"�ܡ�ǧ���루1�룩"&Chr(13)&"ysǧ"&Chr(13)&"�R�y��"&Chr(13)&"���R��az = 1+1"&Chr(13)&"�����顰az��֮׃���Raz����t�Ԅ�һ��ֱ֮����1+1������"&Chr(13)&"��֧+��* /�㣬"&Chr(13)&"�ù�̖朽��ַ�����"&Chr(13)&"ݔaz =��xr�����ԑ��ք�ݔ�Rֱ"&Chr(13)&"ݔaz��wjdq az.txt���Rֱaz.txt��Ҳ"&Chr(13)&"ݔaz = zcbdq HKEY _USERS \ az���RֱHKEY _USERS \ az��"&Chr(13)&"��ֻ����RҲ��"&Chr(13)&"����R֮�r�H֧һ����"&Chr(13)&"�xȡ�R��# az #"&Chr(13)&"�ö�#���xȡ֮�R���A���o�r��"&Chr(13)&"����bllb��ҕ���R�У�һ�Е��Y���ֻ�а˂�׃��"
end if
Err.Clear
For Each ar In WScript.Arguments
ydm=ar
next
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
dm=inputbox(""&xt&" ["&yy1&" "&xx&"]"& Chr(13) & Chr(10) &yy2& Chr(13) & Chr(10) &""&getfolder&"\_",""&wscript.scriptfullname&"","")
if dm="yy" then
msgbox yy14&yyxs
yy=inputbox(yy15& Chr(13) &"[1]��������"& Chr(13) &"[2]���w����"& Chr(13) &"[3]English"& Chr(13) &"[4]�����A��"& Chr(13) &yy17,"")
if yy="1" then
yyxs="��������"
end if
if yy="2" then
yyxs="���w����"
end if
if yy="3" then
yyxs="English"
end if
if yy="4" then
yyxs="�����A��"
end if
yscs=yy&mid(sxx,2,len(sxx)-2)
set f = fso.CreateTextFile("azcmd--.ini",true)
f.Write (yscs)
msgbox yy16
exit do
end if
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
msgbox yy3& Chr(13) & Chr(10) &yy4& Chr(13) & Chr(10) &yy5,,yy6
msgbox bz,,yy7
msgbox bz2,,yy8
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
if ml="regxr" or ml="REGXR" then
cs1=split(dm," ")(1)
cs2=split(dm," ")(2)
shell.RegWrite cs1,cs2
end if
if ml="regdel" or ml="REGDEL" then
cs1=split(dm," ")(1)
shell.RegDelete(cs1) 
end if
If Err.Number<>0 then
faz.Write "AZ Error : " & CStr(Err.Number) & " " & Err.Description
End if
else
shell.run ""&dm&""
end if
If Err.Number<>0 then
msgbox yy9&chr(13)& CStr(Err.Number) & " " & Err.Description &chr(13) &chr(13)& yy10
Err.Clear
End if
loop
loop
else
Err.Clear                                                                                                                 '����
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
if dm="stop" then
Wscript.Quit
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
                                                                                                                 'msgbox "������ȡ"&lop
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
if mid(blm,1,2)="xh" or mid(blm,1,2)="pd" then
else
if blxr="(xr)" then
blxr=inputbox("","","")
end if
if split(blxr," ")(0) = "wjdq" then
lj=split(blxr," ")(1)
set azdq=fso.opentextfile(lj,,true)
blxr=azdq.readall
end if
if split(blxr," ")(0) = "zcbdq" then
lj=split(blxr," ")(1)
blxr=shell.RegRead(lj)
end if
if InStr(dm, "+") > 0 then                                    '��������
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
if xrcg=0 then                                                    '����д��
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
end if                                                      '����д�����
end if
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
if ml="regxr" or ml="REGXR" then
cs1=split(dm," ")(1)
cs2=split(dm," ")(2)
shell.RegWrite cs1,cs2
end if
if ml="regdel" or ml="REGDEL" then
cs1=split(dm," ")(1)
shell.RegDelete(cs1) 
end if
if split(dm," ")(0) ="xh" then     'ѭ���ж�
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
msgbox yy11
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
if bxhcs="pd" then
bxhpd=1
bxhtj=split(dm," ")(2)
bxhcs=2
dm=split(adm,vbLf)(i-1)
dm=split(adm,vbLf)(i-1)
zh=right(dm,1)
if dm="" then
dm="smymy"
else
if Asc(zh) = "13" then
dm=left(dm, len(dm)-1)
end if
end if
zazxhpddm=right(dm,len(dm)-5)
else
bxhpd=0
bxhcs=bxhcs-1
end if
'msgbox bxhcs &"," &bbn
for kl=1 to bxhcs
for hhhhjjjjj=i to bbn
dm=split(adm,vbLf)(hhhhjjjjj-1)
dm=split(adm,vbLf)(hhhhjjjjj-1)                                                     'bj
lop=0
do
lop=lop+1
if lop=len(dm) or lop>len(dm)then
exit do
end if
'msgbox mid(dm,lop,1)&"[]"&lop
if mid(dm,lop,1)="#" then  'msgbox "������ȡ"&lop
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
'msgbox "����1"
azxhpddm=zazxhpddm
lop=0
do
lop=lop+1
if lop=len(azxhpddm) or lop>len(azxhpddm)then
exit do
end if
'msgbox mid(azxhpddm,lop,1)&"[]"&lop
if mid(azxhpddm,lop,1)="#" then  'msgbox "������ȡ"&lop
lop2 =lop
'msgbox azxhpddm
do
lop2 =lop2+1
if mid(azxhpddm,lop2,1)="#" then
exit do
end if
loop
blm=mid(azxhpddm,lop+1,lop2-lop-1)
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
azxhpddm=Left(azxhpddm,lop-1) & "[" & bldq & "[" & right(azxhpddm,len(azxhpddm)-lop2)
end if
'msgbox azxhpddm
loop
azxhpddm=Replace(azxhpddm, "[", "")
xhpddm=azxhpddm
'msgbox "����2"
zh=right(dm,1)
if dm="" then
dm="smymy"
else
if Asc(zh) = "13" then
dm=left(dm, len(dm)-1)
end if
end if
'msgbox "����3"
if dm="stop" then
Wscript.Quit
end if
if dm="bllb" then
msgbox yxbl1& Chr(13) & Chr(10) &yxbl2& Chr(13) & Chr(10) &yxbl3& Chr(13) & Chr(10) &yxbl4& Chr(13) & Chr(10) &yxbl5& Chr(13) & Chr(10) &yxbl6& Chr(13) & Chr(10) &yxbl7& Chr(13) & Chr(10) &yxbl8
end if
lop=0
if left(dm,3)="pd " then
pdjsxzh=hhhhjjjjj
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
hhhhjjjjj=hhhhjjjjj+pdjsxzh
end if
else
if pdzj="t" then
'msgbox "az"&i+pdjsxzh
hhhhjjjjj=hhhhjjjjj+pdjsxzh
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
hhhhjjjjj=hhhhjjjjj+pdjsxzh
end if
else
if pdzj="t" then
'msgbox "az"&i+pdjsxzh
hhhhjjjjj=hhhhjjjjj+pdjsxzh
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
hhhhjjjjj=hhhhjjjjj+pdjsxzh
end if
else
if pdzj="t" then
'msgbox "az"&i+pdjsxzh
hhhhjjjjj=hhhhjjjjj+pdjsxzh
else
end if
end if
end if
end if
if InStr(dm, "=") > 0 then
blm=split(dm,"=")(0)
blxr=split(dm,"=")(1)
if mid(blm,1,2)="xh" or mid(blm,1,2)="pd" then
else
if blxr="(xr)" then
blxr=inputbox("","","")
end if
if split(blxr," ")(0) = "wjdq" then
lj=split(blxr," ")(1)
set azdq=fso.opentextfile(lj,,true)
blxr=azdq.readall
end if
if split(blxr," ")(0) = "zcbdq" then
lj=split(blxr," ")(1)
blxr=shell.RegRead(lj)
end if
if InStr(dm, "+") > 0 then                                    '��������
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
if xrcg=0 then                                                    '����д��
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
end if                                                      '����д�����
end if
                                                                                                                                                                                 'bj
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
if ml="regxr" or ml="REGXR" then
cs1=split(dm," ")(1)
cs2=split(dm," ")(2)
shell.RegWrite cs1,cs2
end if
if ml="regdel" or ml="REGDEL" then
cs1=split(dm," ")(1)
shell.RegDelete(cs1) 
end if
else
end if
If Err.Number<>0 then
fjdsghbvh=msgbox(yy12&hhhhjjjjj&"    " &chr(13)& CStr(Err.Number) & " " & Err.Description &chr(13)& yy13,vbOKCancel)
Err.Clear
if fjdsghbvh=1 then
Wscript.Quit
end if
Err.Clear
End if
Err.Clear
next
if bxhpd=1 then
'xhpddm=right(dm,len(dm)-5)
'msgbox dm
'msgbox "//////"&xhpddm&"////////"&bxhcs
pdtj=split(xhpddm," ")(1)
pdzj=split(xhpddm," ")(2)
if InStr(pdtj, "=") > 0 then
pdtj1=split(pdtj,"=")(0)
pdtj2=split(pdtj,"=")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1=pdtj2 then
if pdzj="t" then
kl=bxhcs
else
kl=kl-1
end if
else
if pdzj="t" then
'msgbox "az"&i+pdjsxzh
kl=kl-1
else
kl=bxhcs
end if
end if
end if
pdtj=split(xhpddm," ")(1)
pdzj=split(xhpddm," ")(2)
if InStr(pdtj, ">") > 0 then
pdtj1=split(pdtj,">")(0)
pdtj2=split(pdtj,">")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1>pdtj2 then
if pdzj="t" then
kl=bxhcs
else
kl=kl-1
end if
else
if pdzj="t" then
'msgbox "az"&i+pdjsxzh
kl=kl-1
else
kl=bxhcs
end if
end if
end if
pdtj=split(xhpddm," ")(1)
pdzj=split(xhpddm," ")(2)
if InStr(pdtj, "<") > 0 then
pdtj1=split(pdtj,"<")(0)
pdtj2=split(pdtj,"<")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1<pdtj2 then
if pdzj="t" then
kl=bxhcs
else
kl=kl-1
end if
else
if pdzj="t" then
'msgbox "az"&i+pdjsxzh
kl=kl-1
else
kl=bxhcs
end if
end if
end if
end if
next
else
sjcs=0
if xhbh=0 then
xhcs=split(dm," ")(1)
if xhcs="pd" then
xhpd=1
bxhtj=split(dm," ")(2)
xhcs=2
dm=split(adm,vbLf)(i-1)
dm=split(adm,vbLf)(i-1)
zh=right(dm,1)
if dm="" then
dm="smymy"
else
if Asc(zh) = "13" then
dm=left(dm, len(dm)-1)
end if
end if
zazxhpddm=right(dm,len(dm)-5)
else
xhpd=0
end if
bn=i
do
xhjs=split(adm,vbLf)(bn)
bn=bn+1
if InStr(xhjs, " ") > 0 then
if split(xhjs," ")(0)="xh" then             
xhbh=1
xhxz=xhbh
'msgbox "��ΪĳЩԭ��ѭ���ڲ������԰���ѭ��"
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
end if                         'ѭ���жϽ�����
end if
end if
'msgbox xhcs
'msgbox i &","& bn &","& sjcs &","& xhcs
if i=bn then
sjcs=sjcs+1
if xhpd=1 then
azxhpddm=zazxhpddm
lop=0
do
lop=lop+1
if lop=len(azxhpddm) or lop>len(azxhpddm)then
exit do
end if
'msgbox mid(azxhpddm,lop,1)&"[]"&lop
if mid(azxhpddm,lop,1)="#" then  'msgbox "������ȡ"&lop
lop2 =lop
'msgbox azxhpddm
do
lop2 =lop2+1
if mid(azxhpddm,lop2,1)="#" then
exit do
end if
loop
blm=mid(azxhpddm,lop+1,lop2-lop-1)
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
azxhpddm=Left(azxhpddm,lop-1) & "[" & bldq & "[" & right(azxhpddm,len(azxhpddm)-lop2)
end if
'msgbox azxhpddm
loop
azxhpddm=Replace(azxhpddm, "[", "")
xhpddm=azxhpddm
'xhpddm=right(dm,len(dm)-5)
'msgbox dm
'msgbox "//////"&xhpddm&"////////"
pdtj=split(xhpddm," ")(1)
pdzj=split(xhpddm," ")(2)
if InStr(pdtj, "=") > 0 then
pdtj1=split(pdtj,"=")(0)
pdtj2=split(pdtj,"=")(1)
'msgbox pdtj1=pdtj2
if pdtj1=pdtj2 then
if pdzj="t" then
sjcs=xhcs
else
sjcs=sjcs-1
end if
else
if pdzj="t" then
'msgbox "az"&i+pdjsxzh
sjcs=sjcs-1
else
sjcs=xhcs
end if
end if
end if
pdtj=split(xhpddm," ")(1)
pdzj=split(xhpddm," ")(2)
if InStr(pdtj, ">") > 0 then
pdtj1=split(pdtj,">")(0)
pdtj2=split(pdtj,">")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1>pdtj2 then
if pdzj="t" then
sjcs=xhcs
else
sjcs=sjcs-1
end if
else
if pdzj="t" then
'msgbox "az"&i+pdjsxzh
sjcs=sjcs-1
else
sjcs=xhcs
end if
end if
end if
pdtj=split(xhpddm," ")(1)
pdzj=split(xhpddm," ")(2)
if InStr(pdtj, "<") > 0 then
pdtj1=split(pdtj,"<")(0)
pdtj2=split(pdtj,"<")(1)
'msgbox pdtj1&"az"&pdtj2
if pdtj1<pdtj2 then
if pdzj="t" then
sjcs=xhcs
else
sjcs=sjcs-1
end if
else
if pdzj="t" then
'msgbox "az"&i+pdjsxzh
sjcs=sjcs-1
else
sjcs=xhcs
end if
end if
end if
end if 
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
fjdsghbvh=msgbox(yy12&i&"    " &chr(13)& CStr(Err.Number) & " " & Err.Description &chr(13)& yy13,vbOKCancel)
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
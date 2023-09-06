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
yyxs="简体中文"
end if
if yy="2" then
yyxs="繁體中文"
end if
if yy="3" then
yyxs="English"
end if
if yy="4" then
yyxs="文言華夏"
end if
if yy="1" then 
yy1="版本"
yy2="cmd - -v5.0 (c) Az Corporation。保留所有权利。"
yy3="啊这将根据你输入的内容，打开相应的资源"
yy4="输入“bz”获取帮助，输入“yy”设置语言（默认为简体中文）"
yy5="输入 off 或 out 或 kill 或 quit 或 stop以关闭cmd--"
yy6="关于"
yy7="cmd--使用指南"
yy8="cmd--使用指南第二页"
yy9="cmd--编译器错误 : "
yy10="输入“help”获取帮助"
yy11="因为某些原因，循环内部包含循环不可以包含循环"
yy12="cmd--编译器错误 : 行："
yy13="是否要关闭程序？"
yy14="当前语言为:"
yy15="输入："
yy16="设置完成，重启程序生效"
yy17="除简体中文外均为机译，语言翻译不一定100%准确"
bz="结束进程"&Chr(13)&"kill 进程名或PID "&Chr(13)&"例：kill explorer.exe"&Chr(13)&"打开进程"&Chr(13)&"run 指定的程序   "&Chr(13)&"例：run cmd.exe"&Chr(13)&"用管理员身份打开程序"&Chr(13)&"runadmin 指定的程序 "&Chr(13)&"例：runadmin cmd.exe"&Chr(13)&"文件删除"&Chr(13)&"del 文件 "&Chr(13)&"例：del c:\az.txt"&Chr(13)&"文件移动"&Chr(13)&"wjyd 文件 文件荚 "&Chr(13)&"例：wjyd c:\az.txt d:\"&Chr(13)&"文件替换"&Chr(13)&"wjth 文件1 文件2 "&Chr(13)&"例：wjyd c:\az.txt d:\az.txt"&Chr(13)&"文件拷贝"&Chr(13)&"wjkb 文件 文件夹 "&Chr(13)&"例：wjyd c:\az.txt d:\"&Chr(13)&"文件写入"&Chr(13)&"xr 文件 写入的内容"&Chr(13)&"例：xr c:\az.txt 233"&Chr(13)&"文件写入并替换"&Chr(13)&"xrth 文件 文件夹 "&Chr(13)&"例：xrth c:\az.txt 233"&Chr(13)&"文件重命名"&Chr(13)&"cmm 文件 新的文件名 "&Chr(13)&"例：cmm c:\az.txt 233.txt"&Chr(13)&"提示窗"&Chr(13)&"(标题和显示时间不是必填)"&Chr(13)&"ts 内容 标题 显示时间"&Chr(13)&"例：ts az! cmd-- 5"&Chr(13)&"搜索"&Chr(13)&"ss 想搜索的内容"&Chr(13)&"例：ss az"&Chr(13)&"注册表写入"&Chr(13)&"redxr 写入的路径 写入的内容"&Chr(13)&"例：regxr HKEY_USERS\az az"&Chr(13)&"删除注册表"&Chr(13)&"regdel 删除的内容"&Chr(13)&"例：regxr HKEY_USERS\az"&Chr(13)&"点击“确定”翻到下一页→"
bz2="运行文件帮助"&Chr(13)&"循环："&Chr(13)&"弹出10次“az”窗口"&Chr(13)&"xh 10"&Chr(13)&"ts az"&Chr(13)&"xhjs"&Chr(13)&"循环直到"&Chr(13)&"(目前判断只支持<>=条件)"&Chr(13)&"xh pd 条件 判断真假"&Chr(13)&"xhjs"&Chr(13)&"例："&Chr(13)&"xh pd #az#=5 t  "&Chr(13)&"az=#az#+1"&Chr(13)&"xhjs"&Chr(13)&"循环直到变量az=5"&Chr(13)&"判断："&Chr(13)&"判断1是否等于2，如果是就弹出“1=2”窗口"&Chr(13)&"第2个参数t表示判断结果为真，f表示判断结果为假"&Chr(13)&"pd 1=2 t"&Chr(13)&"ts 1=2"&Chr(13)&"pdjs"&Chr(13)&"目前判断只支持<>=运算"&Chr(13)&"延时："&Chr(13)&"延时1000毫秒（1秒）"&Chr(13)&"ys 1000"&Chr(13)&"变量系统："&Chr(13)&" 写入变量：az=1+1"&Chr(13)&"   把名为“az”的变量（变量az不存在会自动创建一个）的值写入为1+1（2）"&Chr(13)&"   目前只支持+-*/运算，"&Chr(13)&"   使用&符号链接字符串，"&Chr(13)&"   输入az=(xr)让用户手动输入变量值"&Chr(13)&"   输入az=wjdq az.txt将变量值az.txt的内容"&Chr(13)&"   输入az=zcbdq HKEY_USERS\az将变量值HKEY_USERS\az的内容"&Chr(13)&"   且只能在写入变量的时候运算"&Chr(13)&"   在写入变量的时候仅支持一个运算符号"&Chr(13)&" 读取变量：#az#"&Chr(13)&"   使用两个#把要读取的变量名夹在中间(无论什么时候)"&Chr(13)&"输入“bllb”查看当前变量列表，一个运行文件里最多只能存在8个变量"
end if
if yy="2" then
yy1="版本"
yy2="cmd - -v5.0 (c) Az Corporation。保留所有權利。"
yy3="啊這將根據你輸入的內容，打開相應的資源"
yy4="輸入“bz”獲取幫助，輸入“yy”設置語言（默認為簡體中文）"
yy5="輸入 off 或 out 或 kill 或 quit 或 stop以關閉cmd--"
yy6="關於"
yy7="cmd--使用指南"
yy8="cmd--使用指南第二頁"
yy9="cmd--編譯器錯誤 : "
yy10="輸入“help”獲取幫助"
yy11="因為某些原因，循環內部包含循環不可以包含循環"
yy12="cmd--編譯器錯誤 : 行："
yy13="是否要關閉程序？"
yy14="當前語言為:"
yy15="輸入："
yy16="設置完成，重啟程序生效"
yy17="除簡體中文外均為機譯，語言翻譯不一定100%準確"
bz="結束進程"&Chr(13)&"kill 進程名或PID "&Chr(13)&"例：kill explorer.exe"&Chr(13)&"打開進程"&Chr(13)&"run 指定的程序   "&Chr(13)&"例：run cmd.exe"&Chr(13)&"用管理員身份打開程序"&Chr(13)&"runadmin 指定的程序 "&Chr(13)&"例：runadmin cmd.exe"&Chr(13)&"文件刪除"&Chr(13)&"del 文件 "&Chr(13)&"例：del c:\az.txt"&Chr(13)&"文件移動"&Chr(13)&"wjyd 文件 文件莢 "&Chr(13)&"例：wjyd c:\az.txt d:\"&Chr(13)&"文件替換"&Chr(13)&"wjth 文件1 文件2 "&Chr(13)&"例：wjyd c:\az.txt d:\az.txt"&Chr(13)&"文件拷貝"&Chr(13)&"wjkb 文件 文件夾 "&Chr(13)&"例：wjyd c:\az.txt d:\"&Chr(13)&"文件寫入"&Chr(13)&"xr 文件 寫入的內容"&Chr(13)&"例：xr c:\az.txt 233"&Chr(13)&"文件寫入並替換"&Chr(13)&"xrth 文件 文件夾 "&Chr(13)&"例：xrth c:\az.txt 233"&Chr(13)&"文件重命名"&Chr(13)&"cmm 文件 新的文件名 "&Chr(13)&"例：cmm c:\az.txt 233.txt"&Chr(13)&"提示窗"&Chr(13)&"(標題和顯示時間不是必填)"&Chr(13)&"ts 內容 標題 顯示時間"&Chr(13)&"例：ts az! cmd-- 5"&Chr(13)&"搜索"&Chr(13)&"ss 想搜索的內容"&Chr(13)&"例：ss az"&Chr(13)&"註冊表寫入"&Chr(13)&"redxr 寫入的路徑 寫入的內容"&Chr(13)&"例：regxr HKEY_USERS\az az"&Chr(13)&"刪除註冊表"&Chr(13)&"regdel 刪除的內容"&Chr(13)&"例：regxr HKEY_USERS\az"&Chr(13)&"點擊“確定”翻到下一頁→"
bz2="運行文件幫助"&Chr(13)&"循環："&Chr(13)&"彈出10次“az”窗口"&Chr(13)&"xh 10"&Chr(13)&"ts az"&Chr(13)&"xhjs"&Chr(13)&"循環直到"&Chr(13)&"(目前判斷只支持<>=條件)"&Chr(13)&"xh pd 條件 判斷真假"&Chr(13)&"xhjs"&Chr(13)&"例："&Chr(13)&"xh pd #az#=5 t  "&Chr(13)&"az=#az#+1"&Chr(13)&"xhjs"&Chr(13)&"循環直到變量az=5"&Chr(13)&"判斷："&Chr(13)&"判斷1是否等於2，如果是就彈出“1=2”窗口"&Chr(13)&"第2個參數t表示判斷結果為真，f表示判斷結果為假"&Chr(13)&"pd 1=2 t"&Chr(13)&"ts 1=2"&Chr(13)&"pdjs"&Chr(13)&"目前判斷只支持<>=運算"&Chr(13)&"延時："&Chr(13)&"延時1000毫秒（1秒）"&Chr(13)&"ys 1000"&Chr(13)&"變量系統："&Chr(13)&" 寫入變量：az=1+1"&Chr(13)&"   把名為“az”的變量（變量az不存在會自動創建一個）的值寫入為1+1（2）"&Chr(13)&"   目前只支持+-*/運算，"&Chr(13)&"   使用&符號鏈接字符串，"&Chr(13)&"   輸入az=(xr)讓用戶手動輸入變量值"&Chr(13)&"   輸入az=wjdq az.txt將變量值az.txt的內容"&Chr(13)&"   輸入az=zcbdq HKEY_USERS\az將變量值HKEY_USERS\az的內容"&Chr(13)&"   且只能在寫入變量的時候運算"&Chr(13)&"   在寫入變量的時候僅支持一個運算符號"&Chr(13)&" 讀取變量：#az#"&Chr(13)&"   使用兩個#把要讀取的變量名夾在中間(無論什麽時候)"&Chr(13)&"輸入“bllb”查看當前變量列表，一個運行文件裏最多只能存在8個變量"
end if
if yy="3" then
yy1= "version"
yy2="cmd - -v5.0 (c) Az Corporation。All rights are reserved"
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
yy1="版"
yy2="cmd - -v5.0 (c) Az Corporation。留全權。"
yy3="啊這將以汝輸者，開應之資"
yy4="至“bz”取助，至“yy”置言（默為 簡體中文 ）"
yy5="至 off 或 out 或 kill 或 quit 或 stop以關閉cmd--"
yy6="關"
yy7="cmd--用指南"
yy8="cmd--使指南之二"
yy9="cmd--編譯誤 : "
yy10="至“help”取助"
yy11="以其故，循環內有循環不可含環"
yy12="cmd--編譯誤 : 行："
yy13="豈欲閉式？"
yy14="今言為:"
yy15="至："
yy16="置成，重啟式行"
yy17="除簡體中文均機譯，重譯非100%確"
bz="畢進程"&Chr(13)&"kill進程名或PID"&Chr(13)&"例：kill explorer.exe"&Chr(13)&"開進程"&Chr(13)&"run指定之式"&Chr(13)&"例：run cmd.exe"&Chr(13)&"以司就啟程"&Chr(13)&"runadmin指定之式"&Chr(13)&"例：runadmin cmd.exe"&Chr(13)&"文刪"&Chr(13)&"del帖"&Chr(13)&"例：del乘\ az。.txt"&Chr(13)&"文移"&Chr(13)&"wjyd文牘莢"&Chr(13)&"例：wjyd \ az口。.txt \口。"&Chr(13)&"文代"&Chr(13)&"wjth牘一文！"&Chr(13)&"例：wjyd。\口az.txt乘\ az。.txt"&Chr(13)&"文拷貝"&Chr(13)&"wjkb文文件夾"&Chr(13)&"例：wjyd \ az口。.txt \口。"&Chr(13)&"文？"&Chr(13)&"xr文書者"&Chr(13)&"例：xr。\口az.txt 233"&Chr(13)&"文書並代"&Chr(13)&"xrth文文件夾"&Chr(13)&"例：xrth \ az口。.txt 233"&Chr(13)&"文重命名"&Chr(13)&"cmm文新之文名"&Chr(13)&"例：cmm \ az口。.txt 233.txt"&Chr(13)&"明窗"&Chr(13)&"（標題與明時非必填）"&Chr(13)&"ts義題昭時"&Chr(13)&"例：ts az！cmd --五"&Chr(13)&"索"&Chr(13)&"ss欲索者"&Chr(13)&"例：ss az"&Chr(13)&"註冊表？"&Chr(13)&"redxr入之徑入者"&Chr(13)&"例：regxr HKEY _USERS \ az az"&Chr(13)&"刪註冊表"&Chr(13)&"regdel刪者"&Chr(13)&"例：regxr HKEY _USERS \ az"
bz2="行文助"&Chr(13)&"循環："&Chr(13)&"而十三“az”窗"&Chr(13)&"xh十"&Chr(13)&"ts az"&Chr(13)&"xhjs"&Chr(13)&"循環至"&Chr(13)&"（今斷只支< > =也。"&Chr(13)&"xh pd決真偽也"&Chr(13)&"xhjs"&Chr(13)&"例："&Chr(13)&"xh pd # az # =五t"&Chr(13)&"az = # az # +。"&Chr(13)&"xhjs"&Chr(13)&"循環至齊az =五"&Chr(13)&"斷："&Chr(13)&"斷一豈是！，若是則成“1 =！”窗"&Chr(13)&"第二個參數t示斷而為真，既示斷而為假"&Chr(13)&"pd 1 =二t"&Chr(13)&"ts 1 =！"&Chr(13)&"pdjs"&Chr(13)&"今斷只支<算> ="&Chr(13)&"衍、："&Chr(13)&"衍、千毫秒（1秒）"&Chr(13)&"ys千"&Chr(13)&"齊統："&Chr(13)&"入齊：az = 1+1"&Chr(13)&"以名為“az”之變（齊az不存則自創一）之直書為1+1（！）"&Chr(13)&"今但支+。* /算，"&Chr(13)&"用故號鏈接字符串，"&Chr(13)&"輸az =（xr）令以戶手動輸齊直"&Chr(13)&"輸az二wjdq az.txt將齊直az.txt者也"&Chr(13)&"輸az = zcbdq HKEY _USERS \ az將齊直HKEY _USERS \ az者"&Chr(13)&"且只在於齊也算"&Chr(13)&"在於齊之時僅支一乘象"&Chr(13)&"讀取齊：# az #"&Chr(13)&"用二#將讀取之齊名夾（無時。"&Chr(13)&"至“bllb”視今齊列，一行書裏最多只有八個變量"
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
yy=inputbox(yy15& Chr(13) &"[1]简体中文"& Chr(13) &"[2]繁體中文"& Chr(13) &"[3]English"& Chr(13) &"[4]文言華夏"& Chr(13) &yy17,"")
if yy="1" then
yyxs="简体中文"
end if
if yy="2" then
yyxs="繁體中文"
end if
if yy="3" then
yyxs="English"
end if
if yy="4" then
yyxs="文言華夏"
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
if mid(dm,lop,1)="#" then  'msgbox "变量读取"&lop
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
'msgbox "过程1"
azxhpddm=zazxhpddm
lop=0
do
lop=lop+1
if lop=len(azxhpddm) or lop>len(azxhpddm)then
exit do
end if
'msgbox mid(azxhpddm,lop,1)&"[]"&lop
if mid(azxhpddm,lop,1)="#" then  'msgbox "变量读取"&lop
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
'msgbox "过程2"
zh=right(dm,1)
if dm="" then
dm="smymy"
else
if Asc(zh) = "13" then
dm=left(dm, len(dm)-1)
end if
end if
'msgbox "过程3"
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
if mid(azxhpddm,lop,1)="#" then  'msgbox "变量读取"&lop
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
@echo off
echo 这是啊这制作的极域网络破解程序，包括 解除网络限制 解除U盘限制 解除某些网站访问限制（实验性）
pause

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
echo 请求管理员权限...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"

echo 关闭极域主进程...
taskkill -t -f -im StudentMain.exe


echo 开始破解网络...
sc stop tdnetfilter
echo 完成！


echo 开始破解U盘...
sc stop tdfilefilter
echo 完成！

echo 结束极域进程...
taskkill -t -f -im gatesev.exe
taskkill -t -f -im masterhelper.exe


pause

echo 开始破解某些网站访问限制（实验性）


::要修改的网络适配器
set NET_NAME="以太网"
::静态IP
set NET_IP="192.168.1.109"
::子网掩码
set NET_MASK="255.255.255.0"
::默认网关
set NET_GATE="192.168.1.1"
::首选DNS服务器
set DNS_FIRST="1.2.4.8"
::备选DNS服务器
SET DNS_SECOND="8.8.8.8"
 

::netsh interface ip set address %NET_NAME% static %NET_IP% %NET_MASK% %NET_GATE%
::netsh interface ip set dnsservers %NET_NAME% static %DNS_FIRST% primary no
::netsh interface ip add dnsservers %NET_NAME% %DNS_SECOND% index=2 no

:echo 正在更改本机IP地址...
:netsh interface ip set address %NET_NAME% static %NET_IP% %NET_MASK% %NET_GATE%
:netsh interface ipv4 set address name=%NET_NAME% source=static addr=%NET_IP% mask=%NET_MASK% gateway=%NET_GATE% gwmetric=0

echo 正在添加本机首选DNS服务器...
netsh interface ip set dnsservers %NET_NAME% static %DNS_FIRST% primary no
netsh interface ipv4 set dns name=%NET_NAME% source=static addr=%DNS_FIRST% register=PRIMARY

echo 正在添加备用DNS服务器...
netsh interface ip add dnsservers %NET_NAME% %DNS_SECOND% index=2 no
netsh interface ipv4 add dns name=%NET_NAME% addr=%DNS_SECOND%



:windows7
echo 正在设置本机主DNS ,请稍等……
netsh interface ip set dns name="本地连接" source=static addr=8.8.8.8 register=PRIMARY
echo 正在设置本机备用DNS ,请稍等……
netsh interface ip add dns name="本地连接" addr=114.114.114.114 index=2


echo 完成！
pause
@echo off
echo ���ǰ��������ļ��������ƽ���򣬰��� ����������� ���U������ ���ĳЩ��վ�������ƣ�ʵ���ԣ�
pause

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
echo �������ԱȨ��...
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

echo �رռ���������...
taskkill -t -f -im StudentMain.exe


echo ��ʼ�ƽ�����...
sc stop tdnetfilter
echo ��ɣ�


echo ��ʼ�ƽ�U��...
sc stop tdfilefilter
echo ��ɣ�

echo �����������...
taskkill -t -f -im gatesev.exe
taskkill -t -f -im masterhelper.exe


pause

echo ��ʼ�ƽ�ĳЩ��վ�������ƣ�ʵ���ԣ�


::Ҫ�޸ĵ�����������
set NET_NAME="��̫��"
::��̬IP
set NET_IP="192.168.1.109"
::��������
set NET_MASK="255.255.255.0"
::Ĭ������
set NET_GATE="192.168.1.1"
::��ѡDNS������
set DNS_FIRST="1.2.4.8"
::��ѡDNS������
SET DNS_SECOND="8.8.8.8"
 

::netsh interface ip set address %NET_NAME% static %NET_IP% %NET_MASK% %NET_GATE%
::netsh interface ip set dnsservers %NET_NAME% static %DNS_FIRST% primary no
::netsh interface ip add dnsservers %NET_NAME% %DNS_SECOND% index=2 no

:echo ���ڸ��ı���IP��ַ...
:netsh interface ip set address %NET_NAME% static %NET_IP% %NET_MASK% %NET_GATE%
:netsh interface ipv4 set address name=%NET_NAME% source=static addr=%NET_IP% mask=%NET_MASK% gateway=%NET_GATE% gwmetric=0

echo ������ӱ�����ѡDNS������...
netsh interface ip set dnsservers %NET_NAME% static %DNS_FIRST% primary no
netsh interface ipv4 set dns name=%NET_NAME% source=static addr=%DNS_FIRST% register=PRIMARY

echo ������ӱ���DNS������...
netsh interface ip add dnsservers %NET_NAME% %DNS_SECOND% index=2 no
netsh interface ipv4 add dns name=%NET_NAME% addr=%DNS_SECOND%



:windows7
echo �������ñ�����DNS ,���Եȡ���
netsh interface ip set dns name="��������" source=static addr=8.8.8.8 register=PRIMARY
echo �������ñ�������DNS ,���Եȡ���
netsh interface ip add dns name="��������" addr=114.114.114.114 index=2


echo ��ɣ�
pause
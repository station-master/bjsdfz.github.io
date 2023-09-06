dim sendata
'创建Winsock对像 
set sock = WScript.createobject("MSWinsock.Winsock")
sock.AboutBox
'使用UDP协议 
sock.Protocol=1
'建立连接 
sock.Connect "127.0.0.1",8888
'定义要发送的数据 
sendata="0 186IF1409,2148.0,2148.0,2144.4,2143.8,5,5,2144.4,4,4,2159.0,2140.4,2148.3,0,10249,0,6605478720.0,2362.8,1933.2,4,0,0,0,0,2145.0,29343,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255.255.255.255"&chr(13)  
'发送我们要发的数据 
sock.senddata sendata

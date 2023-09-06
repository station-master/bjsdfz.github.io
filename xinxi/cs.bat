sc stop tdnetfilter
sc stop tdfilefilter
taskkill -t -f -im gatesev.exe
taskkill -t -f -im masterhelper.exe
pause
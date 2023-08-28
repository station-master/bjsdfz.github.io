c="abcdef1234567890"
cs=0
do
if cs=6 then
exit do
end if
Randomize
w=Int(Rnd*len(c) + 1)
az=mid(c,w,1)
if InStr(sj, mid(c,w,1)) > 0 then
else
cs=cs+1
sj=sj&mid(c,w,1)
end if
loop
inputbox "",,sj

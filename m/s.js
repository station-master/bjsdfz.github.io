/*
函数列表：
accAdd accSub accMul accDiv
toCode fromCode






*/








function jx(x){              //阶乘
    if (x==0){return 1 }
    var yscs=x
    for (var k=1;k<x;k++){
    var yscs=yscs*k
    }
    return yscs
    }
function yhsj(m,n){            //杨辉三角(需要阶乘)
    var lsbl=jx(n-1)*jx(m-n);
    return Math.round(jx(m-1)/lsbl);
    } 
function jhzh(x){               //角度转弧度
    return (x/180)*Math.PI
}
function jhzh(x){               //弧度转角度
    return (x/Math.PI)*180
}
    function azsin(h){         //sin(需要阶乘)
      var ds=0
      var g=h
      if(g>7){
        g=g%(2*Math.PI)
      }
    for(var i=0;i<100;i++){
      var yu=(2*i+1)
      var b=(Math.pow(g, yu)/jx(yu))*Math.pow(-1, i)
      //console.log(b)
      var ds=ds+b
    }
    return ds
    }
    function ex(g){                 //eˣ(需要阶乘)
      var ds=1
    for(var i=0;i<300;i++){
      var b=(Math.pow(g, i)/jx(i))
      //console.log(b)
      var ds=ds+b
    }
    return ds
    }
    function azln(g){                    //ln(x)
    var y=(g - 1) / (g + 1) 
    var ds=0
    for(var i=1;i<100;i=i+2){
      var b=(1/i)*Math.pow(y, i-1)
      var ds=ds+b
      //console.log(b)
    }
    var jg=2*y*ds
    return jg
    }
    function kf(x){             //开平方
        if(x<0){return NaN}
        if(x==0){return 0}
var rt=String(x).length
var a=2
if(rt%a>0){   //补位
    var ljs=""
    for(var po=0;po<(Math.floor(rt/a)+1)*a-rt;po++){
        var ljs=ljs+"0"
    }
    var c=ljs+String(x)
}else if(rt%a==0){
    var c=String(x)
}
var zzjg=0
var xsd=""

for(var fe=0;fe<1000;fe=fe+a){   //开始运算
  if(fe==0){
    var bjs=c.substring(0,a)
  }
    //console.log(bjs)
    for(var yp=0;yp<10;yp++){
       var du=Number(String(zzjg*a)+String(yp))
       //console.log(du)
        if(du*yp>Number(bjs)){
            break;
        }
    }
    //console.log((yp-1))
    var luo=Number(bjs)-(yp-1)*Number(String(zzjg*a)+String(yp-1))
    var zzjg=zzjg+String(yp-1)
    if(fe+a>=c.length){
        //var xsd=fe+a
        var ljs=""
        for(var po=0;po<a;po++){
            var ljs=ljs+"0"
        }
        var bjs=String(luo)+ljs
        //console.log(bjs)
    }else{
        var bjs=String(luo)+c.substring(fe+a,fe+a*a)
    }
}
var xsd=(c.length/a)+1          //添加小数点
    var sc=zzjg.substring(0,xsd)+"."+zzjg.substring(xsd,zzjg.length)
return Number(sc)
    }
function zfchfxjc(hy){
  var abc=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","^","*","/","+","_","0","9","8","7","6","5","4","3","2","1",".","-","(",")"]
  for(var i=0;i<diaoyongzifuchuang.length;i++){
    var gh=diaoyongzifuchuang.substring(i,i+1)
    if(gh=="("){
      zuokuohao++
    }
    if(gh==")"){
      youkuohao++
    }
    if(isInArray(abc,gh) ==false){
      return "err 未知字符"+gh
    }
}
if(zuokuohao==youkuohao){
}else if(zuokuohao>youkuohao){
  return "err 少了"+String(zuokuohao-youkuohao)+"个“)”"
}else if(zuokuohao<youkuohao){
  return "err 多了"+String(youkuohao-zuokuohao)+"个“)”"
}

}


    function jiexiys(jiexishi,x,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12){
      /*
解析式计算函数
jiexiys(解析式,x,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12)   x到x12表示变量的值,用出现先后顺序赋值
或 jiexiys(解析式,[x,x1,x2,x3,....,x100,x101,x102,.....])   用数组表示

内置函数:sin,cos,tan,arcsin,arccos,arctan,sqrt,log,abs,ln,Gamma

运算符号:^/*+_   (减法用_表示,负数用-表示)

内置参数:π,e,γ,β*,φ  使用pi表示π,e表示e,ol表示γ,hj表示φ,et表示β*


*/
      var yuanshizhifuc=String(jiexishi).toLowerCase()
      var diaoyongzifuchuang=yuanshizhifuc.replace(new RegExp('abs', 'g'), 'ab');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('sqrt', 'g'), 'sq');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('log', 'g'), 'lo');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('sin', 'g'), 'si');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('cos', 'g'), 'co');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('tan', 'g'), 'ta');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('arcsin', 'g'), 'as');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('arccos', 'g'), 'ac');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('arctan', 'g'), 'at');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('!', 'g'), 'gm');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp('gamma', 'g'), 'gm');
      var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp(' ', 'g'), '');

      var olhs=0.577215664901532860606512090082402431042159335  //γ
      var hjfg=0.61803398874989484820458683436563811  //φ
      var EmbreeTrefethen=0.70258  //β*
var blmlb=[]
var bllb=[]
if((x instanceof Array)==true){
  var blmlb=x
}else{
  blmlb.push(x);blmlb.push(x1);blmlb.push(x2);blmlb.push(x3);blmlb.push(x4);blmlb.push(x5);
  blmlb.push(x6);blmlb.push(x7);blmlb.push(x8);blmlb.push(x9);blmlb.push(x10);blmlb.push(x11);blmlb.push(x12);
}



      var diaoyongzifuchuang="("+diaoyongzifuchuang+")"
      //console.log(diaoyongzifuchuang)
      var zshs=false   //是否为函数括号
      var abc=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
      var zuokuohao=0       //括号套了几层
      var youkuohao=0       //括号套了几层
for(var i=0;i<diaoyongzifuchuang.length;i++){
    var gh=diaoyongzifuchuang.substring(i,i+1)
    if(gh=="("){
      zuokuohao++
    }
    if(gh==")"){
      youkuohao++
    }
}
//console.log(zuokuohao,youkuohao)
if(zuokuohao==youkuohao){}else if(zuokuohao>youkuohao){    //检查括号
  return "err 少了"+String(zuokuohao-youkuohao)+"个“)”"
}else if(zuokuohao<youkuohao){
  return "err 多了"+String(youkuohao-zuokuohao)+"个“)”"
}
var ygblqiw=-1
for(var i=0;i<diaoyongzifuchuang.length;i++){          //获取变量名称
  var gh=diaoyongzifuchuang.substring(i,i+1)
  if(isInArray(abc,gh)==true){
    if(isInArray(abc,diaoyongzifuchuang.substring(i-1,i))==false){
      var ygblqiw=i
    }
    if(isInArray(abc,diaoyongzifuchuang.substring(i+1,i+2))==false){
      if(diaoyongzifuchuang.substring(i+1,i+2)=="("){}else{
        var ygblhiw=i+1
        if(isInArray(bllb,diaoyongzifuchuang.substring(ygblqiw,ygblhiw))==false){
          bllb.push(diaoyongzifuchuang.substring(ygblqiw,ygblhiw))
        }
      }
    }
  }
}




for(var gt=0;gt<zuokuohao+1;gt++){          //拆括号
  var qianmdkh=0
  for(var i=0;i<diaoyongzifuchuang.length;i++){
    var gh=diaoyongzifuchuang.substring(i,i+1)
    if(gh=="("){
      var qianmdkh=i
    }
    if(gh==")"){
      var tj=diaoyongzifuchuang.substring(qianmdkh+1,i)
      //console.log(tj)
      var tj=tj.replace(new RegExp('pi', 'g'), String(Math.PI));  //替换常数
      var tj=tj.replace(new RegExp('e', 'g'), String(Math.E));
      var tj=tj.replace(new RegExp('ol', 'g'), String(olhs));
      var tj=tj.replace(new RegExp('et', 'g'), String(EmbreeTrefethen));
      var tj=tj.replace(new RegExp('hj', 'g'), String(hjfg));
     
      for(var cccp=0;cccp<bllb.length;cccp++){                  //替换变量
        var tj=tj.replace(new RegExp(bllb[cccp], 'g'), String(blmlb[cccp]));
      }
      //console.log(tj)
      var jg=String(zijisuan(tj))       //计算子解析式
      if(isInArray(abc,diaoyongzifuchuang.substring(qianmdkh-1,qianmdkh)) ==true){         //这是函数
          var zshs=true
          var hanshumc=diaoyongzifuchuang.substring(qianmdkh-2,qianmdkh)
          jg=Number(jg)
          if(hanshumc=="ln"){var jg=azln(jg)}
          if(hanshumc=="lo"){var jg=Math.log(jg)} 
          if(hanshumc=="si"){var jg=Math.sin(jg)} 
          if(hanshumc=="co"){var jg=Math.cos(jg)} 
          if(hanshumc=="ta"){var jg=Math.tan(jg)} 
          if(hanshumc=="as"){var jg=Math.arcsin(jg)} 
          if(hanshumc=="ac"){var jg=Math.arccos(jg)} 
          if(hanshumc=="at"){var jg=Math.arctan(jg)} 
          if(hanshumc=="ab"){var jg=Math.abs(jg)} 
          if(hanshumc=="sq"){var jg=Math.sqrt(jg)} 
          if(hanshumc=="gm"){var jg=gmu(jg)} 

         jg=String(jg)
      }

      if(zshs==true){               //替换计算的结果               (1+(3*5))  →  (1+15)
          var zshs=false
          diaoyongzifuchuang=diaoyongzifuchuang.substring(0,qianmdkh-2)+jg+diaoyongzifuchuang.substring(i+1,diaoyongzifuchuang.length)
      }else{
          diaoyongzifuchuang=diaoyongzifuchuang.substring(0,qianmdkh)+jg+diaoyongzifuchuang.substring(i+1,diaoyongzifuchuang.length)
      }
      console.log(diaoyongzifuchuang)
      break
    }
}
}
//console.log(x,Number(diaoyongzifuchuang))
    return Number(diaoyongzifuchuang)

    }
    function zijisuan(ho){    //计算字符串
        var jo=ho
        var ysfh=["^","*","/","+","_"]      //运算顺序
        var num=["0","9","8","7","6","5","4","3","2","1",".","-"]
        var jsshuzi1=0
        var jsshuzi2=0

        var jiscs=0
for(var i=0;i<jo.length;i++){ //获取运算次数
    var gh=jo.substring(i,i+1)
    if(isInArray(ysfh,gh)==true){  //运算符号
        jiscs++
    }
}


for(var lj=0;lj<ysfh.length;lj++){

  for(var p=0;p<jiscs;p++){        

    for(var i=0;i<jo.length;i++){
        var gh=jo.substring(i,i+1)    //获取运算符

        if(gh==ysfh[lj]){  //运算
        //console.log( gh)
            for(var t=1;t<1000;t++){       //获取运算数字1
                var de=jo.substring(i-t,i-t+1)
                if(isInArray(num,de)==false){
                    var jsshuzi1=Number(jo.substring(i-t+1,i)) 
                    //console.log(jo.substring(i-t+1,i))
                    var txqz=i-t+1
                    break
                }
            }
            for(var t=1;t<1000;t++){                //获取运算数字2
                var de=jo.substring(i+t,i+t+1)
                if(isInArray(num,de)==false){
                //    console.log(jo.substring(i+1,i+t))
                    var jsshuzi2=Number(jo.substring(i+1,i+t))
                    var txhz=i+t
                    break
                }
            }
            //console.log(jsshuzi1, jsshuzi2)
            
            
            if(gh=="^"){var jsjg=Math.pow(jsshuzi1, jsshuzi2)}  //计算
            if(gh=="*"){var jsjg=accMul(jsshuzi1, jsshuzi2)}
            if(gh=="/"){var jsjg=accDiv(jsshuzi1, jsshuzi2)}
            if(gh=="+"){var jsjg=accAdd(jsshuzi1, jsshuzi2)}
            if(gh=="_"){var jsjg=accSub(jsshuzi1, jsshuzi2)}
            

        jo=jo.substring(0,txqz)+jsjg+jo.substring(txhz,jo.length)
        //console.log(jo)
        break
    }
       
        //console.log(jo)
    }
}
}



     
        //console.log(jo)
        return  Number(jo)
    }

    function isInArray(arr,value){                                //数组是否包含
        for(var i = 0; i < arr.length; i++){
            if(value === arr[i]){
                return true;
            }
        }
        return false;
    }
    function arrremove(arr, item) {                       //数组删除
        for(var i=arr.length-1;i>=0;i--)
          {
           if(arr[i]==item)
             {
               arr.splice(i,1);
              }
           }
        return arr;
    }
    function lft(x){  //立方体函数
        return accDiv(jx(x+2), accMul(6, jx(x-1)))     //(x+2)!/(6*(x-1)!)
    }
    /*
function gm(x){       //伽马函数（欧拉无穷乘积定义）
  var ds=1
  for(var n=1;n<1000;n++){
var b= accMul(accDiv(1,accAdd(1, accDiv(x,n))), Math.pow(accAdd(1, accDiv(1,n)),x))  //1/(1+x/n)*Math.pow(1+1/n,x)
    var ds=accMul(ds,b)
  }
  return accMul(accDiv(1,x),ds)
}
function gmw(x){       //伽马函数（维尔斯特拉斯无穷乘积定义）
  var ds=1
  var ol=-1*0.577215664901532860606512090082402431042159335*x
  for(var n=1;n<1000;n++){
var b=1/(1+x/n)*Math.pow(Math.E,x/n)  //accMul(accDiv(1,accAdd(1, accDiv(x,n))), Math.pow(Math.E,accDiv(x,n)))
    var ds=accMul(ds,b)
  }
  return accMul(accDiv(1,x)*Math.pow(Math.E,ol),ds)
}
function gmv(x){       //伽马函数?
  var ds=0
  var dx=0.01
  for(var n=0;n<10000;n=n+dx){
var c=Math.pow(n,x-1)*Math.pow(Math.E,(-1*n))*dx
//console.log(c)
    var ds=ds+c
  }
  return ds
}*/
function gmu(x){       //伽马函数?
  var ds=0
  var dx=0.01
  for(var n=0;n<100;n=n+dx){
var c=Math.pow(n,2*x-1)*Math.pow(Math.E,(-1*n*n))*dx
    var ds=ds+c
  }
  return 2*ds
}

function jxs(jxs,xjihe){
  var yuanshizhifuc=String(jxs).toLowerCase()
  var diaoyongzifuchuang="az("+yuanshizhifuc+")"
  var diaoyongzifuchuang=diaoyongzifuchuang.replace(new RegExp(' ', 'g'), '')


  var abc=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

  var olhs=0.577215664901532860606512090082402431042159335  //γ
  var hjfg=0.61803398874989484820458683436563811  //φ
  var EmbreeTrefethen=0.70258  //β*
  var hanshusl=1
  var yddbllb=[]
for(var h=0;h<diaoyongzifuchuang.length;h++){
  var dqinyiwei=diaoyongzifuchuang.substring(h,h+1)
  //console.log(dqinyiwei)
  if(isInArray(abc,dqinyiwei)==true){
    if(diaoyongzifuchuang.substring(h+1,h+2)=="("){
      hanshusl++
    }
  }
}
for(var f=0;f<hanshusl;f++){
  var bianliangqianzhi=0
  for(var t=0;t<diaoyongzifuchuang.length;t++){
    var dqinyiwei=diaoyongzifuchuang.substring(t,t+1)
    if(isInArray(abc,dqinyiwei)==true){
      if(isInArray(abc,diaoyongzifuchuang.substring(t-1,t))==false){
        var bianliangqianzhi=t
      }
      if(diaoyongzifuchuang.substring(t+1,t+2)=="("){
        var khcj=0
        var jisnr=t+2
    }else if(isInArray(abc,diaoyongzifuchuang.substring(t+1,t+2))==false){
      var bianlhouzi=t+1
      //console.log(bianliangqianzhi)
      
        var bianlmc=diaoyongzifuchuang.substring(bianliangqianzhi,bianlhouzi)
        if(isInArray(yddbllb,bianlmc)==false){
          yddbllb.push(bianlmc)     //获取变量
        }
        
      
    }
  }
  if(diaoyongzifuchuang.substring(t,t+1)=="("){
    khcj++
}
  if(diaoyongzifuchuang.substring(t,t+1)==")"){
    khcj--
    if(khcj>0){
    }else{
  var nbzfc=diaoyongzifuchuang.substring(jisnr,t)
  var nbzfc=nbzfc.replace(new RegExp('pi', 'g'), String(Math.PI));  //替换常数
  var nbzfc=nbzfc.replace(new RegExp('e', 'g'), String(Math.E));
  var nbzfc=nbzfc.replace(new RegExp('ol', 'g'), String(olhs));
  var nbzfc=nbzfc.replace(new RegExp('et', 'g'), String(EmbreeTrefethen));
  var nbzfc=nbzfc.replace(new RegExp('hj', 'g'), String(hjfg));
  for(var n=0;n<yddbllb.length;n++){
    //console.log(yddbllb,xjihe)
    var nbzfc=nbzfc.replace(new RegExp(yddbllb[n], 'g'),String(xjihe[n]))
  }
  //console.log(nbzfc)
  var jg=eval(nbzfc)
  for(var g=jisnr-1;g>0;g--){
    if(isInArray(abc, diaoyongzifuchuang.substring(g-1,g))==false){
      var hanshumc=diaoyongzifuchuang.substring(g,jisnr-1)
      break
    }
  }
 // console.log(hanshumc)



if(hanshumc=="ln"){var jg=azln(jg)}
if(hanshumc=="sin"){var jg=Math.sin(jg)} 
if(hanshumc=="cos"){var jg=Math.cos(jg)} 
if(hanshumc=="tan"){var jg=Math.tan(jg)} 
if(hanshumc=="arcsin"){var jg=Math.arcsin(jg)} 
if(hanshumc=="arccos"){var jg=Math.arccos(jg)} 
if(hanshumc=="arctan"){var jg=Math.arctan(jg)} 
if(hanshumc=="abs"){var jg=Math.abs(jg)} 
if(hanshumc=="sqrt"){var jg=Math.sqrt(jg)} 
if(hanshumc=="gm"){var jg=gmu(jg)} 

jg=String(jg)
diaoyongzifuchuang=diaoyongzifuchuang.substring(0,g)+jg+diaoyongzifuchuang.substring(t+1,diaoyongzifuchuang.length)
console.log(diaoyongzifuchuang)
jisnr=false
break
    }
}
}
}

  return Number(diaoyongzifuchuang)

}

var en=["!","az","\"","'",":","?",",",".","the","be","am","is","are","fuck","I","me","my","hello","ah","world","aha","love","silent","silently","safety","safe","fix","order","as","expensive","ouch","Australia","Aussie","Macao","eight","August","Paris","Brazil","dad","white","daytime","hundred","department","million","Berlin","class","office","Bondy","help","evening","baseball","pound","keep","newspaper","complain","cup","sad","north","northern","nose","than","comparison","comparative","Belgium","rate","pizza","match","competition","player","must","necessary","graduate","fireplace","avoid","resort","side","edge","rim","firecrackers","cap","bianshi","note","cheap","become","change","throughout","puntuation","sign","label","expression","form","performance","other","else","ice","carving","cream","iceberg","byside","leave","patient","dial","Boston","glass","neck","museum","not","no","restless","uneasy","jumper","unknown","so-so","missing","unhealthy","soon","impossible","unusual","difference","different","dislike","unlucky","cloth","Brussels","part","rub","guess","suppose","tailor","judge","menu","join","dining-room","playground","operate","noisy","noise","grass","toilet","fork","tea","teapot","realize","long","stocking","taste","best-seller","sing","chant","copy","past","supermarket","towards","moist","wet","station","display","statement","weigh","success","found","adult","member","castle","city","town","by","canoe","passenger","multiply","eat","pool","late","size","ruler","rush","surf","surfing","surfer","worm","pet","exit","out","born","aloud","appear","taxi","except","unless","kitchen","wear","spread","leaflet","pass","traditional","fax","window","bed","blow","spring","tape","since","moment","from","never","hurry","clever","rough","type","careless","carelessly","village","mistake","wrong","reply","hit","pack","call","open","broke","break","clean","printer","type","avenue","big","large","heavily","mainland","gate","rice","loud","loudly","hall","elephant","laugh","capital","UNIVERSIADE","popular","pronoun","instead","bring","one-way","single","worry","worried","but","cake","certainly","island","pour","empty","collapse","fall","to","into","onto","everywhere","arrive","reach","road","get","score","Germany","German","sure","lantern","check-in","wait","room","low","enemy","bottom","floor","place","geography","ground","globe","map","underground","earthquake","address","number","eighth","second","twentieth","twenty-first","ninth","third","eighteenth","twelfth","fourth","fifth","first","telegraph","fridge","battery","phone","telephone","beeper","computer","TV","lift","film","movie","cinema","electronic","e-mail","carve","fishing","survey","spoon","modem","drop","top","order","lose","lost","northeast","east","Tokyo","thing","winter","animal","zoo","hole","all","steep","tofu","unique","alone","jealous","short","sock","pile","team","captain","sorry","right","dialogue","Toronto","how","snowy","rainy","cloudy","hide","Russia","Russian","er","son","ear","two","secondhand","February","launch","engine","shine","invent","invention","inventor","happen","send","find","discover","style","sprout","pronounce","develop","dull","France","French","Frenchman","translate","restaurant","prevent","disturb","roof","room","house","visit","visitor","put","relax","fly","aeroplane","plane","airport","very","Africa","fat","soap","waste","TB","play","classify","share","minute","tomb","pink","wind","kite","crazy","honey","couple","Mrs.","waiter","symbol","parents","father","pay","woman","women","Bunny","retell","plural","review","adverb","cover","improve","rewrite","correct","dry","berry","pole","dare","Thanksgiving","grateful","thankful","feel","thank","interested","just","pen","piano","tall","high","height","golf","pleasure","delighted","glad","pleased","happily","loudspeaker","tell","arm","song","singer","opera","personal","each","give","to","follow","more","better","worse","less","farther","earlier","factory","project","engineer","tool","worker","job","work","workplace","station","stop","public","rooster","bus","kilo","fair","company","flat","park","palace","contribution","dog","buy","shopping","lonely","ancient","classical","barn","encourage","story","employee","melon","turning","close","shut","critical","closed","about","opinion","champion","washroom","light","widely","ad","rule","regular","track","rail","ghost","stick","chess","national","juice","course","Harvard","poster","seal","undersea","dolphin","channel","seafood","ocean","sea","afraid","scared","shy","hamburger","drought","flight","grand","well","good","OK","fine","several","hooray","seem","kind-hearted","reasonable","suitable","contract","teamwork","when","and","with","bank","walnut","blackboard","black","hey","quite","terrific","probably","hmn","across","bake","red","flood","monkey","later","thick","shout","breathe","fox","pepper","carrot","pot","lake","nurse","passport","flower","spend","garden","Washington","skate","roller-skating","funny","ski","fossil","chemistry","costume","boating","divide","paddle","draw","painter","topic","Waikiki","bad","cheer","yippee","welcome","yet","environment","sick","yellow","butter","grey","back","answer","return","conversation","interview","meet","meeting","dim","wedding","up","mix","activity","moving","alive","fire","train","turkey","rocket","Honolulu","partner","or","load","winner","hungry","chance","machine","robot","mechanical","chicken","egg","active","CD","jeep","region","disease","almost","hardly","plan","remember","mark","record","memory","journalist","mechanic","technology","season","continue","plus","Californian","Canada","Canadian","jacket","Canon","home","family","homework","housework","hometown","Beatles","price","cost","drive","steer","shelf","if","imagine","suppose","nut","shoulder","monitor","pick","minus","scissors","check","suggest","advice","build","building","health","healthy","healthily","keyboard","river","shall","would","should","nearly","future","will","prize","rainfall","traffic","reef","corner","hang","dumpling","foot","step","toe","stir","crow","yip","car","teach","coach","teacher","classroom","church","education","relay","receive","street","holiday","programme","festival","freeze","result","marry","ending","she","her","hers","herself","sister","solve","introduce","care","borrow","lend","today","tonight","metal","only","nervous","although","though","lately","progress","attack","enter","often","manager","experience","wonder","surprise","wonderful","exactly","spirit","scenery","policeman","police","warn","inspector","compete","mirror","nine","ninety","September","wine","lifeboat","live","orange","frustrated","sentence","huge","refuse","club","club","theatre","get-together","party","polyester","sharpener","decide","decision","grab","click","coffee","truck","beginning","bloom","Cairo","start","begin","look","beach","regard","see","gatekeeper","generosity","exam","examination","science","scientist","cough","take-away","coke","possible","terrible","mobile","may","could","lesson","textbook","desk","blank","empty","conditioner","space","air","scary","terrorist","dinosaur","pocket","mouth-to-mouth","thirsty","cry","skeleton","trousers","ladies","praise","cross","quick","fast","quickly","happy","chopstick","wide","insect","tie","difficulty","difficult","hard","bracket","rubbish","litter","dustbin","pull","candle","come","round-trip","column","blue","basketball","basket","lazy","wolf","wave","boss","old","tiger","mouse","band","boon","tired","cold","pear","away","off","leave","polite","politely","auditorium","gift","present","Richmond","understand","reason","history","adventure","Liverpool","example","connect","pity","league","face","practice","practise","exercise","cool","two-story","twice","both","neither","watchtower","neighbour","neighbourhood","ring","bell","zero","lead","exciting","boring","nice","another","yo-yo","singer","six","June","cage","deaf","stairway","earth","land","video","deer","way","path","journey","hotel","travel","trip","traveller","tourist","green","London","ship","turn","wheel","Rome","mum","mummy","trouble","horse","Makaha","bury","sell","full","Manchester","slow","slowly","busy","cat","writing-brush","sweater","hat","nobody","nothing","none","every","everybody","everyone","everything","cent","America","USA","American","beautiful","United-States","delicious","dollar","door","doormat","door-bell","bang","fan","riddle","rice","secret","secretary","code","bee","sheep","cotton","bread","flour","noodle","description","describe","fairs","name","bright","brightly","tomorrow","postcard","model","motorbike","magical","thriller","end","Moscow","Melbourne","Mexico","somebody","someone","something","hen","mother","board","wood","purpose","destination","witness","shepherd","hold","offer","take","which","that","there","those","grandma","cow","cream","shirt","boy","man","men","schoolboy","south","pumpkin","sadly","smelly","clock","can","energy","um","Nepal","nylon","your","yours","you","hi","yourselves","yourself","year","grade","age","young","bird","prefer","milk","beef","Newquay","farm","farmer","farmland","farming","shot","blouse","daughter","dress","girl","skirt","Ms","lady","madam","salesgirl","Europe","climb","row"]
var cn=["！","啊这","“","'","：","？","，","。","这个","是","是","是","是","焯","我","我","我的","你好","啊","世界","啊哈","爱","安静的","安静地","安全","安全的","安装","按顺序","按照","昂贵的","嗷","澳大利亚","澳大利亚人","澳门","八","八月","巴黎","巴西","爸爸","白色的","白天","百","百货商店","百万","柏林","班级","办公室","邦戴","帮助","傍晚","棒球","磅","保持","报纸","抱怨","杯子","悲伤的","北方","北方的","鼻子","比","比较","比较级的","比利时","比例","比萨饼","比赛","比赛","比赛者","必须","必须的","毕业","壁炉","避免","避暑胜地","边","边","边缘","鞭炮","便帽","便士","便条","便宜的","变成","变换","遍及","标点符号","标记","标签","表达","表格","表演","别的","别的","冰","冰雕","冰激凌","冰山","并排","病假","病人","拨","波士顿","玻璃","脖子","博物馆","不","不","不安的","不安的","不按次序排队的人","不出名的","不好不坏的","不见的","不健康的","不久；很快","不可能的","不平常的","不同","不同的","不喜欢","不走运的","布","布鲁塞尔","部分","擦","猜","猜想","裁缝","裁判，法官","菜单","参加","餐厅","操场","操作","嘈杂的","嘈杂声","草","厕所","叉子","茶","茶壶","察觉","长的","长筒袜","尝味","畅销货","唱歌","唱诵","抄写","超过","超级市场","朝着","潮湿的","潮湿的","车站","陈列","陈述","称的重量","成就","成立","成年人","成员","城堡","城市","城镇","乘","乘独木舟","乘客","乘以","吃","池塘","迟的","尺寸","尺子","冲","冲浪","冲浪运动","冲浪者","虫","宠物","出口","出去","出生","出声地","出现","出租车","除之外","除非","厨房","穿着","传播","传单","传递","传统的","传真","窗子","床","吹","春天","磁带","此后","此刻","从","从来不","匆忙","聪明的","粗鲁的","粗体","粗心的","粗心地","村庄","错误","错误的","答复","打","打包","打电话","打开","打破","打破","打扫","打印机","打字","大道","大的","大的","大量地；猛烈地","大陆","大门","大米","大声的","大声地","大厅","大象","大笑","大写的","大学生运动会","大众的","代词","代替","带来","单程的","单一的","担心，使担心","担心的","但是","蛋糕","当然","岛屿","倒","倒空","倒塌","倒下","到","到里","到上","到处","到达","到达","道路","得到","得分","德国","德国人","的确","灯笼","登记处","等候","等候室","低的","敌人","底部","地板","地方","地理","地面","地球","地图","地下的","地震","地址","第号","第八","第二","第二十","第二十一","第九","第三","第十八","第十二","第四","第五","第一","电报","电冰箱","电池","电话","电话","电话传呼机","电脑","电视机","电梯","电影","电影","电影院","电子的","电子邮件","雕刻","钓鱼","调查","调羹","调制解调器","掉下","顶部","定货单","丢失","丢失的","东北","东方","东京","东西","冬天","动物","动物园","洞","都","陡峭的","豆腐","独特的","独自地","妒忌的","短的","短袜","堆","队","队长","对不起的","对的","对话","多伦多","多么","多雪的","多雨的","多云的","躲藏","俄国","俄国的","呃","儿子","耳朵","二","二手的","二月","发动","发动机","发光","发明","发明","发明家","发生","发送","发现:找到","发现","发型","发芽","发音","发展","乏味的","法国","法国的","法国人","翻译","饭馆","防止","妨碍","房顶","房间","房子","访问","访问者","放","放松","飞","飞机","飞机","飞机场","非常","非洲","肥胖的","肥皂","废物","肺结核","分角色表演","分类","分享","分钟","坟墓","粉红色","风","风筝","疯狂的","蜂蜜","夫妻","夫人","服务生","符号","父母","父亲","付钱","妇女","妇女","复活节兔子","复述","复数的","复习","副词","覆盖","改善","改写","改正","干的","干种子","杆子","敢于","感恩节","感激的","感激的","感觉","感谢","感兴趣的","刚","钢笔","钢琴","高的","高的","高度","高尔夫球","高兴","高兴的","高兴的","高兴的","高兴地","高音喇叭","告诉","胳臂","歌","歌唱者","歌剧","个人的","各个","给","根据","跟随","更多的","更好","更坏的","更少的","更远的","更早的","工厂","工程","工程师","工具","工人","工作","工作","工作场所","公车停靠站","公车停靠站","公共的","公鸡","公交车","公斤","公平的","公司","公寓","公园","宫殿","贡献","狗","购买","购物","孤独的","古代的","古典的","谷仓","鼓励","故事","雇员","瓜","拐弯处","关闭","关闭","关键的","关门的","关于；大约","观点","冠军","盥洗室","光","广泛地","广告","规则","规则的，定时的","轨道","轨道","鬼","棍棒","国际象棋","国家的","果汁","过程","哈佛大学","报","海豹","海底的","海豚","海峡","海鲜","海洋","海洋","害怕的","害怕的","害羞的","汉堡包","旱灾","航班","豪华，庄重的","好","好的","好的","好的:好的","好几个","好哇","好象","好心的","合理的","合适的","合同","合作","何时","和","和","河岸","核桃","黑板","黑的","嘿","很","很棒的","很可能","哼","横穿","烘烤","红的","洪水","猴子","后来","厚的","呼喊","呼吸","狐狸","胡椒","胡萝卜","壶","湖泊","护士","护照","花","花费；度过","花园","华盛顿","滑冰","滑旱冰","滑稽的","滑雪","化石","化学","化妆","划船","划分","划水","画","画家","话题","怀基基","坏的","欢呼","欢呼声","欢迎","还","环境","患病的","黄色的","黄油","灰色的","回","回答","回来","会话","会见","会见","会议","昏暗的","婚礼","混合","混合，混和","活动","活动的","活着的","火","火车","火鸡","火箭","火奴鲁鲁","伙伴","或者；否则","货物","获胜者","饥饿的","机会","机器","机器人","机械的","鸡","鸡蛋","积极的","激光唱片","吉普车","极地","疾病","几乎","几乎不","计划","记得","记号","记录","记忆存贮器","记者","技师","技术","季节","继续","加","加利福尼亚号","加拿大","加拿大人","夹克衫","佳能","家","家庭","家庭作业","家务","家乡","甲壳虫乐队","价格","价钱为","驾驶","驾驶","架子","假如","假设","假设","坚果","肩膀","监视器","捡起","减去","剪刀","检查","建议","建议，忠告","建造","建筑","健康","健康的","健康地","键盘","江河","将","将","将","将近","将来","将要","奖品","降水","交通","礁岩","角落","绞死","饺子","脚","脚步","脚趾","搅动","叫","叫喊","轿车","教","教练","教师","教室","教堂","教育","接力","接收","街道","节假日","节目","节日","结冰","结果","结婚","结尾","她","她","她的","她自己","姐","解决","介绍","介意","借","借","今天","今晚","金属","仅仅","紧张不安的","尽管","尽管","近来","进步","进攻","进入","经常","经理","经验","惊奇","惊奇","精彩的","精确地","精神","景色","警察","警察","警告","警官","竞争","镜子","九","九十","九月","酒","救生船","居住","橘子","沮丧的","句子","巨大的","拒绝","俱乐部","俱乐部","剧场","聚会","聚会","聚酯化合物","卷笔刀","决定","决定","攫取","咔哒声","咖啡","卡车","开端","开花","开罗","开始","开始:着手","看","海滩","待","看见","看门人","慷慨","考试","考试","科学","科学家","咳嗽","可带走的（熟食）","可口可乐","可能的","可怕的","可移动的","可以","可以","课","课本","课桌","空白处","空的","空调机","空间","空气","恐怖的","恐怖主义者","恐龙","口袋","口对口的","口渴的","哭","骷髅","裤子","酷妹","夸奖","跨越","快的","快的","快地","快乐的","筷子","宽的","昆虫","捆扎","困难","困难的","困难的","括号","垃圾","垃圾","垃圾箱","拉","蜡烛","来","来回的","栏目","蓝的","篮球","篮子","懒惰的","狼","浪","老板","老的","老虎","老鼠","乐队","雷声","累的","冷的","梨子","离开","离开","离开","礼貌的","礼貌地","礼堂","礼物","礼物","里士满","理解","理由","历史","历险，冒险","利物浦","例子","连接","怜悯","联盟","脸","练习","练习","练习","凉爽的","两层","两次","两者","两者都不","了望塔","邻居","邻里","铃响；打电话","铃子","零","领导","令人兴奋的","令人厌烦的","令人愉快的","另一，又一","溜溜球","流行歌手","六","六月","笼子","聋的","楼道","陆地","陆地","录象","鹿","路","路线","旅程","旅馆","旅行","旅行","旅行者","旅游者","绿色的","伦敦","轮船","轮流","轮子","罗马","妈妈","妈咪","麻烦","马","马卡哈","埋葬","卖","满的","曼彻斯特","慢的","慢慢地","忙的","猫","毛笔","毛衣","帽子","没有人","没有什么东西","没有一个人","每个","每个人","每个人","每件事","美分","美国","美国","美国的","美丽的","美利坚合众国","美味的","美元","门","门口的垫子","门铃","猛敲","迷、球迷、影迷","谜语","米","秘密","秘书","密码","蜜蜂","绵羊","棉花","面包","面粉","面条","描述","描述","庙会","名字","明亮的","明亮地","明天","明信片","模型","摩托车","魔法的","魔鬼","末梢","莫斯科","墨尔本","墨西哥","某人","某人","某事","母鸡","母亲","木板","木头","目的","目的地","目击者","牧羊人","拿","拿出","拿到","哪个","那个","那里","那些","奶奶","奶牛","奶油","男衬衫","男孩","男人","男人们","男生","南方","南瓜","难过地","难闻的","闹钟","能","能量","嗯","尼泊尔","尼龙","你的","你的","你","你好","你们自己","你自己","年","年级","年龄","年轻的","鸟","宁愿","牛奶","牛肉","纽基","农场","农民","农田","农业","努力","女衬衫","女儿","女服","女孩","女裙","女士","女士","女士","女售货员","欧洲","爬","排"]


function az_en_cn(src){
    var sc=""
    for(var t=0;t<src.split(" ").length;t++){
        var dc=src.split(" ")[t]
        var pp=false
        for(var f=0;f<en.length;f++){
            if(dc==en[f]){
                sc=sc+cn[f]
                var pp=true
                break
            }
        }
        if(pp==false){
            sc=sc+dc
        }
    }
    return sc
    
}
function az_cn_en(src){
    var sc=""
    for(var h=0;h<src.length;h++){
        var qm=[]
        var ql=[]
        for(var cc=1;cc<9;cc++){
            var dc=src.substring(h,h+cc)
            for(var f=0;f<cn.length;f++){
              if(cn[f].indexOf(dc)==-1){}else{    //权 加一
                  if(isInArray(qm,cn[f])==true){
                    for(var v=0;v<qm.length;v++){
                        if(cn[f]==qm[v]){
                           break
                        }
                    }
                    var ysq=ql[v]
                    //console.log(qm,ql,cn[f],ysq,v)
                    ysq++
                    ql.splice(v,1,ysq)
                    //console.log(qm,ql)
                  }else{
                      qm.push(cn[f])
                      ql.push(1)
                  }
              }
            }
        }
        //console.log(qm,ql)
        var io=0
        for(var s=0;s<ql.length;s++){
            if(ql[s]>ql[s-1]){
                var io=s
                break
            }
        }
        var mc=qm[io]
        if(mc==undefined){
            //var sc=sc+src.substring(h,h+1)+" "
         }else{
            for(var f=0;f<cn.length;f++){
                if(mc==cn[f]){
                    var sc=sc+en[f]+" "
                    break
                }
            }
                for(var st=0;st<9;st++){
                    if(mc.indexOf(src.substring(h,h+st))==-1){
                        break
                    }
                }
                h=h+st-1-1
         }


        //console.log(mc,sc,st,st-1-1)
    }
    return sc
}



















     function accAdd(arg1, arg2) {             //精确加法
        var r1, r2, m, c;
        try {
          r1 = arg1.toString().split(".")[1].length;
        } catch (e) {
          r1 = 0;
        }
        try {
          r2 = arg2.toString().split(".")[1].length;
        } catch (e) {
          r2 = 0;
        }
        c = Math.abs(r1 - r2);
        m = Math.pow(10, Math.max(r1, r2));
        if (c > 0) {
          var cm = Math.pow(10, c);
          if (r1 > r2) {
            arg1 = Number(arg1.toString().replace(".", ""));
            arg2 = Number(arg2.toString().replace(".", "")) * cm;
          } else {
            arg1 = Number(arg1.toString().replace(".", "")) * cm;
            arg2 = Number(arg2.toString().replace(".", ""));
          }
        } else {
          arg1 = Number(arg1.toString().replace(".", ""));
          arg2 = Number(arg2.toString().replace(".", ""));
        }
        return (arg1 + arg2) / m;
      }
    function accSub(arg1, arg2) {              //精确减法
        var r1, r2, m, n;
        try {
          r1 = arg1.toString().split(".")[1].length;
        } catch (e) {
          r1 = 0;
        }
        try {
          r2 = arg2.toString().split(".")[1].length;
        } catch (e) {
          r2 = 0;
        }
        m = Math.pow(10, Math.max(r1, r2)); //last modify by deeka //动态控制精度长度
        n = (r1 >= r2) ? r1 : r2;
        return ((arg1 * m - arg2 * m) / m).toFixed(n);
      }
    function accMul(arg1, arg2) {          //精确乘法
        var m = 0,
          s1 = arg1.toString(),
          s2 = arg2.toString();
        try {
          m += s1.split(".")[1].length;
        } catch (e) {}
        try {
          m += s2.split(".")[1].length;
        } catch (e) {}
        return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m);
      }
    function accDiv(arg1, arg2) {        //精确除法
        var t1 = 0,
          t2 = 0,
          r1, r2;
        try {
          t1 = arg1.toString().split(".")[1].length;
        } catch (e) {}
        try {
          t2 = arg2.toString().split(".")[1].length;
        } catch (e) {}
        with(Math) {
          r1 = Number(arg1.toString().replace(".", ""));
          r2 = Number(arg2.toString().replace(".", ""));
          return (r1 / r2) * pow(10, t2 - t1);
        }
      }
      function toCode (str) {  //加密字符串
        //定义密钥，36个字母和数字
        var key = "~`!@#$%^&*()_+}{|?>:<,./;][-=。，‘“”’：";
        var len = key.length;  
        var a = key.split("");  
        var s = "",b, b1, b2, b3;  
        for (var i = 0; i <str.length; i ++) {  
            b = str.charCodeAt(i);  
            b1 = b % len;  
            b = (b - b1) / len;  
            b2 = b % len;  
            b = (b - b2) / len;  
            b3 = b % len;  
            s += a[b3] + a[b2] + a[b1];  
        }
        return s;  
    }
    function fromCode (str) {                 //解密字符串
        //定义密钥，36个字母和数字
        var key = "~`!@#$%^&*()_+}{|?>:<,./;][-=。，‘“”’：";
        var len = key.length;  
        var b, b1, b2, b3, d = 0, s;  
        s = new Array(Math.floor(str.length / 3));  
        b = s.length;  
        for (var i = 0; i < b; i ++) {  
            b1 = key.indexOf(str.charAt(d));  
            d ++;
            b2 = key.indexOf(str.charAt(d));  
            d ++;
            b3 = key.indexOf(str.charAt(d));  
            d ++;
            s[i] = b1 * len * len + b2 * len + b3  
        }
        b = eval("String.fromCharCode(" + s.join(',') + ")");  
        return b ;  
    }
    function zfc_to_sz(lb){             //字符串转数组
      var lssz=[];
      ////console.log(lb)
      if(lb.indexOf("ن")>-1){
          for(var tgh=0;tgh<lb.split("ن").length;tgh++) {
              lssz.push(lb.split("ن")[tgh])
          }
      }else{
          lssz.push(lb)
  
  }
      return lssz
  }
  
  
  function sz_to_zfc(sz){            //数组转字符串
      var lssz="";
      for(var tgh=0;tgh<sz.length-1;tgh++) {
         var lssz=lssz+sz[tgh]+"ن"
      }
      var lssz=lssz+sz[sz.length-1]
  return lssz
  }




      function l(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z){
        console.log(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z)
      }
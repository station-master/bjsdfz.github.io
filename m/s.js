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


    function jiexiys(jiexishi,x,y,z,m,n,p,q,a,b,c,d,k){
      /*
解析式计算函数
jiexiys(解析式,x,y,z,m,n,p,q,a,b,c,d,k)

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
if(zuokuohao==youkuohao){
}else if(zuokuohao>youkuohao){
  return "err 少了"+String(zuokuohao-youkuohao)+"个“)”"
}else if(zuokuohao<youkuohao){
  return "err 多了"+String(youkuohao-zuokuohao)+"个“)”"
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
      var tj=tj.replace(new RegExp('pi', 'g'), String(Math.PI));  //替换变量
      var tj=tj.replace(new RegExp('e', 'g'), String(Math.E));
      var tj=tj.replace(new RegExp('ol', 'g'), String(olhs));
      var tj=tj.replace(new RegExp('et', 'g'), String(EmbreeTrefethen));
      var tj=tj.replace(new RegExp('hj', 'g'), String(hjfg));
      var tj=tj.replace(new RegExp('x', 'g'), String(x));
      var tj=tj.replace(new RegExp('y', 'g'), String(y));
      var tj=tj.replace(new RegExp('z', 'g'), String(z));
      var tj=tj.replace(new RegExp('m', 'g'), String(m));
      var tj=tj.replace(new RegExp('n', 'g'), String(n));
      var tj=tj.replace(new RegExp('p', 'g'), String(p));
      var tj=tj.replace(new RegExp('q', 'g'), String(q));
      var tj=tj.replace(new RegExp('a', 'g'), String(a));
      var tj=tj.replace(new RegExp('b', 'g'), String(b));
      var tj=tj.replace(new RegExp('c', 'g'), String(c));
      var tj=tj.replace(new RegExp('d', 'g'), String(d));
      var tj=tj.replace(new RegExp('k', 'g'), String(k));
      //console.log(tj)
      var jg=String(zijisuan(tj))
      if(isInArray(abc,diaoyongzifuchuang.substring(qianmdkh-1,qianmdkh)) ==true){         //这是函数
          var zshs=true
          var hanshumc=diaoyongzifuchuang.substring(qianmdkh-2,qianmdkh)
          jg=Number(jg)
          if(hanshumc=="ln"){   //ln
              var jg=azln(jg)
          }
          if(hanshumc=="si"){   //sin
            var jg=Math.sin(jg)
          }
          if(hanshumc=="co"){   //cos
          var jg=Math.cos(jg)
         }
          if(hanshumc=="ta"){   //tan
           var jg=Math.tan(jg)
         }
         if(hanshumc=="as"){   //arcsin
          var jg=Math.asin(jg)
         }
         if(hanshumc=="as"){   //arccos
          var jg=Math.acos(jg)
         }
         if(hanshumc=="as"){   //arctan
          var jg=Math.atan(jg)
         }
         if(hanshumc=="lo"){   //log
          var jg=Math.log(jg)
         }
         if(hanshumc=="sq"){   //根号
          var jg=Math.sqrt(jg)
         }
         if(hanshumc=="ab"){   //abs
          var jg=Math.abs(jg)
         }
         if(hanshumc=="gm"){   //伽马函数（阶乘）
          var jg=gmu(jg)
         }

         jg=String(jg)
      }

      if(zshs==true){
          var zshs=false
          diaoyongzifuchuang=diaoyongzifuchuang.substring(0,qianmdkh-2)+jg+diaoyongzifuchuang.substring(i+1,diaoyongzifuchuang.length)
      }else{
          diaoyongzifuchuang=diaoyongzifuchuang.substring(0,qianmdkh)+jg+diaoyongzifuchuang.substring(i+1,diaoyongzifuchuang.length)
      }
      //console.log(diaoyongzifuchuang)
      break
    }
}
}
console.log(x,Number(diaoyongzifuchuang))
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
function liangzhuzhihcjs(jsshuzi1,jsshuzi2,gh){
    if(gh=="^"){var jsjg=Math.pow(jsshuzi1, jsshuzi2)}
    if(gh=="*"){var jsjg=accMul(jsshuzi1, jsshuzi2)}
    if(gh=="/"){var jsjg=accDiv(jsshuzi1, jsshuzi2)}
    if(gh=="+"){var jsjg=accAdd(jsshuzi1, jsshuzi2)}
    if(gh=="-"){var jsjg=accSub(jsshuzi1, jsshuzi2)}
    return jsjg
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
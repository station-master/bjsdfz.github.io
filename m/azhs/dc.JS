/*
az v8
更新日志
[增加]:虚拟鼠标(隐藏了原有的鼠标)
[修复]:
[更改]:对核心代码做了加密
[移除]:移除了him
*/
var xrjqd=100           //分成几份
var xsx=300     //坐标系显示位置 x
var xsy=400     //坐标系显示位置 y
var hxxianshi=20     //横向显示多少
var xianshikuandu=600    //坐标系显示宽度
var xianshigaodu=800    //坐标系显示高度
var ydisX=300
var ydisY=400
var points = []
var hbck
var hslb=[]
var pxtonum=hxxianshi/xianshikuandu
var numtopx=xianshikuandu/hxxianshi

var cpmsgb="m"
var cpmsgbcs=0
var ysd="公告：对核心代码做了加密。";
var xnsbdx="10px"
function windowonload(){
    document.getElementById('xnsb').style.width=xnsbdx
    document.getElementById('xnsb').style.height=xnsbdx
    document.getElementById('xnsb').style.borderRadius="0px "+xnsbdx+" "+xnsbdx+" "+xnsbdx
    document.getElementById('xnsb').style.border=String(Number(xnsbdx.split("px")[0])/3) +"px solid var(--bjsdfz)"
    window.onmousedown = function(){xnsbaxqh("x")};
    window.onmouseup = function(){xnsbaxqh("s")};
    window.ontouchstart = function(){xnsbaxqh("x")};
    window.ontouchend = function(){xnsbaxqh("s")};

    alert(ysd)
}

window.onload=function(){
windowonload()
    var oDiv = document.getElementById('zbx');
    addEvent(oDiv,'mousewheel',hssf);
    addEvent(oDiv,'DOMMouseScroll',hssf);
    
                  var hy=document.getElementById("divdis");
                  
  hbck=hy.getContext("2d");
  hbck.fillStyle="#FF0000"
  hbck.lineWidth=2
  
  bianhau()
      huizhi()
  
              }
  
              function zbxyd(azm){
                  l("开始移动",azm)
                  var ydzbxcs=1
                  var disX
                  var disY
                  xsy=(document.getElementById("xzhou").style.top).split("px")[0]     //坐标系显示位置 x
                  xsx=(document.getElementById("yzhou").style.left).split("px")[0]     //坐标系显示位置 y
                  xnsbaxqh("x")
                  window.ontouchmove=function(h){
                      fsdcds(h,'t')
                      if(ydzbxcs==1){
              ydzbxcs=0
              disX=h.touches[0].clientX-xsx
              disY=h.touches[0].clientY-xsy
              //l(cpmsgbcs,cpmsgb,"1t")
              if(cpmsgbcs==0){
                  cpmsgb="t"
                  cpmsgbcs=1
              }
          }else{
              var x = h.touches[0].clientX-disX
              var y = h.touches[0].clientY-disY
              ydisX=x
              ydisY=y
                  //l(cpmsgbcs,cpmsgb,"yt")
                  if(cpmsgb=="t"){
                      //l("触碰改坐标")
                      bianhau()
                      document.getElementById("yzhou").style.left=x+"px"
                      document.getElementById("xzhou").style.top=y+"px"
                  }
          }
                  }
                  window.onmousemove=function(h){
                      fsdcds(h,'m')
          if(ydzbxcs==1){
              ydzbxcs=0
              disX=h.clientX-xsx
              disY=h.clientY-xsy
              //l(cpmsgbcs,cpmsgb)
              if(cpmsgbcs==0){
                  cpmsgb="m"
                  cpmsgbcs=1
              }
          }else{
              var x = h.clientX-disX
              var y = h.clientY-disY
              ydisX=x
              ydisY=y
                  //l(cpmsgbcs,cpmsgb,"ym")
                  if(cpmsgb=="m"){
                      //l("鼠标改坐标")
                      bianhau()
                      document.getElementById("yzhou").style.left=x+"px"
                      document.getElementById("xzhou").style.top=y+"px"
                  }
          }
      }
      window.onmouseup = function(m) {
        xnsbaxqh("s")
          //l("m",cpmsgb)                
          if(cpmsgb=="m"){
              bianhau()
          huizhi()
          }
          window.onmousemove = function(h){fsdcds(h,'m')};
   }
   window.ontouchend = function() {
    xnsbaxqh("s")
      //l("t",cpmsgb)
      if(cpmsgb=="t"){
          bianhau()
      huizhi()
  }
  window.ontouchmove = function(h){fsdcds(h,'t')};
   }
              }

if(localStorage.getItem("az")==undefined){var azc=0}else{
    var azc=localStorage.getItem("az")
}
function az(){

    azc++
    document.getElementById("azcs").innerHTML="已啊这"+azc+"次！"
    document.getElementById("azcs").style.display="block"
    setTimeout(function() {document.getElementById("azcs").style.display="none";},800);
    localStorage.setItem("az",azc)
}
function xnsbaxqh(m){
    if(m=="x"){
        document.getElementById('xnsb').style.backgroundColor= "var(--bjsdfz)"
    }
    if(m=="s"){
        document.getElementById('xnsb').style.backgroundColor= "rgba(0, 0, 0, 0)"
    }
}
function draw(x1,y1) {                              //贝塞尔曲线绘制
    if(x1==undefined){
        var mousex=sbx
    }else{
        var mousex=x1
    }

    if(y1==undefined){
        var mousey=sby
    }else{
        var mousey=y1
    }
    points.push({ x: mousex, y: mousey });
    hbck.beginPath();
    let x = (points[points.length - 2].x + points[points.length - 1].x) / 2,
        y = (points[points.length - 2].y + points[points.length - 1].y) / 2;
    if (points.length == 2) {
        hbck.moveTo(points[points.length - 2].x, points[points.length - 2].y);
        hbck.lineTo(x, y);
    } else {
        let lastX = (points[points.length - 3].x + points[points.length - 2].x) / 2,
            lastY = (points[points.length - 3].y + points[points.length - 2].y) / 2;
        hbck.moveTo(lastX, lastY);
        hbck.quadraticCurveTo(points[points.length - 2].x, points[points.length - 2].y, x, y);
    }
    hbck.stroke();
    points.slice(0, 1);

}



function hzqx(jxs,q,z){
pxtonum=accDiv(hxxianshi,xianshikuandu)
//pxtonum=Number(pxtonum.toFixed(xrjqd/20))
numtopx=accDiv(xianshikuandu,hxxianshi)
//numtopx=Number(numtopx.toFixed(xrjqd/20))

points = []
var qh=1
var isnone=true
//l(jxs,q,z)
//var dancizjia=//每次增加
var dancizjia=accMul( accDiv(xianshikuandu,xrjqd),pxtonum)
if(q==undefined||q==""){
    var xsqd=-1*ydisX*pxtonum //循环起点
}else{
    var xsqd=Number(q)
}
if(z==undefined||z==""){
    var xhzd=(xianshikuandu- ydisX)*pxtonum//循环终点
}else{
    var xhzd=Number(z)
}





for(var jt=xsqd;jt<=xhzd+dancizjia;jt=accAdd(jt,dancizjia)){
    //jt =Number( jt.toFixed(xrjqd/20))

    //console.log("az",jt)
if(jt>0){
    if(jt-dancizjia<0){
        //l(jt)
        var hk=0
        var jt=0
    }else{
        var hk=jt
    }
}else{
    var hk=jt
}
if(jt>xhzd){
    var hk=xhzd
}
//
var hg=zhixhuiz(hk,jxs)
//console.log(hg,hk)
if(hg[1]==NaN||hg[1]==Infinity||hg[1]==-Infinity||hg[1]>xianshigaodu*2||hg[1]<-1*xianshigaodu){
    
    isnone=false
    qh=1
    points = []
}else{
    isnone=true
}
if(qh==1){
    if(isnone==true){
        qh=0
        points.push({ x: xxx, y: yyy });
    }
}
var xxx=hg[0]
var  yyy=hg[1]
  //console.log(xxx,yyy)
if(isnone==true){
    draw(xxx,yyy)
    //console.log(xxx,yyy)
}

}
}


function zhixhuiz(hm,jxs){
    var hf=jiexiys(jxs,hm)
    if(hf==NaN){
        return NaN
    }
var hf1=xianshigaodu- (hf*numtopx+xianshigaodu-ydisY)


  var xxx=hm*numtopx
  var xxx=xxx+ydisX
  var  yyy=hf1
  var hv=[xxx,yyy]
  return hv
}
function bianhau(){



    document.getElementById("zbx").style.width=xianshikuandu+"px"
    document.getElementById("zbx").style.height=xianshigaodu+"px"
    document.getElementById("divdis").style.width=xianshikuandu
    document.getElementById("divdis").style.height=xianshigaodu
    document.getElementById("divdis").width=xianshikuandu
    document.getElementById("divdis").height=xianshigaodu
    document.getElementById("bhcv").value=xianshikuandu
    document.getElementById("edsde").value=xianshigaodu
    document.getElementById("decsx").value=ydisX
    document.getElementById("decsy").value=ydisY
    document.getElementById("gdrft").value=xrjqd
    document.getElementById("fvfrv").value=hxxianshi
    document.getElementById("yzhou").style.left=ydisX+"px"
    document.getElementById("xzhou").style.top=ydisY+"px"
    document.getElementById("hslbxs").style.left=xianshikuandu+50+"px"
    document.getElementById("drdrdr").style.left=xianshikuandu+50+"px"
    document.getElementById("qtgn").style.left=xianshikuandu+50+"px"
    document.getElementById("gnxz").style.left=xianshikuandu+50+"px"

}
function zhudbianhua(){
    hxxianshi=Number(document.getElementById("fvfrv").value) 
    xrjqd=Number(document.getElementById("gdrft").value)
    ydisX=Number(document.getElementById("decsx").value)
    ydisY=Number(document.getElementById("decsy").value)
    xianshikuandu=Number(document.getElementById("bhcv").value)
    xianshigaodu=Number(document.getElementById("edsde").value)
    bianhau()
    huizhi()
}

function huizhi(){
    hbck.clearRect(0,0,xianshikuandu,xianshigaodu)
for(var jr=0;jr<hslb.length;jr++){
    if(hslb[jr]==""){}else{
        if( hslb[jr].split("|")[1]==undefined||hslb[jr].split("|")[1]==""){
            hbck.strokeStyle="black"
        }else{
            hbck.strokeStyle=hslb[jr].split("|")[1]
        }
        hzqx(hslb[jr].split("|")[0],hslb[jr].split("|")[2],hslb[jr].split("|")[3])  
    }
}
}
window.onmousemove=function(h){fsdcds(h,'m')}
window.ontouchmove=function(h){fsdcds(h,'t')}
function fsdcds(h,m){
    //console.log(h.clientX,)
    if(m=="m"){
        var sbzbxx=(h.clientX-20)-ydisX
        var sbzbxy=ydisY-(h.clientY-100)
        document.getElementById('xnsb').style.top=h.clientY+1+"px"
        document.getElementById('xnsb').style.left=h.clientX+1+"px"
    }else     if(m=="t"){
        var sbzbxx=(h.touches[0].clientX-20)-ydisX
        var sbzbxy=ydisY-(h.touches[0].clientY-100)
        document.getElementById('xnsb').style.top=h.touches[0].clientY+1+"px"
        document.getElementById('xnsb').style.left=h.touches[0].clientX+1+"px"
    }

    var pxtonum=accDiv(hxxianshi, xianshikuandu)
    var sbzbxx=accMul(sbzbxx,pxtonum).toFixed(3)
    var sbzbxy=accMul(sbzbxy,pxtonum).toFixed(3)
    document.getElementById("gbftr").value=sbzbxx
    document.getElementById("oi9l").value=sbzbxy
}
function cjxhs(jxs,clorer,zuixiao,zuida){
    if(clorer==""||clorer==undefined){
        clorer="black"
    }
    if(zuixiao==""){}else{var zuixiao=jiexiys(zuixiao)}
if(zuida==""){}else{var zuida=jiexiys(zuida)}
    hslb.push(jxs+"|"+clorer+"|"+zuixiao+"|"+zuida)
    huizhi()

var hanshuhao=hslb.length-1
if(zuixiao==""){var zuixiao="-∞"}
if(zuida==""){var zuida="∞"}
if((jxs+"&emsp;&emsp;"+zuixiao+","+zuida).length>18){
    var g=(jxs+"  "+zuixiao+","+zuida).substring(0,18)+"..."
}else{
    var g=(jxs+"  "+zuixiao+","+zuida)
}
    var y=document.getElementById("hslbxs").innerHTML
    document.getElementById("hslbxs").innerHTML=y+"<div class='hcxda' style='color: "+clorer+";'  id='hs"+hanshuhao+"'>"+g+"<div class='hsscan' onclick='delhs("+hanshuhao+")'>删除</div></div>"
}
function tianjiaxinhanshu(){
    var jxs=document.getElementById("grdgr").value
    var clorer=document.getElementById("wadwd").value
    var zuixiao=document.getElementById("hs-sm").value
    var zuida=document.getElementById("hs-zd").value
    cjxhs(jxs,clorer,zuixiao,zuida)
}
function delhs(hsh){
    document.getElementById("hs"+hsh).remove()
    hslb.splice(hsh,1,"")
    huizhi()
}
function hssf(ev){
    if(ev.wheelDelta<0){
         hxxianshi=hxxianshi+1
    }else     if(ev.wheelDelta>0){
        hxxianshi=hxxianshi-1
    }
    if(hxxianshi<1){hxxianshi=1}
    if(hxxianshi>1000){hxxianshi=1000}
    document.getElementById("fvfrv").value=hxxianshi
    huizhi()
}
function addEvent(obj,xEvent,fn) {
    if(obj.attachEvent){
      obj.attachEvent('on'+xEvent,fn);
    }else{
      obj.addEventListener(xEvent,fn,false);
    }
}
function beif(){           //导出
    var hs=sz_to_zfc(hslb)
    document.getElementById("klkl").value=toCode(hs+"و³")
}
function huif(){           //恢复函数
    var   f=document.getElementById("klkl").value
    var hanshulb=fromCode (f).split("و³")[0]
    var hanshulb=zfc_to_sz(hanshulb)
    l(hanshulb)
    hslb=[]
    document.getElementById("hslbxs").innerHTML=""
    for(var d=0;d<hanshulb.length;d++){
       if(hanshulb[d]==""){}else{
        hslb.push(hanshulb[d])
        var jxs=hanshulb[d].split("|")[0]
        var clorer=hanshulb[d].split("|")[1]
        var zuixiao=hanshulb[d].split("|")[2]
        var zuida=hanshulb[d].split("|")[3]
        if(zuixiao==""){var zuixiao="-∞"}
        if(zuida==""){var zuida="∞"}
        var y=document.getElementById("hslbxs").innerHTML
        document.getElementById("hslbxs").innerHTML=y+"<div class='hcxda' style='color: "+clorer+";'  id='hs"+d+"'>"+jxs+"&emsp;&emsp;"+zuixiao+","+zuida+"<div class='hsscan' onclick='delhs("+d+")'>删除</div></div>"

       }
    }
    huizhi()

}
function azfy(ms){
    var jg=""
    if(ms=="zyy"){var y=document.getElementById("uoppp").value
        document.getElementById("fyjg").value=az_cn_en(y)}
    if(ms=="yyz"){var y=document.getElementById("uoppp").value
        document.getElementById("fyjg").value=az_en_cn(y)}
    if(ms=="md5"){var y=document.getElementById("bgfgbbgfbgf").value
        document.getElementById("hbftggfhbfgbh").value=md5(y)}
    if(ms=="js"){var y=document.getElementById("cddddcdcdcdc").value
        document.getElementById("cdshhjshjdcshjchj").value=jiexiys(y)}
    if(ms=="djf"){
        var x=jiexiys(document.getElementById("xeeeeee").value)
var s=jiexiys( document.getElementById("seeeeee").value)
var jxs=jiexiys(document.getElementById("jxseeeeee").value)
//var jxs=jxs.replace(new RegExp('dx', 'g'), 'y');
var dx=jiexiys(document.getElementById("dxeeeeee").value)
var g=0
for(var h=Number(x);h<=Number(s);h=accAdd(h, dx)){
    var hy=[h,Number(dx)]
    var po=jiexiys(jxs,hy)
    //l(jxs,h,Number(dx),po,g)
    if(String(po)=="NaN"){}else{
        var g=accAdd(g, po)
    }
}
document.getElementById("wegyecsdbhnuieshn").value= g
    }
    if(ms=="azqd"){var y=document.getElementById("gergrggrgrvrdf").value
        document.getElementById("hnrcisbnhfcirufghbvisdr").value=qd_fqd(y,"qd")}
        if(ms=="azfqd"){var y=document.getElementById("gergrggrgrvrdf").value
        document.getElementById("hnrcisbnhfcirufghbvisdr").value=qd_fqd(y,"fqd")}
        if(ms=="lglr"){var y=document.getElementById("hyyjukuik").value
        document.getElementById("vfbghnhjnm").value=lglrcz(y)}
}
function gnqh(){
    var gn=7
    var gnqh=document.getElementById("gnxz").value
    document.getElementById(gnqh).style.display="block"
    for(var c=1;c<=gn;c++){
        if("gn"+c==gnqh){}else{
            document.getElementById("gn"+c).style.display="none"
        }
    }
}

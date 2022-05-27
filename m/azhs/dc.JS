/*
az v9
更新日志
[增加]:太多了写不过来
[修复]:太多了写不过来
[更改]:太多了写不过来
[移除]:移除了him 太多了写不过来
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
var mouse_x=0
var mouse_y=0
var now_mouse_x=0
var now_mouse_y=0
var gssbyd=false //是否跟随鼠标移动

var hslb=[]  //函数列表
var dlb=[]  //点列表
var cllb=[]  //常量列表
var clzlb=[]   //常量值列表
var xzlb=[]  //选中列表

var pxtonum=hxxianshi/xianshikuandu
var numtopx=xianshikuandu/hxxianshi

var jsq=0  //计时器
var cpmsgb="m"
var cpmsgbcs=0
var ysd="公告：对核心代码做了加密。";
var xnsbdx="10px"

var isshift=false
var isalt=false

var fgfywsgheohjvfsbghyfgbsuyjghfbsrgfbkrgbvrgdsf
function getx(){return fgfywsgheohjvfsbghyfgbsuyjghfbsrgfbkrgbvrgdsf}
function windowonload(){
    
    window.onmousedown = function(){xnsbaxqh("x")};
    window.onmouseup = function(){xnsbaxqh("s")};
    window.ontouchstart = function(){xnsbaxqh("x")};
    window.ontouchend = function(){xnsbaxqh("s")};

    //alert(ysd)
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
                  //l("开始移动",azm)
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
    var xsqd=jiexiys(q)
}
if(z==undefined||z==""){
    var xhzd=(xianshikuandu- ydisX)*pxtonum//循环终点
}else{
    var xhzd=jiexiys(z)
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
function hzd(x,y,k,r){
    
    hbck.beginPath();
    hbck.arc(x*numtopx+ydisX,ydisY-y*numtopx,r,0,2*Math.PI);
    hbck.fillStyle=k;
    hbck.fill();
    hbck.stroke();
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
function gxsbydqg(){
if(gssbyd==false){gssbyd=true
    //document.getElementById('gssbydqhan').value="跟随鼠标移动 ON"
}else{gssbyd=false
    //document.getElementById('gssbydqhan').value="跟随鼠标移动 OFF"
}

}
function sxcl(){
    for(var i=0;i<cllb.length;i++){
        clzlb.splice(i,1,jiexiys(cllb[i].split("|")[1]))
    }
}
function bianhau(){
    if(cpmsgb=="t"){
        xnsbdx="50px"
    }


    document.getElementById('xnsb').style.width=xnsbdx
    document.getElementById('xnsb').style.height=xnsbdx
    document.getElementById('xnsb').style.borderRadius="0px "+xnsbdx+" "+xnsbdx+" "+xnsbdx
    document.getElementById('xnsb').style.border=String(Number(xnsbdx.split("px")[0])/3) +"px solid var(--bjsdfz)"
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
    document.getElementById("caozuolan").style.left=xianshikuandu+50+"px"

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
    var start = new Date().getTime() // 开始时间
    hbck.clearRect(0,0,xianshikuandu,xianshigaodu)
for(var jr=0;jr<hslb.length;jr++){         //画函数
    if(hslb[jr]==""){}else{
        if( hslb[jr].split("|")[1]==undefined||hslb[jr].split("|")[1]==""){
            hbck.strokeStyle="black"
        }else{
            hbck.strokeStyle=hslb[jr].split("|")[1]
        }
        if(isInArray(xzlb,"h"+jr)==true){
            hbck.lineWidth=3
            hbck.strokeStyle="red"
        }else{
            hbck.lineWidth=1
        }
        hzqx(hslb[jr].split("|")[0],hslb[jr].split("|")[2],hslb[jr].split("|")[3])  
    }
}
hbck.strokeStyle="black"
hbck.lineWidth=1
for(var wl=0;wl<dlb.length;wl++){           //画点
    var x=dlb[wl].split("|")[0]
    var y=dlb[wl].split("|")[1]
    if(dlb[wl]==""){}else{
        if(isInArray(xzlb,"d"+wl)==true){
            hzd(jiexiys(x),jiexiys(y),"green",5)
        }else{
            hzd(jiexiys(x),jiexiys(y),"red",3)
        }
        
    }
}
var end = new Date().getTime() // 结束时间
document.getElementById("yams").innerHTML="用时"+String(end - start)+"ms"

}
window.onmousemove=function(h){fsdcds(h,'m')}
window.ontouchmove=function(h){fsdcds(h,'t')}
function fsdcds(h,m){                                         //鼠标移动
    //console.log(h.clientX,)
    if(m=="m"){
        var sbzbxx=(h.clientX-20)-ydisX
        var sbzbxy=ydisY-(h.clientY-100)
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
    if(gssbyd==true){
        mouse_x=sbzbxx
        mouse_y=sbzbxy
        huizhi()
    }
    now_mouse_x=sbzbxx
    now_mouse_y=sbzbxy
}
function cjxhs(jxs,clorer,zuixiao,zuida){          //添加函数
    if(clorer==""||clorer==undefined){
        clorer="black"
    }
    if(zuixiao==""){}else{var zuixiao=jiexiys(zuixiao)}
if(zuida==""){}else{var zuida=jiexiys(zuida)}
    hslb.push(jxs+"|"+clorer+"|"+zuixiao+"|"+zuida)
/*  函数的数据模型：  解析式|颜色|取值下线|取自上限
*/
var hanshuhao=hslb.length-1
if(zuixiao==""){var zuixiao="-∞"}
if(zuida==""){var zuida="∞"}
if((jxs+"&emsp;&emsp;"+zuixiao+","+zuida).length>18){
    var g=("h"+hanshuhao+"&emsp;"+jxs+"&emsp;"+zuixiao+","+zuida).substring(0,18)+"..."
}else{
    var g=("h"+hanshuhao+"&emsp;"+jxs+"&emsp;"+zuixiao+","+zuida)
}
    var y=document.getElementById("hslbxs").innerHTML
    document.getElementById("hslbxs").innerHTML=y+"<div class='hcxda' onclick=xz('h"+hanshuhao+"') style='color: "+clorer+";'  id='h"+hanshuhao+"'>"+g+"<div class='hsscan' onclick=delhs("+hanshuhao+",'h')>删除</div></div>"
    return hanshuhao
}
function xjdqz(){
    var x1=document.getElementById("egfdgfbcujsx").value
    var y1=document.getElementById("egfdgfbcujsy").value
    xjdian(x1,y1)
    huizhi()
}
function xjdian(x,y){           //添加点
/*  点的数据模型：  x坐标|y坐标
*/
dlb.push(String(x)+"|"+String(y))
var hanshuhao=dlb.length-1
var g="d"+hanshuhao+"&emsp;"+x+","+y
var y=document.getElementById("hslbxs").innerHTML
    document.getElementById("hslbxs").innerHTML=y+"<div class='hcxda' onclick=xz('d"+hanshuhao+"') style='color: black;' id='d"+hanshuhao+"'>"+g+"<div class='hsscan' onclick=delhs("+hanshuhao+",'d');>删除</div></div>"
return hanshuhao
}
function xjclqz(){
    var x1=document.getElementById("vffrrrrrrx").value
    var y1=document.getElementById("vffrrrrrry").value
    xjcl(x1,y1)
}
function xjcl(m,z){           //添常量
    /*  常量的数据模型：  常量名|值
    */
    cllb.push(String(m)+"|"+String(z))
    clzlb.push(z)
    sxcl()
    huizhi()
    var hanshuhao=cllb.length-1
    var g="c"+hanshuhao+"&emsp;"+m
    var y=document.getElementById("hslbxs").innerHTML
        document.getElementById("hslbxs").innerHTML=y+"<div class='hcxda' onclick=xz('c"+hanshuhao+"') style='color: black;' id='c"+hanshuhao+"'>"+g+"<input id='clsr"+hanshuhao+"' class='vfr' style='top:5px;left:70px; width: 60px; height: 20px;' value='"+z+"' onchange=clgb("+hanshuhao+",'sr') /><input id='clhk"+hanshuhao+"' class='vfr' style='top:5px;left:140px; width: 100px; height: 20px;' type='range' min='-10' max='10' step='0' value='"+z+"' onchange=clgb("+hanshuhao+",'hk') /><div class='hsscan' onclick='delhs("+hanshuhao+",'cl');'>删除</div></div>"
        return hanshuhao
    }
    function clgb(clh,zgg){              //常量输入
        if(zgg=="hk"){var m=document.getElementById("clhk"+clh).value}
        if(zgg=="sr"){var m=document.getElementById("clsr"+clh).value}
        var yclsjcs=cllb[Number(clh)].split("|")[0]
        cllb.splice(Number(clh),1,yclsjcs+"|"+m)
        //console.log(yclsjcs,m,cllb,Number(clh))
        document.getElementById("clhk"+clh).value=jiexiys(m)
        document.getElementById("clsr"+clh).value=m
        sxcl()
        huizhi()
    }
    function xz(m){                     //添加 移除选择
        //console.log(m,xzlb,isalt,isshift)
        if(isInArray(xzlb,m)==true){
                xzlb=arrremove(xzlb,m)
                document.getElementById(m).style.backgroundColor="white"
        }else{
                xzlb.push(m)
                document.getElementById(m).style.backgroundColor="#7c0a2180"
        }
huizhi()
    }
    function qkxz(){
        for(var d=0;d<xzlb.length;d++){
            document.getElementById(xzlb[d]).style.backgroundColor="white"
        }
        xzlb=[]
        huizhi()
    }
function tianjiaxinhanshu(){
    var jxs=document.getElementById("grdgr").value
    var clorer=document.getElementById("wadwd").value
    var zuixiao=document.getElementById("hs-sm").value
    var zuida=document.getElementById("hs-zd").value
    cjxhs(jxs,clorer,zuixiao,zuida)
    huizhi()
}
function delhs(hsh,lx){                                        //删除
    arrremove(xzlb,lx+hsh)
    document.getElementById(lx+hsh).remove()
    if(lx=="h"){hslb.splice(hsh,1,"")}
    if(lx=="d"){dlb.splice(hsh,1,"")}
    if(lx=="cl"){cllb.splice(hsh,1,"")}
    huizhi()
}
function hssf(ev){      //鼠标滚轮
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
    var d=sz_to_zfc(dlb)
    var cl=sz_to_zfc(cllb)
    document.getElementById("klkl").value=toCode(hs+"و³"+d+"و³"+cl)
}
function huif(){           //恢复函数
    var   f=document.getElementById("klkl").value
    var hanshulb=fromCode (f).split("و³")[0]
    
    if(hanshulb=="undefined"){
        var hanshulb=[]
    }else{
        var hanshulb=zfc_to_sz(hanshulb)
    }
    
    l(hanshulb)
    hslb=[]
    document.getElementById("hslbxs").innerHTML=""
    //console.log(hanshulb)
    
        for(var d=0;d<hanshulb.length;d++){    //恢复函数
            if(hanshulb[d]=="undefined"){
             hslb.push("")
            }else{
             var jxs=hanshulb[d].split("|")[0]
             var clorer=hanshulb[d].split("|")[1]
             var zuixiao=hanshulb[d].split("|")[2]
             var zuida=hanshulb[d].split("|")[3]
             //var y=document.getElementById("hslbxs").innerHTML
             cjxhs(jxs,clorer,zuixiao,zuida)
            }
         }
    

    var hanshulb=fromCode (f).split("و³")[1]
    if(hanshulb=="undefined"){
        var hanshulb=[]
    }else{
        var hanshulb=zfc_to_sz(hanshulb)
    }

    for(var d=0;d<hanshulb.length;d++){    //恢复点
        if(hanshulb[d]==""){
         dlb.push("")
        }else{
            xjdian(hanshulb[d].split("|")[0],hanshulb[d].split("|")[1])
        }
     }
    
     var hanshulb=fromCode (f).split("و³")[2]
     if(hanshulb=="undefined"){
        var hanshulb=[]
    }else{
        var hanshulb=zfc_to_sz(hanshulb)
    }

     for(var d=0;d<hanshulb.length;d++){    //恢复常量
         if(hanshulb[d]==""){
          cllb.push("")
         }else{
            xjcl(hanshulb[d].split("|")[0],hanshulb[d].split("|")[1])
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
    l(jxs,h,Number(dx),po,g)
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
    if(ms=="huayuan"){var x=document.getElementById("tgtgtgtgtg").value
    var y=document.getElementById("frfrfrfrfr").value
    var r=document.getElementById("paoifrvohi").value
    if(document.getElementById("ghwdvecd").checked==true){
        var jxs="sqrt(("+r+")^2_(x_"+x+")^2)+"+y
    }
    if(document.getElementById("geaduytfwev").checked==true){
        var jxs="0_sqrt(("+r+"^2_(x_"+x+")^2)+"+y
    }
    

//console.log(jxs)
cjxhs(jxs,"black","","")
huizhi
}
}
function gnqh(){
    var gn=10
    var gnqh=document.getElementById("gnxz").value
    document.getElementById(gnqh).style.display="block"
    for(var c=1;c<=gn;c++){
        if("gn"+c==gnqh){}else{
            document.getElementById("gn"+c).style.display="none"
        }
    }
}

window.onkeydown=function(event){                      //空格判断
    var code = event.keyCode;
    //console.log(code)
    if(code ==32){
        gssbyd=true
        //document.getElementById('gssbydqhan').value="跟随鼠标移动 ON"
    }
    if(code ==16){isshift==true}
    if(code ==18){isalt==true}
}
window.onkeyup=function(event){                      //空格判断
    var code = event.keyCode;
    //console.log(code)
    if(code ==32){
        gssbyd=false
        //document.getElementById('gssbydqhan').value="跟随鼠标移动 OFF"
    }
    if(code ==16){isshift==false}
    if(code ==18){isalt==false}
}




function qrcz(){if(confirm("确认执行操作？")==true){zxcz()}}

function zxcz(){
    var czbh=document.getElementById("zxczxz").value
    if(czbh=="1"){
        if(xzlb.length==2){
           if(xzlb[0].substring(0,1)=="h"){}else{alert("类型不匹配");return false}
           if(xzlb[1].substring(0,1)=="h"){}else{alert("类型不匹配");return false}
           var jdgs=azgetjd(Number(xzlb[0].substring(1,2)),Number(xzlb[1].substring(1,2)),6,2)
            var xjclb=[]
            for(var i=0;i<jdgs;i++){
                var hsh=xjcl("","getjd("+xzlb[0].substring(1,2)+","+xzlb[1].substring(1,2)+","+i+",0)")
                xjclb.push(hsh)
                var hsh=xjcl("","getjd("+xzlb[0].substring(1,2)+","+xzlb[1].substring(1,2)+","+i+",1)")
                xjclb.push(hsh)
            }
           for(var i=0;i<xjclb.length;i=i+2){
            xjdian("getcl("+xjclb[i]+",1)","getcl("+xjclb[i+1]+",1)")
           }
huizhi()
return true
           
        }else{alert("类型不匹配");return false}
    }
    if(czbh=="2"){
        var c=""
        for(var i=0;i<xzlb.length;i++){
            if(xzlb[i].substring(0,1)=="d"){
                c=c+xzlb[i].substring(1,2)+","
            }else{alert("类型不匹配");return false}
        }
        cjxhs("getjxs(x,"+c.substring(0,c.length-1)+")","black","","")
huizhi()
return true
    }
    if(czbh=="3"){
        var c=""
        if(xzlb.length==2){}else{alert("类型不匹配");return false}
        for(var i=0;i<xzlb.length;i++){
            if(xzlb[i].substring(0,1)=="d"){
                c=c+xzlb[i].substring(1,2)+","
            }else{alert("类型不匹配");return false}
        }
        if(azgetdzb(Number(xzlb[0].substring(1,2)),0)<azgetdzb(Number(xzlb[1].substring(1,2)),0)){
            var x="getdzb("+Number(xzlb[0].substring(1,2))+",0)"
            var s="getdzb("+Number(xzlb[0].substring(1,2))+",1)"
        }else{
            var s=azgetdzb(Number(xzlb[0].substring(1,2)),0)
            var x=azgetdzb(Number(xzlb[1].substring(1,2)),0)
        }
        cjxhs("getjxs(x,"+c.substring(0,c.length-1)+")","black",x,s)
huizhi()
return true
    }
    if(czbh=="4"){
        if(xzlb.length==2){}else{alert("类型不匹配");return false}
        if(xzlb[0].substring(0,1)=="d"){
            var d=Number(xzlb[0].substring(1,2))
            var c=Number(xzlb[1].substring(1,2))
            if(xzlb[1].substring(0,1)=="c"){}else{alert("类型不匹配");return false}
        }else if(xzlb[0].substring(0,1)=="c"){
            var c=Number(xzlb[0].substring(1,2))
            var d=Number(xzlb[1].substring(1,2))
            if(xzlb[1].substring(0,1)=="d"){}else{alert("类型不匹配");return false}
        }
        //console.log(d,c)
var x="getdzb("+d+",0)"
var y="getdzb("+d+",1)"
cjxhs("sqrt((getcl("+c+",1))^2_(x_"+x+")^2)+"+y,"black","","")
cjxhs("0_sqrt((getcl("+c+",1))^2_(x_"+x+")^2)+"+y,"black","","")
huizhi()
return true
    }
    if(czbh=="5"){
        for(var i=0;i<xzlb.length;i++){
            if(xzlb[i].substring(0,1)=="d"){
                var fh=confirm(xzlb[i]+"坐标："+azgetdzb(Number(xzlb[i].substring(1,2)),0)+","+azgetdzb(Number(xzlb[i].substring(1,2)),1)+"是否添加到常量？")
                if(fh==true){
                    xjcl("","getdzb("+xzlb[i].substring(1,2)+",0)")
                    xjcl("","getdzb("+xzlb[i].substring(1,2)+",1)")
                }
            }else{alert("类型不匹配");return false}
        }
        return true
    }
    if(czbh=="6"){
        if(xzlb.length==2){}else{alert("类型不匹配");return false}
        if(xzlb[0].substring(0,1)=="d"){}else{alert("类型不匹配");return false}
        if(xzlb[1].substring(0,1)=="d"){}else{alert("类型不匹配");return false}
                var fh=confirm(xzlb[0]+","+xzlb[1]+"距离："+azgetjl(Number(xzlb[0].substring(1,2)),Number(xzlb[1].substring(1,2)))+"是否添加到常量？")
                if(fh==true){
                    xjcl("","getjl("+xzlb[0].substring(1,2)+","+xzlb[1].substring(1,2)+")")
                }
        return true
    }
    if(czbh=="7"){
           for(var i=0;i<xzlb.length;i++){
            delhs(Number(xzlb[i].substring(1,2)),xzlb[i].substring(0,1))
           }
    }
}
function openjc(x){window.open(x)}
















"x^(2/3)+0.9*(3.3_x^2)^(1/2)*sin(getcl(0,1)*pi*x)"



































































function azgetcl(clh,xy){       //获取常量相关
    if(xy==1){return clzlb[clh]}else{
        return jiexiys(cllb[clh].split("|")[xy]) 
    }
}
function azgetdzb(dh,xy){      //获取点相关
    return jiexiys(dlb[dh].split("|")[xy])
}
function azgeths(hsh,xy){     //获取函数相关
    return jiexiys(hslb[hsh].split("|")[xy])
}
function azgetjd(hs1,hs2,djg,xy){       //寻找交点
    //alert("fucjuk")
    var syc=[]
    var sycx=[]
    var xzjd=[]
for(var q=-25;q<25;q=accAdd(q,0.5)){
    var c=Math. abs( jiexiys(hslb[hs1].split("|")[0],q)-jiexiys(hslb[hs2].split("|")[0],q))
    //console.log(c,q)
    if(c>1000||String(c)=="NaN"){}else{
        //console.log(c,q,"过啦")
        syc.push(c)
        sycx.push(q)
    }
}
var g=bubbleSort(syc,sycx)[1]
//console.log(g)
if(djg>5){var pu=g.length}else{var pu=5}
var gg=g
for(var t=0;t<pu;t++){
    var syc=[]
    var sycx=[]
    var g=gg
    for(var q=g[t]-0.25;q<g[t]+0.25;q=accAdd(q,0.005)){
        var c=Math. abs( jiexiys(hslb[hs1].split("|")[0],q)-jiexiys(hslb[hs2].split("|")[0],q))
        if(c>100||String(c)=="NaN"){}else{
        syc.push(c)
        sycx.push(q)}
    }
    var g=bubbleSort(syc,sycx)[1]

    if(Math. abs( jiexiys(hslb[hs1].split("|")[0],g[0])-jiexiys(hslb[hs2].split("|")[0],g[0]))<0.01){
        var ky=true
        for(var lm=0;lm<xzjd.length;lm++){
            if(Math.abs(g[0]-xzjd[lm])<0.1){
                var ky=false
            }
        }
        if(ky==true){
            xzjd.push(g[0])
        }
    }
}
//console.log (xzjd)
xzjd=relebubbleSort(xzjd)
//console.log (xzjd)
if(xy==0){
   return xzjd[djg]
}else if(xy==1){
    return jiexiys(hslb[hs1].split("|")[0],xzjd[djg])
 }else if(xy==2){
    return xzjd.length
 }


}
function azgetjzs(x,d0,d1,d2,d3,d4,d5,d6,d7,d8){                     //过几点的函数曲线
    var y=""
    
if(d0==undefined){}else{y=y+"("+jiexiys(dlb[d0].split("|")[0])+","+jiexiys(dlb[d0].split("|")[1])+");"}
if(d1==undefined){}else{y=y+"("+jiexiys(dlb[d1].split("|")[0])+","+jiexiys(dlb[d1].split("|")[1])+");"}
if(d2==undefined){}else{y=y+"("+jiexiys(dlb[d2].split("|")[0])+","+jiexiys(dlb[d2].split("|")[1])+");"}
if(d3==undefined){}else{y=y+"("+jiexiys(dlb[d3].split("|")[0])+","+jiexiys(dlb[d3].split("|")[1])+");"}
if(d4==undefined){}else{y=y+"("+jiexiys(dlb[d4].split("|")[0])+","+jiexiys(dlb[d4].split("|")[1])+");"}
if(d5==undefined){}else{y=y+"("+jiexiys(dlb[d5].split("|")[0])+","+jiexiys(dlb[d5].split("|")[1])+");"}
if(d6==undefined){}else{y=y+"("+jiexiys(dlb[d6].split("|")[0])+","+jiexiys(dlb[d6].split("|")[1])+");"}
if(d7==undefined){}else{y=y+"("+jiexiys(dlb[d7].split("|")[0])+","+jiexiys(dlb[d7].split("|")[1])+");"}
if(d8==undefined){}else{y=y+"("+jiexiys(dlb[d8].split("|")[0])+","+jiexiys(dlb[d8].split("|")[1])+");"}
y=y.substring(0,y.length-1)
 
    return(jiexiys(lglrcz(y),x))
}
function azgetjl(d1,d2){
    var xc=Math.abs(Number(dlb[d1].split("|")[0])-Number(dlb[d2].split("|")[0]))
    var yc=Math.abs(Number(dlb[d1].split("|")[1])-Number(dlb[d2].split("|")[1]))
    return Math.sqrt(accAdd(accMul(xc,xc),accMul(yc,yc)))
}
function azgetmous(xy,now){
    if(now==0){
        if(xy==0){return mouse_x}
        if(xy==1){return mouse_y}
    }else if(now==1){
        if(xy==0){return now_mouse_x}
        if(xy==1){return now_mouse_y}
    }
}
function bubbleSort(arr,raa) {
    var len = arr.length;
    for (var i = 0; i < len; i++) {
        for (var j = 0; j < len - 1 - i; j++) {
            if (arr[j] > arr[j+1]) {        //相邻元素两两对比
                var temp = arr[j+1];        //元素交换
                arr[j+1] = arr[j];
                arr[j] = temp;
                var pmet = raa[j+1];        //元素交换
                raa[j+1] = raa[j];
                raa[j] = pmet;
            }
        }
    }
    return [arr,raa];
}

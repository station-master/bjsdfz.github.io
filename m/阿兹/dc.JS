var xrjqd=100           //分成几份
var xsx=500     //坐标系显示位置 x
var xsy=500     //坐标系显示位置 y
var hxxianshi=20     //横向显示多少
var xianshikuandu=1000    //坐标系显示宽度
var xianshigaodu=800    //坐标系显示高度
var ydisX=500
var ydisY=500
var points = []
var hbck
var hslb=[]



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



function hzqx(jxs){
var pxtonum=hxxianshi/xianshikuandu
var numtopx=xianshikuandu/hxxianshi
points = []
var dyc=0
//console.log(-1*ydisX*pxtonum)
for(var jt=-1*ydisX*pxtonum;jt<=(xianshikuandu- ydisX)*pxtonum+(xianshikuandu/xrjqd)*pxtonum;jt=jt+(xianshikuandu/xrjqd)*pxtonum){
    //console.log("az",jt)
    var hf=jiexiys(jxs,jt)
var hf1=xianshigaodu- (hf*numtopx+xianshigaodu-ydisY)

    //console.log((hf*numtopx+xianshigaodu-ydisY))
    if( dyc==0){
        var dyc=1
        //console.log(1)
        points.push({ x: jt*numtopx, y: hf1 });
    }

  var xxx=jt*numtopx
  var xxx=xxx+ydisX
  var  yyy=hf1
  //console.log(xxx,yyy)
  if( dyc==0){
    var dyc=1
    //console.log(1)
    points.push({ x: xxx, y: yyy });
}
    draw(xxx,yyy)



}
}

function bianhau(){



    document.getElementById("zbx").style.width=xianshikuandu
    document.getElementById("zbx").style.height=xianshigaodu
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
    if( hslb[jr].split("|")[1]==undefined){
        hbck.strokeStyle="black"
    }else{
        hbck.strokeStyle=hslb[jr].split("|")[1]
    }
    hzqx(hslb[jr].split("|")[0])  
}
}
window.onmousemove=function(h){fsdcds(h)}
function fsdcds(h){
    //console.log("az")
    var sbzbxx=(h.clientX-20)-ydisX
    var sbzbxy=ydisY-(h.clientY-100)
    var pxtonum=accDiv(hxxianshi, xianshikuandu)
    var sbzbxx=accMul(sbzbxx,pxtonum).toFixed(3)
    var sbzbxy=accMul(sbzbxy,pxtonum).toFixed(3)
    document.getElementById("gbftr").value=sbzbxx
    document.getElementById("oi9l").value=sbzbxy
}
function cjxhs(){
    var jxs=document.getElementById("grdgr").value
    var clorer=document.getElementById("wadwd").value
    if(clorer==""){
        clorer="black"
    }
    hslb.push(jxs+"|"+clorer)
    huizhi()
}

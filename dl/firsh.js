var color="#65b552";var rjyz=1;var yiys=0;var fu;var is18="no";var ztjs=0;

window.onload=function(){
    document.getElementById("efde").style.backgroundColor=color
    document.getElementById("dfcdfc").style.color=color
    document.getElementById("dfdfcv").style.color=color
    document.getElementById("sfcsrdf").style.color=color
    document.getElementById("huakuai").style.backgroundColor=color
    document.getElementById("tiswz").style.color=color
    document.getElementById("feds").style.color=color
    document.getElementById("cddct").style.color=color
    document.getElementById("rst-1").style.backgroundColor=color
    document.getElementById("rst-2").style.backgroundColor=color
    document.getElementById("rst-3").style.color=color


    document.getElementById("bz-2").style.display="none"
    document.getElementById("bz-3").style.display="none"
    document.getElementById("bz-4").style.display="none"
    document.getElementById("bz-5").style.display="none"

    rjyzqh()
}

function yxys(a,b){setTimeout(a,b)}    //延时打开函数

function xyb(){                //下一步
    document.getElementById("bz-1").style.display="none"
    document.getElementById("bz-2").style.display="block"
}
function xyb2(){           //下一步
    document.getElementById("bz-2").style.display="none"
    document.getElementById("bz-3").style.display="block"
}
function dcs(f){                //下一步
    document.getElementById("bz-3").style.display="none"
    document.getElementById("bz-4").style.display="block"
    if(f==1){
        document.getElementById("cddct").innerHTML="你真的满18岁吗？"
        is18="yes"
    }    if(f==0){
        document.getElementById("cddct").innerHTML="你确定吗？"
        is18="no"
    }
}
function fed(){
    document.getElementById("bz-4").style.display="none"
    document.getElementById("bz-3").style.display="block"
}



function rjyzqh(){      //人机验证切换
    var dhuhuie=Math.floor(Math.random() * rjyz)
    document.getElementById("bz2bjt").style.backgroundImage="url(rjyz/"+String(dhuhuie+1)+".jpg)"
    document.getElementById("zhanstp").style.backgroundImage="url(rjyz/"+String(dhuhuie+1)+"-rc.png)"
}

function musd(){               //滑块移动
    var disX
    var cs=1
    yiys=0
    var gh=setInterval(function(){yiys=yiys+10},10);
    window.onmousemove=function(h){
        if(cs==1){
            cs=0
            disX=(document.getElementById("huakuai").style.left).split("px")[0]
            disX=h.clientX-((document.body.clientWidth-350)/2)-disX
        }else{
            var x = h.clientX-((document.body.clientWidth-350)/2)-disX
            //console.log(h.clientX-((document.body.clientWidth-350)/2))
            if(x<15){var x=15};if(x>275){var x=275}
            document.getElementById("huakuai").style.left=x+"px"
            document.getElementById("zhanstp").style.left=x+"px"
        }
    }
    window.onmouseup = function() {
    window.onmousemove = null;
    clearInterval(gh)
    bsh()
 }
 window.ontouchmove=function(h){        //触碰
    var touch = h.touches[0];
    if(cs==1){
        cs=0
        disX=(document.getElementById("huakuai").style.left).split("px")[0]
        disX=touch.clientX-((document.body.clientWidth-350)/2)-disX
    }else{
        var x = touch.clientX-((document.body.clientWidth-350)/2)-disX
        //console.log(h.clientX-((document.body.clientWidth-350)/2))
        if(x<15){var x=15};if(x>275){var x=275}
        document.getElementById("huakuai").style.left=x+"px"
        document.getElementById("zhanstp").style.left=x+"px"
    }
}
window.ontouchend = function() {
window.ontouchmove = null;
clearInterval(gh)
bsh()
}
    return false;  
}
function bsh(){             //移动结束
    if(Math.floor(Math.random() * 4)==Math.floor(Math.random() * 4)){
        document.getElementById("tiswz").innerHTML=("只用了"+String(yiys/500)+"秒,超过"+String((Math.floor(Math.random() * 300)/100)+97)+"%的用户！")
        yxys("xyb2()",1200)
    }else{
        document.getElementById("tiswz").innerHTML="错误！请正确拼合图像！"
        setTimeout(function(){document.getElementById("tiswz").innerHTML="请拼合图像，以证明你不是机器。";fu=setInterval("cxyz()",5)},800)
    }

}
function cxyz() {       //滑块复位
    var c = (document.getElementById("huakuai").style.left).split("px")[0]
 if (c > 15) {
var gy=String(c - c / 8)+"px"
document.getElementById("huakuai").style.left=gy
document.getElementById("zhanstp").style.left=gy
 }else{
    clearInterval(fu)
 }
} 
function im18(){
    if(is18=="yes"){
        document.getElementById("bz-4").style.display="none"
        document.getElementById("bz-5").style.display="block"
        setInterval("jishizt()",1000)
    }else{
        document.getElementById("bz-4").style.display="none"
        document.getElementById("bz-5").style.display="block"
        document.getElementById("rst-3").innerHTML="Sorry, can't to do it."
    }
}
function jishizt(){
    var h=5  //5秒后转跳
    ztjs++
    if((h-ztjs)<1){
        location.href="https://www.bilibili.com/video/BV1GJ411x7h7"
    }else{
        document.getElementById("rst-3").innerHTML="你将在"+String(h-ztjs)+"秒后转跳..."
    }
}
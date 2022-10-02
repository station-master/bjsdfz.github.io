
function bilibili(){
    add('https://www.bilibili.com/',1,1,"img/bilibili.png","bilibili")
}
function minecraft(){
    add('https://classic.minecraft.net/',1,1,"img/grass.png","minecraft")
}
function AzVideoplayer(){
    add('AzVideoplayer.html',1,0,"img/movies.png","Az Videoplayer",0,0,"400px","400px")
}
function vscode(){
    add('https://vscode.dev/',1,1,"img/vscode.png","vscode",0,0,0,0)
}
function WeChat(){
    add('https://wx.qq.com/',1,1,"img/WeChat.svg","微信网页版",0,0,0,0)
}
function zdyck(){
    var sjxr= document.getElementById("lj").value
    var dian=sjxr.indexOf(".")
    var dd=sjxr.substring(0,7)
    var ddd=sjxr.substring(0,2)
    var sjxr2=sjxr
    var png="img/exe.png"
    if (ddd=="BV"){
        var sjxr= "https://player.bilibili.com/player.html?bvid="+sjxr+"&page=1"
        var png="img/bilibili.png"
    }else if (dd=="https:/") {
     
    }
    else if (dd=="http://") {
  
    } else if (dian==-1) {

        var sjxr= "https://bing.com/search?q=" + sjxr
    } else {
 
        var sjxr= "http://" + sjxr
    }
    add(sjxr,1,1,png,sjxr2)
}
function sycx(){
    alert("该功能完善中……")
    //document.getElementById("xzlb").style.display="none"

}
function bilibili(){
    add('https://www.bilibili.com/',1,1,"img/bilibili.png","bilibili")
}
function minecraft(){
    add('https://classic.minecraft.net/',1,1,"img/grass.png","minecraft")
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
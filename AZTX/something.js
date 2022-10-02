var dzdx=16
var xsx=0
var df=""
var my_name=""
var my_color="black"
var ybcdyhlb=[]
var usetxyslb=[]
var dqyh=""


function udjhdsbns(){
    if(localStorage.getItem("yhys")==undefined||localStorage.getItem("yhys")==null){}else{
        usetxyslb=zfc_to_sz(localStorage.getItem("yhys"),"ن")
    }
    if(localStorage.getItem("alluser")==undefined||localStorage.getItem("alluser")==null){}else{
    ybcdyhlb=zfc_to_sz(localStorage.getItem("alluser"),"ن")
    }
    for(var i=0;i<ybcdyhlb.length;i++){
        send(toCode("guc|"+ybcdyhlb[i]+"|2"))
        addhuihua(ybcdyhlb[i],usetxyslb[i])
    }
}
function dljc(){    //登录检查
 if(my_name==""){
    var username=prompt("请输入用户名")
    var userkey=prompt("请输入密码")
    send(toCode("dl|"+username+"|"+userkey))
    my_name=username
 }
}
function zjs(t){
   var xx= fromCode(t)
   if(xx=="dc"){ //登录 登录成功
    alert("登录成功")
   }else if(xx=="b"){//登录 登录不成功
    alert("登录不成功")
    my_name=""
   }else if(xx.split("|")[0]=="cl"){//用户颜色
    my_color=xx.split("|")[1]
   }else if(xx.split("|")[0]=="jsxx"){//接受信息
    alert(xx.split("|")[1]+"向你发送了:"+xx.split("|")[2])

    var y=localStorage.getItem("sh-"+xx.split("|")[1]) //添加聊天记录
    if(y==undefined){var y=""}
    var y=y+"y|"+xx.split("|")[1]+"|"+usetxyslb[getusezlbzdwz(xx.split("|")[1])]+"|"+xx.split("|")[2]+"ن"
    localStorage.setItem("sh-"+xx.split("|")[1],y)

    if(isInArray(ybcdyhlb,xx.split("|")[1])==false){ //之前没有这个人
        ybcdyhlb.push(xx.split("|")[1])
        localStorage.setItem("alluser",        sz_to_zfc(ybcdyhlb,"ن"))
        send(toCode("guc|",xx.split("|")[1]+"|2"))   //获取头像
        addhuihua(xx.split("|")[1],usetxyslb[getusezlbzdwz(xx.split("|")[1])])
    }

    if(df==xx.split("|")[1]){
        addltjl("y",xx.split("|")[1],usetxyslb[getusezlbzdwz(xx.split("|")[1])],xx.split("|")[2])
    }

   }
   else if(xx.split("|")[0]=="qtys"){//其他用户颜色
    if(xx.split("|")[2]=="2"){
        if(isInArray(ybcdyhlb,xx.split("|")[1])==true){
            usetxyslb.splice(getusezlbzdwz(xx.split("|")[1]),1,xx.split("|")[3]) 
               localStorage.setItem("yhys",sz_to_zfc(usetxyslb,"ن")) 
        }
     }
   }
}


{
    ybcdyhlb.push(xx.split("|")[1])
    localStorage.setItem("alluser",        sz_to_zfc(ybcdyhlb,"ن"))

    send(toCode("guc|",xx.split("|")[1]+"|2"))

    var y=localStorage.getItem("sh-"+xx.split("|")[1])
    if(y==undefined){var y=""}
    var y=y+"y|"+xx.split("|")[1]+"|"+usetxyslb[getusezlbzdwz(xx.split("|")[1])]+"|"+xx.split("|")[2]+"ن"
    localStorage.setItem("sh-"+xx.split("|")[1],y)

}



function getusezlbzdwz(username){
    var found=-1
    for(var h=0;h<ybcdyhlb.length;h++){
        if(ybcdyhlb[h]==username){
            var found=h
        }
     }
     return found
}


function addhuihua(dfm,dftx){
    var add="<div id='ltdkzxs-0' class='ltdkzxs' onclick=jrduihua('"+dfm+"')><div class='ystx' style='background-color: "+dftx+";'></div><div class='ysname' style='height: 60px;'><div class='relaysname'>"+dfm+"</div><div id='scs-"+dfm+"' class='ysdfsdh'></div></div><div id='scsj-"+dfm+"' class='ysscdhdtime'></div></div>"
var y=document.getElementById("cfltdh").innerHTML
document.getElementById("cfltdh").innerHTML=y+add
}
function addltjl(fsf,fsfname,fsftx,neir){   //添加一条聊天信息
    /*发送方，发送方名字，发送方头像，发送的内容*/
    xsx++
    var danhxs=parseInt((document.body.clientWidth-160)/dzdx)-1
    var hangshu=parseInt(neir.length/danhxs)+1
if(danhxs>neir.length){var danhxs=neir.length}
if(fsf=="y"){ //对方发的消息
    var xszywz="left"
    var yjxz=" 0px 20px 20px 20px"
}else if(fsf=="i"){ //自己发的消息
    var xszywz="right"
    var yjxz=" 20px 0px 20px 20px"
}
var add="<div id='xx-0' class='ededffer' style='height: "+String(hangshu*dzdx+60)+"px;'><div class='usertx' style='"+xszywz+": 30px;background-color: "+fsftx+";' title='"+fsfname+"'></div><div class='usershuodehua' style='"+xszywz+": 100px;height: "+String(hangshu*dzdx)+"px;border-radius:"+yjxz+";font-size: "+dzdx+"px;line-height: "+String(dzdx+4)+"px; width: "+String(danhxs*dzdx)+"px;'>"+neir+"</div></div>"
var y=document.getElementById("xsltrevddiv").innerHTML
document.getElementById("xsltrevddiv").innerHTML=y+add

}


window.onload=function(){
    czym()
    lt_to_fwq()
}




function czym(){
    document.getElementById("shurukuang").style.fontSize=dzdx
}
function sendqianzhi(){
    if(df==""){return}
    var nr=document.getElementById("shurukuang").value
console.log("send|"+df+"|"+nr)
    var sendml=toCode("send|"+df+"|"+nr)
    send(sendml)
    addltjl("i",my_name,my_color,nr)
    var y=localStorage.getItem("sh-"+df) //添加聊天记录
    if(y==undefined){var y=""}
    var y=y+"i|"+my_name+"|"+my_color+"|"+nr+"ن"
    localStorage.setItem("sh-"+df,y)
console.log(df)
    if(isInArray(ybcdyhlb,df)==false){ //之前没有这个人
        ybcdyhlb.push(df)
        localStorage.setItem("alluser",        sz_to_zfc(ybcdyhlb,"ن"))
        send(toCode("guc|",df+"|2"))   //获取头像
        addhuihua(df,usetxyslb[getusezlbzdwz(df)])
    }
}










function jrduihua(user){  //切换到指定的聊天
    if(user==""){     df="";  document.getElementById("cfltdh").style.display="block";document.getElementById("liaotianjiemianneibu").style.display="none";return}
    document.getElementById("cfltdh").style.display="none"
    document.getElementById("liaotianjiemianneibu").style.display="block"
    document.getElementById("xsltrevddiv").innerHTML=""
    document.getElementById("shurukuang").value=""
    var ltszlb=zfc_to_sz(localStorage.getItem("sh-"+user),"ن")
    for(var g=0;g<ltszlb.length-1;g++){
        addltjl(ltszlb[g].split("|")[0],ltszlb[g].split("|")[1],ltszlb[g].split("|")[2],ltszlb[g].split("|")[3])
    }
    df=user
}
























    function zfc_to_sz(lb,fgf){             //字符串转数组
      var lssz=[];
      ////console.log(lb)
      if(lb.indexOf(fgf)>-1){
          for(var tgh=0;tgh<lb.split(fgf).length;tgh++) {
              lssz.push(lb.split(fgf)[tgh])
          }
      }else{
          lssz.push(lb)
  
  }
      return lssz
  }
  
  
  function sz_to_zfc(sz,fgf){            //数组转字符串
      var lssz="";
      for(var tgh=0;tgh<sz.length-1;tgh++) {
         var lssz=lssz+sz[tgh]+fgf
      }
      var lssz=lssz+sz[sz.length-1]
  return lssz
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

function lt_to_fwq(){

}

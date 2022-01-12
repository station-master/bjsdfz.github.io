var kscd=0



function dsfgcwc(){
var src=document.getElementById("fffffbqnr").value;
var bt=document.getElementById("fffffbqbt").value;
var btmd=document.getElementById("fffffbqbtmd").value;
var ys=document.getElementById("fffffbqys").value;
var wzx=document.getElementById("fffffbqwzx").value;
var wzy=document.getElementById("fffffbqwzy").value;
var gd=document.getElementById("fffffbqgd").value;
var kd=document.getElementById("fffffbqkd").value;
var bymh=document.getElementById("fffffbqbymh").value;
var nrys=document.getElementById("fffdssbqys").value;


var sjxr=src

var     ddd=sjxr.substring(0,1)
if (src==""){
var   sjxr="bianqian.html?"+nrys+"$$$"
}else{

if(ddd=="+"){

var sjxr=     src.substring(1,src.length) 

}else{

    var   sjxr="bianqian.html?"+nrys+"$$$"+String(src)

}
}






add(sjxr,gd,kd,wzx,wzy,ys,btmd,bymh,bt)
document.getElementById("xjckym").style.display="none"
kscd=0

}






function xslb(){
    if (kscd==0){
        document.getElementById("xjckym").style.display="block"
        kscd=1
    }else{
        document.getElementById("xjckym").style.display="none"
        kscd=0
    }

}
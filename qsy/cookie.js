//var jijxr=0;
//var ckjilu=[];
var cssj=""
var zhutijilu="";
function jiluck(src,gd,kd,wzx,wzy,bjys,bjbtmd,ckbmh,ckbt,xrsx){                           //添加窗口记录
if(isInArray(ckjilu,"ck"+xrsx)==true){
    if("ck"+xrsx==ckjilu[ckjilu.length]){
        jijxr--
    }
    arrremove(ckjilu,"ck"+xrsx)
    localStorage.setItem("yxsck",sz_to_zfc(ckjilu))
}else{
    jijxr++
    localStorage.setItem("hyckzs",jijxr)
}




    var yjild=src+"*||*"+gd+"*||*"+kd+"*||*"+wzx+"*||*"+wzy+"*||*"+bjys+"*||*"+bjbtmd+"*||*"+ckbmh+"*||*"+ckbt
    localStorage.setItem("ckxg-"+xrsx,yjild)
}
function jilucksc(idm){                        //删除窗口记录
    console.log(idm)
    localStorage.removeItem("ckxg-"+ idm.split("ck")[1] )
    console.log( ckjilu)
     ckjilu.push(String(idm))
     localStorage.setItem("yxsck",sz_to_zfc(ckjilu))
}






function jiazaick(){                            //恢复窗口
    console.log("Az")
    if(localStorage.getItem("hyckzs")==null){
        jijxr=0;
        ckjilu=["az","az"];
        localStorage.setItem("yxsck",sz_to_zfc(ckjilu));
        localStorage.setItem("hyckzs", jijxr);
        localStorage.setItem("ckgdhf","")
    }else{
        jijxr=localStorage.getItem("hyckzs");
        ckjilu=localStorage.getItem("yxsck");
        ckjilu=zfc_to_sz(ckjilu)

        console.log(ckjilu)
        console.log(jijxr)
        for(jkl=1;jkl<jijxr+1;jkl++){


            if(isInArray(ckjilu,"ck"+jkl)==true){}else{
            var cssj=localStorage.getItem("ckxg-"+jkl)
            //console.log(cssj)

            if(cssj){
                add(cssj.split("*||*")[0],cssj.split("*||*")[1],cssj.split("*||*")[2],cssj.split("*||*")[3],cssj.split("*||*")[4],cssj.split("*||*")[5],cssj.split("*||*")[6],cssj.split("*||*")[7],cssj.split("*||*")[8],cssj.split("*||*")[9],"hf",jkl)
                //jijxr--
                    }
            
            
            
            }
            }
          /*  console.log(localStorage.getItem("ckgdhf"))
            if(localStorage.getItem("ckgdhf")==""){}else{
                hfgdzt()
            }*/
    }
}



function ckdxwzhy(idm,ckx,cky,ckw,ckh,ckgd){                             //更改窗口记录参数
var zksz=[];
var yuanlaide=localStorage.getItem("ckxg-"+idm.split("ck")[1])
console.log(yuanlaide)
for(var tgh=0;tgh<yuanlaide.split("*||*").length;tgh++) {
    zksz.push(yuanlaide.split("*||*")[tgh])
}







if(ckx==undefined){}else{
    zksz.splice(3, 1, ckx)
}
if(cky==undefined){}else{
    zksz.splice(4, 1, cky)
}
if(ckw==undefined){}else{
    zksz.splice(2, 1, ckw)
}
if(ckh==undefined){}else{
    zksz.splice(1, 1, ckh)
}
if(ckgd==undefined){}else{
    zksz.splice(9, 1, ckgd)
}
console.log(zksz)

var yuanlaide=""
for(var guj=0;guj<zksz.length-1;guj++){
    yuanlaide=yuanlaide+zksz[guj]+"*||*"
}
yuanlaide=yuanlaide+zksz[zksz.length-1]
localStorage.setItem("ckxg-"+idm.split("ck")[1],yuanlaide)

}





function ckgdjl(gdsz){                     //窗口固定记录
    var hef=gdsz.splice(0,4);
    if(hef[0]==undefined){}else{
        console.log(hef)
        localStorage.setItem("ckgdhf",sz_to_zfc(hef))
    }
}
function hfgdzt(){                   //恢复固定状态
var ckcssz=zfc_to_sz(localStorage.getItem("ckgdhf"));
if(ckcssz[0]==undefined){}else{
for(var fhu=0;fhu<ckcssz.length;fhu++){
    azgd(ckcssz[fhu]);
}
}
}




function zfc_to_sz(lb){             //字符串转数组
    var lssz=[];
    //console.log(lb)
    if(lb.indexOf("*||*")>-1){
        for(var tgh=0;tgh<lb.split("*||*").length;tgh++) {
            lssz.push(lb.split("*||*")[tgh])
        }
    }else{
        lssz.push(lb)

}
    return lssz
}


function sz_to_zfc(sz){            //数组转字符串
    var lssz="";
    for(var tgh=0;tgh<sz.length-1;tgh++) {
       var lssz=lssz+sz[tgh]+"*||*"
    }
    var lssz=lssz+sz[sz.length-1]
return lssz
}




































/*
保存数据：localStorage.setItem(key,value);
读取数据：localStorage.getItem(key);
删除单个数据：localStorage.removeItem(key);
删除所有数据：localStorage.clear();
得到某个索引的key：localStorage.key(index); 
*/
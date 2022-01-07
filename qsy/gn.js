var cks=0;
var dbc = [];
var ygd=["az","az","az","az"];

function ckxs(idm,w,h){          //调整窗口大小+位置

    var wd=w
    var hd=h
    var idd=idm
    cknr=""

document.getElementById(idd).style.width=wd
document.getElementById(idd).style.height=hd
document.getElementById("nr-"+idd).style.height=hd.toString().split("px")[0]-20+"px"
document.getElementById(idm).style.top=    (document.body.clientHeight-500)/2
document.getElementById(idm).style.left=    (document.body.clientWidth-700)/2


}
function ckxsfz(idm,w,h){                           //调整窗口大小

    var wd=w
    var hd=h
    var idd=idm
    cknr=""
    
    document.getElementById(idd).style.width=wd
    document.getElementById(idd).style.height=hd
    document.getElementById("nr-"+idd).style.height=hd.toString().split("px")[0]-20+"px"
    }
    function ckgd(idm){                                  //调整窗口高度（互相遮盖）
         
         
         var zdgd=document.getElementById(idm).style.zIndex;
     
         if (zdgd == ""){
             
         }else
         {
       
             //alert(cks)
                 for (var i = 1; i < cks+1; i++) {
                   
     var ckmc="ck" + i
     //alert(isInArray(dbc,ckmc))
     if (isInArray(dbc,ckmc)==true) {
     }else{
     var xindex=document.getElementById(ckmc).style.zIndex
     //alert("az")
     if (xindex>=zdgd) {
         if(ckmc==idm){}else{
             document.getElementById(ckmc).style.zIndex=xindex-1;
         }
     }
                 }
      }
     }
     
         document.getElementById(idm).style.zIndex=cks;
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



    function ckyd(idm2){                                                  //窗口移动（鼠标拖拽）
        if(isInArray(ygd,idm2)==true){console.log("az")
        return}else{
    

        var idd='tzk-ck'+String(idm2.split("ck")[1]) 
    
        
        var oBox2 = document.getElementById(idd);
        var oBox1919810 = document.getElementById(idm2);
            oBox2.onmousedown = function(ert) {
                ckgd(idm2)
            var disX=ert.clientX-oBox1919810.offsetLeft;
            var disY=ert.clientY-oBox1919810.offsetTop;   
            document.onmousemove = function(ev114514) {
            var l = ev114514.clientX-disX;
            var t = ev114514.clientY-disY;
            //console.log(l);
            if(isInArray(ygd,idm2)==true){//console.log("az")
            return}else{
            oBox1919810.style.left = l + "px";
            oBox1919810.style.top = t + "px";}
            };
                            document.onmouseup = function() {
                            document.onmousemove = null;
                        };
                        
                            return false;  
                        };
        
        }}
        function ckydcp(idm2){                                                  //窗口移动（触屏）
            //alert("cp")
            if(isInArray(ygd,idm2)==true){console.log("az")
            return}else{
        
    
            var idd='tzk-ck'+String(idm2.split("ck")[1]) 
        
            
            var oBox2 = document.getElementById(idd);
            var oBox1919810 = document.getElementById(idm2);
                oBox2.touchStart = function(ert) {
                    var touch = ert.touches[0];
                    ckgd(idm2)
                var disX=touch.pageX-oBox1919810.offsetLeft;
                var disY=touch.pagey-oBox1919810.offsetTop;   
                document.touchMove = function(ev114514) {
                var l = ev114514.clientX-disX;
                var t = ev114514.clientY-disY;
                //console.log(l);
                if(isInArray(ygd,idm2)==true){//console.log("az")
                return}else{
                oBox1919810.style.left = l + "px";
                oBox1919810.style.top = t + "px";}
                };
                                document.touchEnd = function() {
                                document.touchMove = null;
                            };
                            
                                return false;  
                            };
            
            }}
        function ckdx(idm){                                             //窗口大小（鼠标拖拽）
            if(isInArray(ygd,idm)==true){

                return}else{


            
            var dxidm='dxk-ck'+String(idm.split("ck")[1]) 
            //console.log(dxidm)
            var oBox = document.getElementById(dxidm);
            var oBox114514 = document.getElementById(idm);
        oBox.onmousedown = function() {
            ckgd(idm)

          disX2=oBox114514.style.left.split("px")[0];
          disY2=oBox114514.style.top.split("px")[0];   
        
            document.onmousemove = function(ev) {
            var l2 = ev.clientX-disX2;
            var t2 = ev.clientY-disY2;
            //console.log(l);
        //alert(l+"az"+t)


        if(isInArray(ygd,idm)==true){console.log("az")
        return}else{
        ckxsfz(idm,l2+"px",t2+"px")}
        
            };
                            document.onmouseup = function() {
                            document.onmousemove = null;
                        };
                        
                            return false;  
                        };
                        //ckgd("ck" + xrcks)
                    }
        }
        function ckdxcp(idm){                                             //窗口大小（触屏）
            if(isInArray(ygd,idm)==true){

                return}else{


            
            var dxidm='dxk-ck'+String(idm.split("ck")[1]) 
            //console.log(dxidm)
            var oBox = document.getElementById(dxidm);
            var oBox114514 = document.getElementById(idm);
        oBox.onmousedown = function() {
            ckgd(idm)

          disX2=oBox114514.style.left.split("px")[0];
          disY2=oBox114514.style.top.split("px")[0];   
        
            document.onmousemove = function(ev) {
            var l2 = ev.clientX-disX2;
            var t2 = ev.clientY-disY2;
            //console.log(l);
        //alert(l+"az"+t)


        if(isInArray(ygd,idm)==true){console.log("az")
        return}else{
        ckxsfz(idm,l2+"px",t2+"px")}
        
            };
                            document.onmouseup = function() {
                            document.onmousemove = null;
                        };
                        
                            return false;  
                        };
                        //ckgd("ck" + xrcks)
                    }
        }


        function add(src,gd,kd,wzx,wzy,bjys,bjbtmd,ckbmh,ckbt){                              //新建窗口？                  add(调用内容,窗口高度,窗口宽度,窗口位置left,窗口位置top,窗口颜色,窗口透明度,窗口标题)
            if (dbc.length>0){
                var xrcks =dbc[0].split("ck")[1]
                dbc.splice(0, 1)
            }else{
                cks=cks+1
                var xrcks=cks
            }

            var sourceNode = document.getElementById("ck0");
            var clonedNode = sourceNode.cloneNode(true);
            clonedNode.setAttribute("id", "ck"+xrcks);
            sourceNode.parentNode.appendChild(clonedNode);

            var ynr=""
            document.getElementById("ck"+xrcks).innerHTML=ynr+"    <div class='tzk'   onmousemove=ckyd('ck"+xrcks+"') ontouchstart=ckydcp('ck"+xrcks+"') onmousedown=ckgd('ck"+xrcks+"') id='tzk-ck"+xrcks+"'></div><div class='ckbt'>"+ckbt+"</div>"
            var ynr=document.getElementById("ck"+xrcks).innerHTML
            document.getElementById("ck"+xrcks).innerHTML=ynr+"    <div class='ckclose' onclick=azclose('ck"+xrcks+"')></div><div class='ckgd' onclick=azgd('ck"+xrcks+"') style='background-image: url(img/bqck/gd.png);' id='gd-ck"+xrcks+"'></div>"
            var ynr=document.getElementById("ck"+xrcks).innerHTML
            document.getElementById("ck"+xrcks).innerHTML=ynr+"<div class='beijin' style='background: "+bjys+";opacity: "+bjbtmd+";filter: blur("+ckbmh+");'></div>"
            var ynr=document.getElementById("ck"+xrcks).innerHTML
            document.getElementById("ck"+xrcks).innerHTML=ynr+"<div id='nr-ck"+xrcks+"' style='width: 100%;height:0%;' class='xsbq'></div><div class='dxtjd' onmousemove=ckdx('ck"+xrcks+"')  id='dxk-ck"+xrcks+"'></div>"
            document.getElementById("nr-ck"+xrcks).innerHTML="<iframe src='"+src+"' border='0' frameborder='no' framespacing='0' allowfullscreen='true' width='100%' height='100%' class='yjiao'></iframe>"

            ckxs("ck"+xrcks,kd,gd)
            document.getElementById("ck" + xrcks).style.top=wzy
            document.getElementById("ck" + xrcks).style.left=wzx

            document.getElementById("ck" + xrcks).style.display= "block"
            ckgd("ck" + xrcks)


        
        }


        function azclose(idm){                                                    //窗口关闭
            dbc.push(idm)
            if(isInArray(ygd,idm)==true){
                arrremove(ygd,idm)
            }
            document.getElementById(idm).remove()
            
        }

        function azgd(idm){
          
        if(isInArray(ygd,idm)==true){                            //窗口固定切换
            arrremove(ygd,idm)
            document.getElementById('gd-ck'+String(idm.split("ck")[1]) ).style.backgroundImage="url(img/bqck/gd.png)"



        }else{
            ygd.push(idm)
            document.getElementById('gd-ck'+String(idm.split("ck")[1]) ).style.backgroundImage="url(img/bqck/gd-r.png)"
        }
     
        }


/*触屏事件

touchStart 触屏按下
















*/






























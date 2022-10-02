var cks=0
var dbc = [];
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
        // alert(cks)
         
         var zdgd=document.getElementById(idm).style.zIndex;
     
         if (zdgd == ""){
             
         }else
         {
             var i=1
             //alert(cks)
                 for (var i = 1; i <= cks; i++) {
                   
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



    function ckyd(idm){                                                  //窗口移动（鼠标拖拽）
    

        var idd=idm
        
        
        var oBox = document.getElementById(idd);
            oBox.onmousedown = function(ev) {
            var disX=ev.clientX-oBox.offsetLeft;
            var disY=ev.clientY-oBox.offsetTop;   
            document.onmousemove = function(ev) {
            var l = ev.clientX-disX;
            var t = ev.clientY-disY;
            //console.log(l);
            oBox.style.left = l + "px";
            oBox.style.top = t + "px";
            };
                            document.onmouseup = function() {
                            document.onmousemove = null;
                        };
                        
                            return false;  
                        };
        
        }
        function ckdx(idm){                                             //窗口大小（鼠标拖拽）
            //alert("az")
            
            dxidm=idm
            oBox = document.getElementById(dxidm);
        oBox.onmousedown = function(ev) {
          disX2=oBox.style.left.split("px")[0];
          disY2=oBox.style.top.split("px")[0];   
        
            document.onmousemove = function(ev) {
            var l = ev.clientX-disX2;
            var t = ev.clientY-disY2;
            //console.log(l);
        //alert(l+"az"+t)
        ckxsfz(idm,l+"px",t+"px")
        
            };
                            document.onmouseup = function() {
                            document.onmousemove = null;
                        };
                        
                            return false;  
                        };
                        //ckgd("ck" + xrcks)
        
        }



        function add(src,gd,kd,wzx,wzy,bjys,bjbtmd,ckbt){                              //新建窗口？                  add(调用内容,窗口高度,窗口宽度,窗口位置left,窗口位置top,窗口颜色,窗口透明度,窗口标题)
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
            document.getElementById("ck"+xrcks).innerHTML=ynr+"    <div class='tzk'   onmousemove=ckyd('ck"+xrcks+"') onmousedown=ckgd('ck"+xrcks+"')></div><div class='ckbt'>"+ckbt+"</div>"
            var ynr=document.getElementById("ck"+xrcks).innerHTML
            document.getElementById("ck"+xrcks).innerHTML=ynr+"    <div class='ckclose' onclick=azclose('ck"+xrcks+"')></div><div class='ckgd' onclick=azgd('ck"+xrcks+"') style='background-image: url(img/bqck/gd.png);' id='gd-ck"+xrcks+"'></div>"
            var ynr=document.getElementById("ck"+xrcks).innerHTML
            document.getElementById("ck"+xrcks).innerHTML=ynr+"<div class='beijin' style='background: "+bjys+";opacity: "+bjbtmd+";'></div>"
            var ynr=document.getElementById("ck"+xrcks).innerHTML
            document.getElementById("ck"+xrcks).innerHTML=ynr+"<div id='nr-ck"+xrcks+"' style='width: 100%;height:0%;' class='xsbq'></div><div class='dxtjd' onmousemove=ckdx('ck"+xrcks+"')></div>"
            document.getElementById("nr-ck"+xrcks).innerHTML="<iframe src='"+src+"' border='0' frameborder='no' framespacing='0' allowfullscreen='true' width='100%' height='100%' class='yjiao'></iframe>"

            ckxs("ck"+xrcks,kd,gd)
            document.getElementById("ck" + xrcks).style.top=wzy
            document.getElementById("ck" + xrcks).style.left=wzx

            document.getElementById("ck" + xrcks).style.display= "block"
            ckgd("ck" + xrcks)


        
        }


        function azclose(idm){                                                    //窗口关闭
            dbc.push(idm)
        
            document.getElementById(idm).remove()
            
        }
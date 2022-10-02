if ("WebSocket" in window) {
    var ws = new WebSocket("ws://49.233.20.42:8888");

    ws.onopen = function() {
        alert("已连接")
    }
function send(e){
    ws.send(e)
}

    ws.onmessage = function(e) {
        console.log(e.data);
        zjs(e.data)
    }
    ws.onclose = function() {
        alert('连接错误');
    }
} else {
    alert('您的浏览器不支持 WebSocket！');
}




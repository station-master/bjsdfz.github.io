/*document. querySelector('video').playbackRate=3
window.player.seek(10000)*/
//var bfsp="BV1vV4y1E7AY"
window.onload=function(){
    var bfsp=prompt('az')
    var f='https://player.bilibili.com/player.html?bvid='+bfsp+'&page=1&high_quality=1&danmaku=0&t=1'
   // var f='https://www.bilibili.com/video/'+bfsp
    document.getElementById('left').src=f
    document.getElementById('right').src=f
    //document.getElementById("left").contentWindow.player.seek(1)
}

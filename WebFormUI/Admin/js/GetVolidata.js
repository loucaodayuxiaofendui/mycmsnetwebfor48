/***********改变验证码**********/
function change() 
{
    var imgNode = document.getElementById("volidata");
    imgNode.src = "/Ashx/GetVolidata.ashx?t=" + (new Date()).valueOf();  // 这里加个时间的参数是为了防止浏览器缓存的问题  
}  

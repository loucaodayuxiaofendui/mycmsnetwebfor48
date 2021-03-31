function Year_Month(){ 
    var now = new Date(); 
    var yy = now.getYear(); 
    var mm = now.getMonth()+1; 
    var cl = ''; 
    if (now.getDay() == 0) cl = ''; 
    if (now.getDay() == 6) cl = ''; 
    return(cl + yy + '年' + mm + '月</font>'); 
} 

function Date_of_Today(){ 
    var now = new Date(); 
    var cl = ''; 
    if (now.getDay() == 0) cl = ''; 
    if (now.getDay() == 6) cl = ''; 
    return(cl + now.getDate() + '日</font>'); 
} 

function Day_of_Today(){ 
    var day = new Array(); 
    day[0] = "星期日 "; 
    day[1] = "星期一 "; 
    day[2] = "星期二 "; 
    day[3] = "星期三 "; 
    day[4] = "星期四 "; 
    day[5] = "星期五 "; 
    day[6] = "星期六 "; 
    var now = new Date(); 
    var cl = ''; 
    if (now.getDay() == 0) cl = ''; 
    if (now.getDay() == 6) cl = ''; 
    return(cl + day[now.getDay()] + '</font>'); 
} 

function CurentTime(){ 
    var now = new Date(); 
    var hh = now.getHours(); 
    var mm = now.getMinutes(); 
    var ss = now.getTime() % 60000; 
    ss = (ss - (ss % 1000)) / 1000; 
    var clock = hh+':'; 
    if (mm < 10) clock += '0'; 
    clock += mm+':'; 
    if (ss < 10) clock += '0'; 
    clock += ss; 
    return(clock); 
} 

function refreshCalendarClock(){ 
document.all.calendarClock1.innerHTML = Year_Month(); 
document.all.calendarClock2.innerHTML = Date_of_Today(); 
document.all.calendarClock3.innerHTML = Day_of_Today(); 
document.all.calendarClock4.innerHTML = CurentTime(); 
} 
document.write('<table border="0" cellpadding="0" cellspacing="0" width="250"  height="20">'); 
document.write('<tr><td width="100%" height="100%" align="center">'); 
document.write('<table border="0" cellpadding="0" cellspacing="0" width="100%" hight="100%" height="20">'); 
document.write('<tr><td align="center" width="100%" height="100%">'); 
document.write('<font id="calendarClock1" style="font-family:宋体;font-size:12px"> </font>'); 
document.write('<font id="calendarClock2" style="font-family:Arial;font-size:12px;Line-Height=100%"> </font>'); 
document.write('<font id="calendarClock3" style="font-family:宋体;font-size:12px;Line-Height=100%"> </font>'); 
document.write('<font id="calendarClock4" style="font-size:12px;Line-Height=100%"><b> </b></font>'); 
document.write('</td></tr></table>'); 
document.write('</td></tr></table>'); 
setInterval('refreshCalendarClock()',1000);
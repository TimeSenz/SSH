$(function(){
  var timer=null;
var now = new Date();
var year = now.getFullYear(); //年
var month = now.getMonth()+1; //月
var date = now.getDate();//天
var hour = now.getHours();//时
var minute = now.getMinutes();//分 
var second = now.getSeconds(); //秒  

var days=$("#day_shows").text();
var hours=$("#hour_shows").text();
var minutes=$("#minute_shows").text();
var seconds=$("#second_shows").text();



var testday1=new Date(year,month,days,hours,minutes,seconds);   //标开始时间
var testday2=new Date(year,month,date,hour,minute,second);   //当前时间


window.onload=function (){
   var intDiff = parseInt(testday1-testday2)/1000+604800;
  function time(){
  var day,hour,minute,second;//时间默认值   
  
   day = Math.floor(intDiff / (60 * 60 * 24));
    hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
    minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
    second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
  
  if (minute <= 9) minute = '0' + minute;
  if (hour <= 9) hour = '0' + hour;
  if (second <= 9) second = '0' + second;


 $('#day_show').html(day);
  $('#hour_show').html(hour);
  $('#minute_show').html(minute);
  $('#second_show').html(second);
   intDiff--;
 
  }
  time()
    timer=setInterval(time, 1000);
  if(intDiff<=0){clearInterval(timer)
	  $('#day_show').html("00");
  $('#hour_show').html("00");
  $('#minute_show').html("00");
  $('#second_show').html("00");
  }else if(intDiff>604800){
	  clearInterval(timer)
  $('#day_show').html("00");
  $('#hour_show').html("00");
  $('#minute_show').html("00");
  $('#second_show').html("00");};
}
}); 

function GO(){
   var amount=document.getElementById("amount");
   var period=document.getElementById("period");
   var borrowAmount =document.getElementById("borrowAmount");
   var paybackAmount =document.getElementById("paybackAmount");
   var averagePerMonth =document.getElementById("averagePerMonth");
   var rate=document.getElementById("rate");
   var monthRate=document.getElementById("monthRate");
   monthRate.innerHTML=Math.round(rate.value/12*100)/100;
   
   
   borrowAmount.innerHTML=amount.value;
   
   paybackAmount.innerHTML=parseInt(amount.value*rate.value*period.value)/12/100+parseInt(amount.value);
   
   averagePerMonth.innerHTML=Math.round((parseInt(amount.value*rate.value*period.value)/12/100+parseInt(amount.value))/period.value*100)/100;
  }
  function GO1(){
   var amount1=document.getElementById("amount1");
   var period1=document.getElementById("period1");
   var borrowAmount1 =document.getElementById("borrowAmount1");
   var paybackAmount1 =document.getElementById("paybackAmount1");
   var averagePerMonth1 =document.getElementById("averagePerMonth1");
   var rate1=document.getElementById("rate1");
   var monthRate1=document.getElementById("monthRate1");
   monthRate1.innerHTML=Math.round(rate1.value/12*100)/100;
   
   borrowAmount1.innerHTML=amount1.value;
   
   paybackAmount1.innerHTML=parseInt(amount1.value*rate1.value*period1.value)/12/100+parseInt(amount1.value);
   
   averagePerMonth1.innerHTML=Math.round((parseInt(amount1.value*rate1.value*period1.value)/12/100+parseInt(amount1.value))/period1.value*100)/100;
  }

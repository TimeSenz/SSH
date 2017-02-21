function calculates(){
	document.getElementById("result").innerHTML ="";
	var sum=document.getElementById('sum');
    sum.innerHTML="0.00";
    var amount=document.getElementById('amount');
    amount.innerHTML="0.00";
    var accrual=document.getElementById('accrual');
    accrual.innerHTML="0.00"; 
}

function calculate(){
	document.getElementById("result").innerHTML ="";
  var amountValue=document.getElementById('amountValue').value;//投资金额
  var dueMonth=document.getElementById('dueMonth').value;//投入时长
  var annualRate=document.getElementById('annualRate').value;//年化利率
  var select=document.getElementById('paymentMethod').value;//还款方式
  //alert(select)
  // var oDate = new Date()
  // var time=oDate.setDate(oDate.getDate+3)

 if(select=="0"){
	 //alert(select);
     for(var i=dueMonth; i>0; i--) { 
    	 //alert(amountValue*(1+annualRate/100/12*dueMonth))
      if(i==dueMonth){
    	 
        var insertText ="<tr>" +
                    "<td>"+ i+"月" +"</td>" +
                    "<td>"+ FixedNumberStr(amountValue*(1+annualRate/100/12))+"</td>" +    //收款金额
                    "<td>"+ amountValue +"</td>" +                                        //收回本金
                    "<td>"+ FixedNumberStr(amountValue*(annualRate/100/12))+"</td>" +     //收回利息
                    "<td>" + 0.00 +"</td>" +    //剩余本金
                    "<td>" + 0.00 +"</td>" +   //待收本息
                  "</tr>";
        
        }else{
            var insertText ="<tr>" +
                    "<td>"+ i+"月" +"</td>" +
                    "<td>"+ FixedNumberStr(amountValue*(annualRate/100/12)) +"</td>" +
                    "<td>"+ 0.00 +"</td>" +
                    "<td>"+ FixedNumberStr(amountValue*(annualRate/100/12))+"</td>" +
                    "<td>" + amountValue +"</td>" + 
                    "<td>" + FixedNumberStr(amountValue*(1+annualRate/100/12*(dueMonth-i))) +"</td>" +   //待收本息
                  "</tr>";        
        }
        document.getElementById("result").innerHTML = insertText+document.getElementById("result").innerHTML;        
     }
 }else if(select=="1"){
     for(var j=dueMonth; j>0; j--) {
        var insertText ="<tr>" +
          "<td>"+ j+"月" +"</td>" +
          "<td>"+ FixedNumberStr(amountValue/dueMonth+amountValue*(annualRate/100/12)) +"</td>" +
          "<td>"+ FixedNumberStr(amountValue/dueMonth) +"</td>" +
          "<td>"+ FixedNumberStr(amountValue*(annualRate/100/12))+"</td>" +
          "<td>" + FixedNumberStr(amountValue/dueMonth*(dueMonth-j)) +"</td>" +
          "<td>" + FixedNumberStr(amountValue*(1+annualRate/100/12*dueMonth)-(amountValue/dueMonth+amountValue*(annualRate/100/12))*j) +"</td>" +   //待收本息
        "</tr>";        
      
        document.getElementById("result").innerHTML = insertText+document.getElementById("result").innerHTML;
     }
  } else{
	  
	  
	  var insertText ="<tr>" +
      "<td>"+ dueMonth+"月" +"</td>" +
      "<td>"+ FixedNumberStr(amountValue*(1+annualRate/100/12*dueMonth))+"</td>" +    //收款金额
      "<td>"+ amountValue +"</td>" +                                        //收回本金
      "<td>"+ FixedNumberStr(amountValue*(annualRate/100/12*dueMonth))+"</td>" +     //收回利息
      "<td>" + 0.00 +"</td>" +    //剩余本金
      "<td>" + 0.00 +"</td>" +   //待收本息
    "</tr>";
	  document.getElementById("result").innerHTML = insertText+document.getElementById("result").innerHTML;
	  //ysbx = FixedNumberStr(amountValue*(1+annualRate/100/12*dueMonth));
	  //alert(ysbx);
	/*  for(var k=dueMonth; k>0; k--) {
	        var insertText ="<tr>" +
	          "<td>"+ j +"</td>" +
	          "<td>"+  +"</td>" +
	          "<td>"+ FixedNumberStr(amountValue/dueMonth) +"</td>" +
	          "<td>"+ FixedNumberStr(amountValue*(annualRate/100/12))+"</td>" +
	          "<td>" + FixedNumberStr(amountValue/dueMonth*(dueMonth-j)) +"</td>" +
	        "</tr>";       
	      
	        document.getElementById("result").innerHTML = insertText+document.getElementById("result").innerHTML;
	     }*/
  }   
     var sum=document.getElementById('sum');
     sum.innerHTML=FixedNumberStr(amountValue*(1+annualRate/100/12*dueMonth));
     var amount=document.getElementById('amount');
     amount.innerHTML=amountValue;
     var accrual=document.getElementById('accrual');
     accrual.innerHTML=FixedNumberStr(amountValue*annualRate/100/12*dueMonth);   
     event.preventDefault()
    
}


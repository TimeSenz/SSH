      $(function(){

            $(".top li").click(function(){
                var index=$(this).index();
                $("#fund_main1>div").eq(index).show().siblings().hide();
            })
                $(".two ol li").click(function(){
                    var index=$(this).index();
                    $(this).addClass('cur').siblings().removeClass('cur');
                    $("#fund_main>div").eq(index).show().siblings().hide();
                })
                $(".three ol li").click(function(){
                    var index=$(this).index();
                    $(this).addClass('cur').siblings().removeClass('cur');
                    $(".fund_main3>div").eq(index).show().siblings().hide();
                })
                $(".five ol li").click(function(){
                    var index=$(this).index();
                    $(this).addClass('cur').siblings().removeClass('cur');
                    $(".fund_main5>div").eq(index).show().siblings().hide();
                })
                 $(".fund_main3 .center_li li").click(function(){
                    var index=$(this).index();
                    $(this).addClass('cur').siblings().removeClass('cur');
                    $(".fund_main3 #main>div").eq(index).show().siblings().hide();
                })
                 $(".fund_main3 .center_li1 li").click(function(){
                    var index=$(this).index();
                    $(this).addClass('cur').siblings().removeClass('cur');
                    $(".fund_main3 #main1>div").eq(index).show().siblings().hide();
                })
                 $(".fund_main3 .center_li2 li").click(function(){
                    var index=$(this).index();
                    $(this).addClass('cur').siblings().removeClass('cur');
                    $(".fund_main3 #main2>div").eq(index).show().siblings().hide();
                })
                 $(".fund_main3 .center_li3 li").click(function(){
                    var index=$(this).index();
                    $(this).addClass('cur').siblings().removeClass('cur');
                    $(".fund_main3 #main3>div").eq(index).show().siblings().hide();
                })
                 $(".fund_main3 .center_li4 li").click(function(){
                    var index=$(this).index();
                    $(this).addClass('cur').siblings().removeClass('cur');
                    $(".fund_main3 #main4>div").eq(index).show().siblings().hide();
                })

                 $(".fund_main6 .center_li li").click(function(){
                    var index=$(this).index();
                    $(this).addClass('cur').siblings().removeClass('cur');
                    $(".fund_main6 #main>div").eq(index).show().siblings().hide();
                }) 
                 $(".center_a a").click(function(){
                    
                    $(this).addClass('cur').siblings().removeClass('cur');
                }) ;
         
           /* var Itext = $('.jine1').text();
            //alert(Itext)
               if(Itext=="0.0" || Itext=="nullnull"){
                	$(".jine1").text("0.00");
                	 
                }*/
            //抹去小数点 四舍五入
                var my_val1=document.getElementsByTagName("b");
                //alert(my_val1)
      		  for(var i=0;i<my_val1.length;i++){			  
      			  RoundNumber(my_val1[i])	  
      		    } 
      	   function RoundNumber(mark){
      			var RoundValue=mark.innerHTML;
      			var RoundValueRound=Math.round(RoundValue);
      			mark.innerHTML=RoundValueRound
      		}
      	   
      	   //四舍五入保留小数点后两位
      	 
      	var my_val2=document.getElementsByTagName("big");
      	
 		  for(var i=0;i<my_val2.length;i++){			  
 			 FixedNumber(my_val2[i])
 			 
 		    } 
 	   function FixedNumber(fixed){
 			var FixedValue=fixed.innerHTML;
 			b=parseFloat(FixedValue);
 			
 			var FixedValueFixed=b.toFixed(2);
 			fixed.innerHTML=FixedValueFixed;
 		}
                
             })
             
      
             
    
//账户信息显示格式限定
function show_style(obj,start,num,star){
                            var str=document.getElementById(obj);
                            var str1=str.innerHTML;
                            if(str1!=""){
                                var arr=str1.split("");
                                arr.splice(start,num,star)
                                str2=arr.toString();
                                str.innerHTML=str2.replace(/,/g,"")
                            }
                          }
//信息认证状态限制   
      function status(sta,auth,noauth){
          var obj=document.getElementById(sta);
          var obj_value=obj.innerHTML;
          var noauth=document.getElementById(noauth);
          var auth=document.getElementById(auth);
          
          if(obj_value==""){
            noauth.style.display="block";
          }else{
            auth.style.display="block"
          };
 
        }
      
  //绑定邮箱    
      function email(){
    	  var email=document.getElementById("email");
    	  email_value=email.innerHTML;
          var Set1=document.getElementById("Set1");
          var setEmail=document.getElementById("setEmail");
    	  if(email_value==""){
    		  Set1.style.display="block";
              setEmail.style.display="none";
            }else{
            	Set1.style.display="none";
                setEmail.style.display="block";
            }
      }
//提现密码状态限制
function status1(sta,auth,noauth){
            var obj=document.getElementById(sta);
            var obj_value=obj.innerHTML;
            var noauth=document.getElementById(noauth);
            var auth=document.getElementById(auth);
            if(obj_value=="123456"){
              noauth.style.display="block"
            }else{
              auth.style.display="block"
            }            
          }
//四舍五入(数据加载)
function FixedNumberStr(FixedValue){
    b=parseFloat(FixedValue);
    
    var FixedValueFixed=b.toFixed(2);
    /*if(FixedValue==0){
      return FixedValue;
    }*/
    return FixedValueFixed;
  }  


//交易记录json
var xhr;
function createXHR(){
  if(window.ActiveXObject){
    xhr = new ActiveXObject("Microsoft.XMLHTTP");
  }else if(window.XMLHttpRequest){
    xhr = new XMLHttpRequest();
  }else{
    alert("can't create xhr object!");
  }  
}

function ajaxPost(currentPageAjax){
  //alert("ajaxPost()");  
  var currentPage=document.getElementById("currentPage").value;
  var pageSize=document.getElementById("pageSize").value;
  
  
  //alert("currentPageAjax:"+currentPageAjax);
  createXHR();
  
  var action="/ZhongCaiBao/userinfo/personRecordsAjax.action"
  xhr.open("post", action,true);
  xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
  xhr.send("currentPageAjax="+currentPageAjax
      +"&pageSizeAjax="+10);
  //alert("ajaxAction:"+action);
  xhr.onreadystatechange=doResponse;
  
}
function doResponse(){
   //alert("doResponse()");
   if(xhr.readyState==4&&xhr.status==200){
     var json=xhr.responseText;
    
  //string 转换成json数组
  var Lists = JSON.parse(json);
 
  document.getElementById("listJson").innerHTML="";
  var user=Lists[0];
  var size=Lists[1].size;
  var length = user.length;
  document.getElementById("maxPage").value = size;
  document.getElementById("userLength").value = size;
  
 for(var j=0; j<user.length; j++) {
	 var jieyu = ""
	 if(user[j].remark!="已放款"&&user[j].type=="提现"){
		 jieyu = "<td style='width:100px;color:red;'>冻结中</td>"
		}else{
		 jieyu = "<td style='width:100px;'><span class='width100white'>"+FixedNumberStr(user[j].intoacc)+"</span></td>" 
		}
   var insertText ="<tr>" +
   						"<td style='width:180px;'>"+format(user[j].time)+"</td>" +
   						"<td style='width:100px;'><span class='width100white'>"+user[j].type+"</span></td>" +
   						"<td style='width:100px;'><span class='width100white'>"+FixedNumberStr(user[j].income)+"</span></td>" +
   						"<td style='width:100px;'><span class='width100white'>"+FixedNumberStr(user[j].expand)+"</span></td>" +
   						jieyu +
   						"<td style='width:100px;'><span class='width100white'title='"+user[j].remark+"'>"+user[j].remark+"</span></td>" +
   					"</tr>";
   document.getElementById("listJson").innerHTML = document.getElementById("listJson").innerHTML+insertText;
 }
 
      
   }

}


function down(){
  var currentPage=parseInt(document.getElementById("currentPage").value);
  //alert(currentPage++);
  var max = document.getElementById("maxPage").value;
  var dqy = document.getElementById("currentPage").value;
  var leng = document.getElementById("userLength").value;
  dqy=currentPage.toString();
  // currentPage=currentPage+1;
  // document.getElementById("currentPage").value=currentPage;
    var listlength=Math.ceil(max/10);//页面个数
    //alert(dqy); 
    
    if(dqy==listlength || dqy>listlength){
        alert("最后一页");
      }
    else{currentPage++;
    document.getElementById("currentPage").value=currentPage;
    ajaxPost(currentPage);
  	  
    }

   
  
}

/*function changeTime(time){
		
	
	return time;
}*/
//时间格式化
function add0(m){return m<10?'0'+m:m }
function format(shijianchuo)
{
//shijianchuo是整数，否则要parseInt转换
var time = new Date(shijianchuo);	
var y = time.getFullYear();
var m = time.getMonth()+1;
var d = time.getDate();
var h = time.getHours();
var mm = time.getMinutes();
var s = time.getSeconds();
return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
}
//alert(format())

function up(){
  
  var currentPage=parseInt(document.getElementById("currentPage").value);
  if (currentPage > 1) {
    //currentPage--;
    currentPage=currentPage-1;
    document.getElementById("currentPage").value=currentPage.toString();
    }

  //alert(currentPage);
  //currentPage=currentPage-1;
  if(currentPage <1){
    
    alert("第一页");
  }else{
    ajaxPost(currentPage);
  }
  
}


window.onload= function(){
	ajaxPost(1);
	   
			}

//充值判断
function chongzhi(){
		  var CZmoney=document.getElementById("CZmoney").value;
		  var icoudID=document.getElementById("icoudID").value;
		  var name=document.getElementById("name").value;
		  var email=document.getElementById("email").value;
		  var phone=document.getElementById("phone").value;
		  if(icoudID=="" || name=="" || email=="" || phone==""){
			document.getElementById("span1").innerHTML='<a href="/ZhongCaiBao/userinfo/personCenter.action" style="color:red;padding-left:0">请完善个人账户信息</a>';
			return false;
		}else if(CZmoney==""){
			document.getElementById("span1").innerHTML='<font color="red">请输入充值金额</font>';
			return false;
	  };
	
		

}
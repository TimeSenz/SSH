<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>身份验证</title>
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/reg.css">
<script src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" language="javascript" src="js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
<script>
  //倒计时 
    window.onload =function() {
    var i = 4;
            setInterval(function(){               
            if(i == 0) {
                    location.href = "/ZhongCaiBao/";
                }
                document.getElementById("time").innerHTML = i--;
 
            },1000);
        };
</script>
</head>

<body>
 <div class="pg-container">
<!--头部-->
  <%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main-->
  <div class="reg-main-container  main_box">
      <div class="w1000">
          <div class="top">
                <ul>
                    <li class="step_1"><em>1</em><strong>填写账户信息</strong></li>
                    <li class="step_1"><em>2</em><strong>身份验证信息</strong></li>
                    <li  class="step_1" style="margin-right:0"><em>3</em><strong>注册成功</strong></li>
                </ul>
                
            </div>
            <h3 class="reg_h3">√ 恭喜您，注册成功！</h3>
            <p class="reg_p"><span id="time" style="margin-right:5px;">5</span>秒后跳转至首页 <a href="/ZhongCaiBao/">立即跳转</a></p>
        </div>
    </div>
    
    <script>
    function onSubmitChick(){
    	var usernicknameToo =document.getElementById("span6s").innerHTML;
    	var usernicknameTooIndexOf = usernicknameToo.lastIndexOf("身");
		var usernicknameTooSubstring = usernicknameToo.substring(usernicknameTooIndexOf, usernicknameToo.length);
    	
		var xmToo =document.getElementById("span4s").innerHTML;
    	var xmTooIndexOf = xmToo.lastIndexOf("真");
		var xmTooSubstring = xmToo.substring(xmTooIndexOf, xmToo.length);
    	
		//alert(xmTooSubstring);
	    if(usernicknameTooSubstring =="身份证号码已被注册"||usernicknameTooSubstring =="身份证号码已被注册</font>") {
	 	   //alert("身份证号码已被注册！");
	 	   return false;
	 	}else if(usernicknameTooSubstring =="身份证号格式错误"||usernicknameTooSubstring =="身份证号格式错误</font>"){
	 		//alert("身份证号码已被注册！");
	 		return false;
	 	}else if(usernicknameTooSubstring =="身份证号码不能为空"||usernicknameTooSubstring =="身份证号码不能为空</font>"||usernicknameTooSubstring ==""||usernicknameTooSubstring =="请输入身份证号"||usernicknameTooSubstring =="请输入身份证号</font>"){
	 		//alert("身份证号码不能为空！");
	 		return false;
	 	}else if(xmTooSubstring =="真实姓名不能为空"||xmTooSubstring =="真实姓名不能为空</font>"){
	 		//alert("真实姓名不能为空！");
	 		return false;
	 	}else{
	 		document.getElementById("ajax_form").submit();
	 	   return true;
	 	}
    }
       function cleart(){
       $("#userinfo.name").val("");
        $("#userinfo.idcard").val("");
      
       $("#ajax_form").submit();
       
  }
    </script>
<!--main-->
<!--footer start-->
   <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/embed.js"></script>
    
  </body>
</html>

</html>
  
  </body>
</html>


</html>
  
  </body>
</html>

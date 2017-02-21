/********************************************************************************************************
************************************公共方法****************************************************************
********************************************************************************************************/
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
//创建函数
var xhr;
function createXHR() {
	if (window.ActiveXObject) {
		xhr = new ActiveXObject("Microsoft.XMLHTTP");
	} else if (window.XMLHttpRequest) {
		xhr = new XMLHttpRequest();
	} else {
		alert("can't create xhr object!");
	}
}

/**************************************************************************************************
********************************************************贾凡**************************************** 
*********************************************后台--财务--资金流水--分页--Ajax***************************
***************************************************************************************************/
	//初始化方法
	function rootZjlsInit() {
		//alert("进来");
		document.getElementById("listJson").innerHTML = "";
		document.getElementById("currentPage").value = 1;
		//初始化页面为第一页
		var currentPage = 1;
		//初始化页面条件查询--类型
		var jsType = "全部";
		//初始化页面条件查询--相关人
		var jsPeople = "";
		//初始化页面条件查询--起始日期
		var startTime = "";
		//初始化页面条件查询--结束日期
		var endTime = "";
		rootZjlsAjaxPost(currentPage,jsType,jsPeople,startTime,endTime);
	}
	//查询方法
	function rootZjlsSelect() {
		//alert("进来");
		document.getElementById("listJson").innerHTML = "";
		document.getElementById("currentPage").value = 1;
		//初始化页面为第一页
		var currentPage = 1;
		var jsType = document.getElementById("lx").value;
		var jsPeople= document.getElementById("xgr").value;
		var startTime= document.getElementById("Timer1").value;
		var endTime= document.getElementById("Timer2").value;
//		alert(jsType);
//		alert(jsPeople);
//		alert(startTime);
//		alert(endTime);
		
		//alert("1");
		rootZjlsAjaxPost(currentPage,jsType,jsPeople,startTime,endTime);
	}
	// 分页--下一页
	function rootZjlsDownPage() {
		//document.getElementById("listJson").innerHTML = "";
		var currentPage = parseInt(document.getElementById("currentPage").value);
		//alert(currentPage);
		var max = document.getElementById("maxPage").value;
		var dqy = document.getElementById("currentPage").value;
		var leng = document.getElementById("userLength").value;
		
		var jsType = document.getElementById("lx").value;
		var jsPeople= document.getElementById("xgr").value;
		var startTime= document.getElementById("Timer1").value;
		var endTime= document.getElementById("Timer2").value;
		dqy = currentPage.toString();
		// currentPage=currentPage+1;
		// document.getElementById("currentPage").value=currentPage;
		var listlength = Math.ceil(max / 10);// 页面个数
		// alert(dqy);
		//alert(dqy);
		if (dqy == listlength || dqy > listlength) {
			alert("最后一页");
		} else {
			currentPage++;
			document.getElementById("currentPage").value = currentPage;
			rootZjlsAjaxPost(currentPage,jsType,jsPeople,startTime,endTime);
		}
	}
	// 分页--上一页
	function rootZjlsUpPage() {
		//document.getElementById("listJson").innerHTML ="";
		var currentPage = parseInt(document.getElementById("currentPage").value);
		var jsType = document.getElementById("lx").value;
		var jsPeople= document.getElementById("xgr").value;
		var startTime= document.getElementById("Timer1").value;
		var endTime= document.getElementById("Timer2").value;
		
		if (currentPage > 1) {
			// currentPage--;
			currentPage = currentPage - 1;
			document.getElementById("currentPage").value = currentPage.toString();
		}
		// alert(currentPage);
		// currentPage=currentPage-1;
		if (currentPage < 1) {
			alert("第一页");
		} else {
			rootZjlsAjaxPost(currentPage,jsType,jsPeople,startTime,endTime);
		}
	
	}
	
	function rootZjlsAjaxPost(currentPageAjax,jsType,jsPeople,startTime,endTime) {
		//alert("ajaxPost()");
		var currentPage = document.getElementById("currentPage").value;
		var pageSize = document.getElementById("pageSize").value;
		//alert("currentPageAjax:" + currentPageAjax);
	
		createXHR();
		var action = "/ZhongCaiBao/rootact/personRecordsAjax.action"
		xhr.open("post", action, true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		//alert(currentPageAjax);
		xhr.send("currentPageAjax=" + currentPageAjax + "&pageSizeAjax=" + 10 
					+ "&zjlsLx=" + jsType
					+ "&zjlsXgr=" + jsPeople
					+ "&zjlsQsrq=" + startTime
					+ "&zjlsJsrq=" + endTime
				);
		//alert("ajaxAction:" + action);
		xhr.onreadystatechange = rootZjlsDoResponse;
	
	}
	function rootZjlsDoResponse() {
		// alert("doResponse()");
		if (xhr.readyState == 4 && xhr.status == 200) {
			var json = xhr.responseText;
			// alert(json);
			 //alert("json:"+json);
	
			// string 转换成json数组
			var Lists = JSON.parse(json);
	
			document.getElementById("listJson").innerHTML = "";
			var user = Lists[0];
			var size = Lists[1].size;
			//alert(size);
			var length = user.length;
			//alert(length);
			document.getElementById("maxPage").value = size;
			document.getElementById("userLength").value = size;
			// var size=lists[1].size;
			// alert(size);
//			alert(user[0].re.type);
//			alert(user[1].re.type);
			for (var j = 0; j < user.length; j++) {
				
				// var jieyu = ""
				// if (user[j].remark != "已放款" && user[j].type == "提现") {
				// jieyu = "<td style='width:100px;color:red;'>冻结中</td>"
				// } else {
				// jieyu = "<td style='width:100px;'>" + user[j].intoacc + "</td>"
				// }
				//alert("fuck====" + user[j].re.recid);
				var insertText = "<tr>" + "<td style='width:45px;'>"
						+ user[j].re.recid
						+ "</td>"
						+ "<td style='width:100px'><span class='span' style='width:100px'>"
						+ user[j].re.people
						+ "</span></td>"
						+ "<td style='width:200px'><span class='span' style='width:200px'>"
						+ user[j].re.intoinfo
						+ "</td>"
						+ "<td style='width:200px'><span class='span' style='width:200px'>"
						+ user[j].re.outtoinfo
						+ "</td>"
						+ "<td style='width:130px'><span class='span' style='width:130px'>"
						+ user[j].re.type
						+ "</td>"
						+ "<td style='width:130px'><span class='span' style='width:130px'>"
						+ user[j].re.money
						+ "</td>"
						+ "<td style='width:130px'><span class='span' style='width:130px'>"
						+ user[j].re.paytype
						+ "</td>"
						+ "<td style='width:180px'><span class='span' style='width:180px'>"
						+ format(user[j].re.time)
						+ "</td>"
						
						+ "<td style='width:100px'><span class='span' style='width:100px'>"
						+ user[j].re.remark
						+ "</td>"
						+ "</tr>";
				//alert(insertText);
				document.getElementById("listJson").innerHTML = document.getElementById("listJson").innerHTML + insertText;
				// alert(formats)
	
			}
		}
	
	}
/********************************************************************************************************
****************************************导出Excel*********************************************************
********************************************************************************************************/
	//导出
	function rootZjlsExl() {
		document.getElementById("listJson").innerHTML = "";
		document.getElementById("currentPage").value = 1;
		var currentPage = 1;
		var jsType = document.getElementById("lx").value;
		var jsPeople= document.getElementById("xgr").value;
		var startTime= document.getElementById("Timer1").value;
		var endTime= document.getElementById("Timer2").value;
		//2状态为下载	其他状态都为查询活着加载
		var status = 2;
		rootZjlsExlPost(currentPage,jsType,jsPeople,startTime,endTime,status);
	}
	function rootZjlsExlPost(currentPageAjax,jsType,jsPeople,startTime,endTime,status) {
		//alert("ajaxPost()");
		var currentPage = document.getElementById("currentPage").value;
		var pageSize = document.getElementById("pageSize").value;
		//alert("currentPageAjax:" + currentPageAjax);
	
		createXHR();
		var action = "/ZhongCaiBao/rootact/personRecordsAjax.action"
		xhr.open("post", action, true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		//alert(currentPageAjax);
		xhr.send("currentPageAjax=" + currentPageAjax + "&pageSizeAjax=" + 10 
					+ "&zjlsLx=" + jsType
					+ "&zjlsXgr=" + jsPeople
					+ "&zjlsQsrq=" + startTime
					+ "&zjlsJsrq=" + endTime
					+ "&status=" + status
				);
		//alert("ajaxAction:" + action);
		xhr.onreadystatechange = rootZjlsDoResponse;
	}
/**************************************************************************************************
********************************************************贾凡**************************************** 
*********************************************后台--客服--优惠券--分页--Ajax*****************************
***************************************************************************************************/
	//初始化方法
	function rootKfCouponInit() {
		document.getElementById("kfCouponListJson").innerHTML = "";
		document.getElementById("kfCouponCurrentPage").value = 1;
		//初始化页面为第一页
		var kfCouponCurrentPage = 1;
		//初始化页面条件查询--编号
		var userinfo_uid_coupon = "";
		//初始化页面条件查询--昵称
		var userinfo_nickname_coupon = "";
		//初始化页面条件查询--手机号
		var userinfo_phone_coupon = "";
		//初始化页面条件查询--真实姓名
		var userinfo_name_coupon = "";
		//初始化页面条件查询--身份证号
		var userinfo_idcard_coupon = "";
		//初始化页面条件查询--总资产
		var userinfo_zye_coupon = "";
		rootKfCouponAjaxPost(kfCouponCurrentPage,
				userinfo_uid_coupon,
				userinfo_nickname_coupon,
				userinfo_phone_coupon,
				userinfo_name_coupon,
				userinfo_idcard_coupon,
				userinfo_zye_coupon);
	}
	function rootKfCouponAjaxPost(kfCouponCurrentPage,
			userinfo_uid_coupon,
			userinfo_nickname_coupon,
			userinfo_phone_coupon,
			userinfo_name_coupon,
			userinfo_idcard_coupon,
			userinfo_zye_coupon){
		//alert("ajaxPost()");
		var kfCouponCurrentPage = document.getElementById("kfCouponCurrentPage").value;
		var kfCouponPageSize = document.getElementById("kfCouponPageSize").value;
		//alert("currentPageAjax:" + kfCouponCurrentPage);
	
		createXHR();
		var action = "/ZhongCaiBao/userinfo/findAllCouponAjax.action";
		//alert(action);
		xhr.open("post", action, true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		//alert(currentPageAjax);
		xhr.send("currentPageAjax=" + kfCouponCurrentPage
				    + "&pageSizeAjax=" + 10 
					+ "&userinfo_uid_coupon=" + userinfo_uid_coupon
					+ "&userinfo_nickname_coupon=" + userinfo_nickname_coupon
					+ "&userinfo_phone_coupon=" + userinfo_phone_coupon
					+ "&userinfo_name_coupon=" + userinfo_name_coupon
					+ "&userinfo_idcard_coupon=" + userinfo_idcard_coupon
					+ "&userinfo_zye_coupon=" + userinfo_zye_coupon
				);
		//alert("ajaxAction:" + action);
		xhr.onreadystatechange = rootKfCouponDoResponse;
	}
	function rootKfCouponDoResponse() {
		// alert("doResponse()");
		if (xhr.readyState == 4 && xhr.status == 200) {
			var json = xhr.responseText;
			// alert(json);
			 //alert("json:"+json);
			// string 转换成json数组
			var Lists = JSON.parse(json);
			document.getElementById("kfCouponListJson").innerHTML = "";
			var user = Lists[0];
			var size = Lists[1].size;
			//alert(size);
			var length = user.length;
			//alert(length);
			document.getElementById("kfCouponMaxPage").value = size;
			document.getElementById("kfCouponUserLength").value = size;
			// var size=lists[1].size;
			// alert(size);
			for (var j = 0; j < user.length; j++) {
				//alert("fuck2====" + user[j].userid);
				var insertText = "<tr>" + "<td style='width:10%;' id='userID' name='userID'>"
						+ user[j].userid
						+ "</td>"
						+ "<td style='width:15%'><span class='span' style='width:130px'>"
						+ user[j].nickname
						+ "</span></td>"
						+ "<td style='width:15%'><span class='span' style='width:200px'>"
						+ user[j].phone
						+ "</td>"
						+ "<td style='width:15%'><span class='span' style='width:130px'>"
						+ user[j].name
						+ "</td>"
						+ "<td style='width:20%'><span class='span' style='width:130px'>"
						+ user[j].idcard
						+ "</td>"
						+ "<td style='width:12%'><input type='checkbox' name='checkboxID' id='checkboxID' value='"+user[j].userid+"'>"
						+ "</td></tr>";
				//alert(insertText);
				document.getElementById("kfCouponListJson").innerHTML = document.getElementById("kfCouponListJson").innerHTML + insertText;
				// alert(formats)
	
			}
		}
	}
	
	//查询方法
	function rootKfCouponSelect() {
		//alert()
		document.getElementById("kfCouponListJson").innerHTML = "";
		document.getElementById("kfCouponCurrentPage").value = 1;
		//初始化页面为第一页
		var kfCouponCurrentPage = 1;
		var userinfo_uid_coupon      = document.getElementById("userinfo_uid_coupon").value;
		var userinfo_nickname_coupon = document.getElementById("userinfo_nickname_coupon").value;
		var userinfo_phone_coupon    = document.getElementById("userinfo_phone_coupon").value;
		var userinfo_name_coupon     = document.getElementById("userinfo_name_coupon").value;
		var userinfo_idcard_coupon   = document.getElementById("userinfo_idcard_coupon").value;
		var userinfo_zye_coupon      = "";//document.getElementById("userinfo_zye_coupon").value;
		//alert(userinfo_uid_coupon);
		rootKfCouponAjaxPost(kfCouponCurrentPage,
				userinfo_uid_coupon,
				userinfo_nickname_coupon,
				userinfo_phone_coupon,
				userinfo_name_coupon,
				userinfo_idcard_coupon,
				userinfo_zye_coupon);
	}
	// 分页--下一页
	function rootKfCouponDownPage() {
		//document.getElementById("listJson").innerHTML = "";
		var currentPage = parseInt(document.getElementById("kfCouponCurrentPage").value);
		//alert(currentPage);
		var max = document.getElementById("kfCouponMaxPage").value;
		var dqy = document.getElementById("kfCouponCurrentPage").value;
		var leng = document.getElementById("kfCouponUserLength").value;
		
		var userinfo_uid_coupon      = document.getElementById("userinfo_uid_coupon").value;
		var userinfo_nickname_coupon = document.getElementById("userinfo_nickname_coupon").value;
		var userinfo_phone_coupon    = document.getElementById("userinfo_phone_coupon").value;
		var userinfo_name_coupon     = document.getElementById("userinfo_name_coupon").value;
		var userinfo_idcard_coupon   = document.getElementById("userinfo_idcard_coupon").value;
		var userinfo_zye_coupon      = "";//document.getElementById("userinfo_zye_coupon").value;
		dqy = currentPage.toString();
		// currentPage=currentPage+1;
		// document.getElementById("currentPage").value=currentPage;
		var listlength = Math.ceil(max / 10);// 页面个数
		// alert(dqy);
		//alert(dqy);
		if (dqy == listlength || dqy > listlength) {
			alert("最后一页");
		} else {
			currentPage++;
			document.getElementById("kfCouponCurrentPage").value = currentPage;
			rootKfCouponAjaxPost(kfCouponCurrentPage,
					userinfo_uid_coupon,
					userinfo_nickname_coupon,
					userinfo_phone_coupon,
					userinfo_name_coupon,
					userinfo_idcard_coupon,
					userinfo_zye_coupon);
		}
	}
	// 分页--上一页
	function rootKfCouponUpPage() {
		//document.getElementById("listJson").innerHTML ="";
		var currentPage = parseInt(document.getElementById("kfCouponCurrentPage").value);
		
		var userinfo_uid_coupon      = document.getElementById("userinfo_uid_coupon").value;
		var userinfo_nickname_coupon = document.getElementById("userinfo_nickname_coupon").value;
		var userinfo_phone_coupon    = document.getElementById("userinfo_phone_coupon").value;
		var userinfo_name_coupon     = document.getElementById("userinfo_name_coupon").value;
		var userinfo_idcard_coupon   = document.getElementById("userinfo_idcard_coupon").value;
		var userinfo_zye_coupon      = "";//document.getElementById("userinfo_zye_coupon").value;
		
		if (currentPage > 1) {
			// currentPage--;
			currentPage = currentPage - 1;
			document.getElementById("kfCouponCurrentPage").value = currentPage.toString();
		}
		// alert(currentPage);
		// currentPage=currentPage-1;
		if (currentPage < 1) {
			alert("第一页");
		} else {
			rootKfCouponAjaxPost(kfCouponCurrentPage,
					userinfo_uid_coupon,
					userinfo_nickname_coupon,
					userinfo_phone_coupon,
					userinfo_name_coupon,
					userinfo_idcard_coupon,
					userinfo_zye_coupon);
		}
	
	}
/****************************************begin***********************************************************
***************************************发送优惠券***********************************************************
********************************************************************************************************/
	//弹窗-多选事件
    function couponOnclick(){
	  	if($("#checkboxID:checked").size()==0){
	  		alert("请选择发送用户")
	  	}else{
	  		var userids="";
		    var userid=document.getElementById("userID").innerHTML;
		    //alert(userid);
		    var userCheckBoxID=document.getElementsByName('checkboxID');
		    for(var i=0;i<userCheckBoxID.length;i++){
		    	if(userCheckBoxID[i].checked){
		    		//alert(userCheckBoxID[i].checked);
		    	  	//alert(userCheckBoxID[i].checked)
		    		userids=userids+userCheckBoxID[i].value+",";
		    		//alert(userids);
		        }
		    }
		    userids=userids.substring(0, userids.length-1); 
		    document.getElementById("usid").value=userids;
		    var model=document.getElementById('model');
		    var opict=document.getElementById('opict');
		    model.style.display='block';
		    opict.style.display='block';
		}
    }
    function yanzheng(){
  	   var lx = document.getElementById('yhqlx').value;
  	   var je = document.getElementById('je').value;
  	   var khs=/^[0-9]*$/;
  	   if(lx=="请选择类型"){
  		   alert("请选择类型");
  		   return false;
  	   }else if(je==""){
  		  alert("输入赠送金额");
  		  return false;
  	   }else if(!khs.exec(je)){
  		  alert("请输入正确的数字");
  		  return false;
  	   }else if(!je % 10){
  		  alert("请输入10的倍数");
  		  return false;
  	   }else if(je==0){
  		 alert("赠送金额必须大于0");
  		 return false;
  	   }else{
  		  rootOutCouponPost();
  	   }
     }
    //发送优惠券
    function rootOutCouponPost() {
    	//用户编号---uid,uid,uid,uid,
    	var uid = document.getElementById("usid").value;
    	//优惠券类型
    	var ytype = document.getElementById("yhqlx").value;
    	//优惠券金额
    	var yje = document.getElementById("je").value;
    	//alert("uid=="+uid+"ytype=="+ytype+"yje=="+yje);
		createXHR();
		var action = "/ZhongCaiBao/userinfo/outCouponAjax.action";
		xhr.open("post", action, true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		//alert(currentPageAjax);
		xhr.send("uid=" + uid 
					+ "&cs=" + yje 
					+ "&type=" + ytype
				);
		//alert("ajaxAction:" + action);
		xhr.onreadystatechange = rootOutCouponDoResponse;
	}
    function rootOutCouponDoResponse() {
		 //alert("doResponse()");
		if (xhr.readyState == 4 && xhr.status == 200) {
			alert("优惠券赠送成功");
			var model=document.getElementById('model');
		    var opict=document.getElementById('opict');
		    model.style.display='none';
		    opict.style.display='none';
		}
	}
/****************************************end*************************************************************
***************************************发送优惠券***********************************************************
********************************************************************************************************/
			     
			      
	
	
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	Integer totalPage = (Integer) request.getAttribute("totalPage");
	Integer areaPage = (Integer) request.getAttribute("areaPage");
	Integer kfCouponCurrentPage = (Integer) request.getAttribute("kfCouponCurrentPage");
%>
<%
				//贾凡获取前台Text框值方法
	        	//RootactAction root = new RootactAction();
	       	    HttpServletRequest request123 = ServletActionContext.getRequest();
		       	String uid      = request123.getParameter("userinfo_uid_coupon");
		 		String nickname = request123.getParameter("userinfo_nickname_coupon");
		 		String phone    = request123.getParameter("userinfo_phone_coupon");
		 		String name     = request123.getParameter("userinfo_name_coupon");
		 		String idcard   = request123.getParameter("userinfo_idcard_coupon");
		 		String zye      = request123.getParameter("userinfo_zye_coupon");
	    		if(uid==null){
	    			uid = "";
	    		}
	    		if(nickname==null){
	    			nickname = "";
	    		}
	    		if(phone==null){
	    			phone = "";
	    		}
	    		if(name==null){
	    			name = "";
	    		}
	    		if(idcard==null){
	    			idcard = "";
	    		}
	    		if(zye==null){
	    			zye = "";
	    		}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>客服 优惠券</title>
<base href="<%=basePath%>">
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/houtai.css">
<link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<script src="js/rootAjax.js"></script>
<script src="js/jquery-1.6.4.min.js"></script>

</head>
<body onload="showTime();rootKfCouponInit()" style="position: relative;">
<div class="opict" style="display: none;" id="opict"></div>
	<div class="wrap">
		<div class="nav">
			<div class="logo">
				<a href=""></a>
			</div>
			<ul class="ul">
				<li class="cur"><a href="javaScript:;">预览新闻</a></li>
			</ul>
			<p class="p">
				<a href="/ZhongCaiBao/root/choiceLogin.jsp">退出</a>
			</p>
		</div>
		<div class="main">
			<div class="aside">
				<div class="aside_top">
					<input type="text" placeholder="搜索">
					<dl>
						<dt></dt>
						<dd>
							<p>
								<s:property value="#session.cusinfo.name" />
								<span><a>欢迎您</a></span>
							</p>
							<p>
								<span>新消息(<i>0</i>)
								</span><span>日报(<i>0</i>)
								</span>
							</p>
						</dd>
					</dl>
				</div>
				<div class="aside_main">
					<ul>






						<li><strong class="icon11"><span><a
									href="/ZhongCaiBao/newsinfo/findAllByDong.action?currentPage=1">新闻动态</a></span></strong></li>
						<li><strong class="icon11"><span><a
									href="/ZhongCaiBao/newsinfo/findAllByGong.action?currentPage=1">新闻公告</a></span></strong></li>
						<li><strong class="icon11"><span><a
									href="/ZhongCaiBao/newsinfo/findAllByHuan.action?currentPage=1">还款公告</a></span></strong></li>
						<li><strong class="icon11"><span><a
									href="/ZhongCaiBao/newsinfo/findAllByMei.action?currentPage=1">媒体报道</a></span></strong></li>
						<li class="cur"><strong class="icon11"><span><a
									href="/ZhongCaiBao/root/showCoupon.jsp">优惠券</a></span></strong></li>
						<li><strong class="icon11"><span><a
									href="/ZhongCaiBao/sms/findAll.action?currentPage=1">短信模版</a></span></strong></li>
						<li><strong class="icon11"><span><a
									href="/ZhongCaiBao/userinfo/findAll.action?currentPage=1">发送短信</a></span></strong></li>



						`

					</ul>
				</div>
			</div>
			<div class="article">
				<!--  弹出层begin	  -->
				<s:form name="f4">
					<div id="model" style="display: none; width: 400px;height: 300px;top: 140px;left:50%;margin-left:-200px">
			      	<p onclick="closes()" style="position:absolute;right: -10px;top: -10px;"><img src="./images/close.png"></p>
			        <div id="text_con">
			        	<ol class="text_con_coupon">
			        		<li><strong>用户编号:</strong><input type="text" id="usid" value="" disabled="true"></li>
			        		<li><strong>送优惠券类型: </strong>
			        			<select name="yhqlx" id="yhqlx">
			        					<option value="请选择类型">请选择类型</option>
										<option value="注册送优惠券">注册送优惠券</option>
										<option value="实名认证送优惠券">实名认证送优惠券</option>
										<option value="初次优选计划送优惠券">初次优选计划送优惠券</option>
								</select>
			        		</li>
			        		<li><strong>优惠券金额: </strong><input type="text" name="je" id="je" value=""></li>
			        	</ol>
			        </div>
			        <input type="button" value="确定" class="send_btn" id="" onclick="yanzheng();" style="right:140px;">
			      </div>
				</s:form>
				<!--  弹出层end  -->
				<div class="article_top">
					<div id="time" class="p"></div>
					<ul>
						<li>您当前的位置:</li>
						<li><a href="">首页</a>></li>
						<li>优惠券</li>
					</ul>
				</div>
				<div id="mod_table">
					<div class="mod_table">
						<div class="mod_title">优惠券</div>
						<div class="mod_table_main">
							<s:form name="f2">
								<div class="select_zjls" style="height:80px;">
									<p class="select_zjls_p1">
										编号 :  <input id="userinfo_uid_coupon" type="text" name="userinfo_uid_coupon"      value="<%=uid%>">
										昵称 :  <input id="userinfo_nickname_coupon" type="text" name="userinfo_nickname_coupon" value="<%=nickname%>">
										手机号: <input id="userinfo_phone_coupon" type="text" name="userinfo_phone_coupon"   value="<%=phone%>">
										真实姓名 : <input id="userinfo_name_coupon" type="text" name="userinfo_name_coupon"   value="<%=name%>">
										<br /><br />
										身份证号 : <input id="userinfo_idcard_coupon" type="text" name="userinfo_idcard_coupon" value="<%=idcard%>">
									</p>
									<p class="select_zjls_p2" style="display: block;margin: 0 auto;float: initial;padding-top: 38px;">
										<br />
										<input type="button" value="查  询" onclick="rootKfCouponSelect();">
										<input type="button" value="重  置" onclick="chongzhi();">
									</p>
								</div>
								<br /><br />
								<table>
									<tr>
										<th style="width:10%;">编号</th>
										<th style="width:15%;">昵称</th>
										<th style="width:15%">手机号码</th>
										<th style="width:15%;">真实姓名</th>
										<th style="width:20%;">身份证号</th>
										<th style="width:12%;">操作</th>
									</tr>
								</table>
								<table id="kfCouponListJson">
    							</table>
    							
    								<div>
    									<input type="button" value="发送" name="aa" 
    									class="title4" onclick="couponOnclick()">
    								
    								</div>
							         <div class="pagination Pagination1">
										   <input type="hidden"  id="kfCouponMaxPage"      name="kfCouponMaxPage" />
										   <input type="hidden"  id="kfCouponUserLength"   name="kfCouponUserLength" />
										   <input type="hidden"  id="kfCouponAreaPage"     name="kfCouponAreaPage"    value='<%=areaPage%>'/>
										   <input type="hidden"  id="kfCouponTotalPage"    name="kfCouponTotalPage"   value='<%=totalPage %>' />
										   <input type="hidden"  id="kfCouponCurrentPage"  name="kfCouponCurrentPage" value='<%=kfCouponCurrentPage%>'/>
										   <input type="hidden"  id="kfCouponPageSize"     name="kfCouponPageSize"    value="10"/>
										   <a href="javascript:;" onclick="rootKfCouponUpPage()">上一页</a>
										   <a href="javascript:;" onclick="rootKfCouponDownPage()">下一页</a>
							   		 </div>
							   		 <!--<s:if test="records_list.size!=0">-->
							    <!--</s:if>-->
							</s:form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script src="js/houtai.js"></script>
	<script type="text/javascript">
   function chongzhi(){
	   document.getElementById('userinfo_uid_coupon').value="";
	   document.getElementById('userinfo_nickname_coupon').value="";
	   document.getElementById('userinfo_phone_coupon').value="";
	   document.getElementById('userinfo_name_coupon').value="";
	   document.getElementById('userinfo_idcard_coupon').value="";
	   document.getElementById('userinfo_zye_coupon').value="";
   }
	   </script>
</body>
</html>

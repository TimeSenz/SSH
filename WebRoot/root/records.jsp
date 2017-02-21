<%@page import="java.sql.Timestamp"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="action.RootactAction"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Integer currentPage=(Integer)request.getAttribute("currentPage");
Integer areaPage=(Integer)request.getAttribute("areaPage");
Integer totalPage=(Integer)request.getAttribute("totalPage");
%>
<%
				//贾凡获取前台Text框值方法
	        	RootactAction root = new RootactAction();
	       	    HttpServletRequest request123 = ServletActionContext.getRequest();
	       	    String lx = request123.getParameter("zjlsLx");
	       	    String xgr = request123.getParameter("zjlsXgr");
	         	String qsrq = request123.getParameter("zjlsQsrq");
	        	String jsrq = request123.getParameter("zjlsJsrq");
	        	//获取30天前日期
	    		SimpleDateFormat dft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");		
	    		Calendar date = Calendar.getInstance();		
	    		date.set(Calendar.DATE, date.get(Calendar.DATE) - 30);
	    		//获取当前日期
	    		Timestamp nowtime = new Timestamp(System.currentTimeMillis());
	    		if(lx==null||lx==""||lx.equals("")){
	       			lx = "全部";
	    		}
	    		if(xgr==null){
	    			xgr = "";
	    		}
	    		if(qsrq==null){
	    			qsrq = dft.format(date.getTime());
	    		}
	    		if(jsrq==null){
	    			jsrq = dft.format(nowtime);
	    		}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>root 资金流水</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <script src="js/jquery-1.6.4.min.js"></script>
  
   <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script src="js/rootAjax.js"></script>
	<link type="text/css" rel="stylesheet" href="css/hDate.css">
	<script type="text/javascript" src="js/hDate.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
  $(function(){
	  $("#Timer1").click(function (e) {
	    var ths = this;
	    calendar.show({
	      id: this, ok: function () {
	       
	      }
	    });
	  });
	  
	  $("#Timer2").click(function (e) {
		    var ths = this;
		    calendar.show({
		      id: this, ok: function () {
		       
		      }
		    });
		  });

	    })
</script>

  </head>
  
  <body  onload="showTime();rootZjlsInit()">
  <div class="wrap">
  <div class="nav">
      <div class="logo">
        <a href=""></a>
      </div>
      <ul class="ul">
        <li class="cur"><a href="/ZhongCaiBao/rootact/records.action?currentPage=1">资金流水</a></li>
        <li><a href="/ZhongCaiBao/rootact/rootAct.action?currentPage=1">放款批准</a></li>
        <li><a href="/ZhongCaiBao/finance/findAll.action">用户管理</a></li>

      </ul>
      <p class="p"><a href="/ZhongCaiBao/root/choiceLogin.jsp">退出</a></p>
  </div>
  <div class="main">
    <div class="aside">
      <div class="aside_top">
        <input type="text" placeholder="搜索">
        <dl>
          <dt></dt>
          <dd><p><s:property value="#session.rootinfo.name"/><span><a>欢迎您</a></span></p>
          <p><span>新消息(<i>0</i>)</span><span>日报(<i>0</i>)</span></p></dd>
        </dl>
      </div>
      <div class="aside_main">
        <ul>
          <li class="cur"><strong class="icon7"><span>资金流水</span></strong></li>
          
        </ul>
      </div>
    </div>
    <div class="article">
      <div class="article_top">
        <div id="time" class="p"></div>
        <ul>
          <li>您当前的位置:</li>
          <li><a href="">首页</a>></li>
          <li>资金流水</li>
        </ul>
      </div>
      <div class="mod_table">
        <div class="mod_title">
          用户列表
        </div>
        <div class="mod_table_main">
        	<s:form action="/rootact/records_finance.action?currentPage=1" name="select_zjls" method="post">
	        <div class="select_zjls">
	        
	        <p class="select_zjls_p1">
		       	类型 : <select name="zjlsLx" id="lx">
		       			<option value="<%=lx%>">===<%=lx%>===</option>
		       			<option value="全部">全部</option>
						<option value="为账户充值">为账户充值</option>
						<option value="买标">买标</option>
						<option value="提现">提现</option>
						<option value="提现手续费">提现手续费</option>
						<option value="放款到借款人账户">放款到借款人账户</option>
						<option value="借款人还款">借款人还款</option>
						
						<option value="购买U计划">购买U计划</option>
						<option value="公司为U计划补钱">公司为U计划补钱</option>
						<option value="U计划为用户买标">U计划为用户买标</option>
				</select>
				相关人 : <input id="xgr" type="text" name="zjlsXgr" value="<%=xgr%>">
				起始日期 : <input  type="text" name="zjlsQsrq" id="Timer1" autocomplete="off" value="<%=qsrq%>">  
				结束日期 : <input type="text" name="zjlsJsrq" id="Timer2" onClick="calendar.show({ id: this })" value="<%=jsrq%>">
				<p class="select_zjls_p2">
				 <input type="button" value="查  询" onclick="rootZjlsSelect();">
				 <input type="button" value="重  置" onclick="chongzhi();">
			</p> 
				</p>
				<!-- <p class="select_zjls_p2">
				 <input type="submit" value="查  询" >
				 <input type="button" value="重  置" onclick="chongzhi();">
			</p> -->
				</div>
			
<table id="table_test">
 <tr>
  <th style="width:45px;">ID</th> 
  <th style="width: 100px;"> 相关人</th>
   <th style="width: 200px;">转入账户</th>
  <th style="width: 200px;"> 转出账户</th> 
   <th style="width: 130px;">类型</th> 
   <th style="width: 130px;">金额</th> 
   <th style="width: 130px;">支付方式</th> 
   <th style="width: 180px;">时间</th>
   <th style="width: 100px;">备注</th> 
    </tr>
    <s:if test="records_list.size==0">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:if>
     <s:elseif test="%{#records_list==''}">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:elseif>
  <!-- 
 <s:iterator value="records_list" var="vo">
   <tr>
  <td> <s:property value="#vo.re.recid"/></td> 
  <td> <s:property value="#vo.re.type"/></td> 
   <td><s:property value="#vo.re.intoinfo"/></td>
  <td> <s:property value="#vo.re.outinfo"/></td> 
   <td><s:property value="#vo.re.money"/></td> 
   <td> <s:property value="#vo.re.paytype"/></td> 
   <td><s:date name="#vo.re.time" format="MM/dd/yy" /></td>
  <td> <s:property value="#vo.nickname"/></td> 
  <td> <s:property value="#vo.re.people"/></td> 
   <td><s:property value="#vo.re.remark"/></td> 
    </tr>
      
   </s:iterator>
    -->
   </table>
    <table id="listJson">
	    
    </table>
    
   
   <s:if test="records_list.size!=0">
         <div class="pagination Pagination1">
   <!-- <a href="/ZhongCaiBao/rootact/selectRecordsXls.action?jsType=<%=lx %>&jsPeople=<%=xgr %>&startTime=<%=qsrq %>&endTime=<%=jsrq %>" >Excel导出</a> -->
  
   <!--  <a  href="javascript:;" onclick="rootZjlsExl();">Excel导出</a>-->
   <a  href="Excel/RecordsXls.xls">【Excel导出】</a>
   <input type="hidden"  id="maxPage" name="maxPage" />
   <input type="hidden"  id="userLength" name="userLength" />
   <input type="hidden"  id="areaPage" name="areaPage" value='<%=areaPage%>'/>
   <input type="hidden" id="totalPage" name="totalPage" value='<%=totalPage %>' />
   <input type="hidden"  id="currentPage" name="currentPage" value='<%=currentPage%>'/>
   <input  id="pageSize"  type="hidden" value="10"/>
   <a href="javascript:;" onclick="rootZjlsUpPage()">上一页</a>
    <a href="javascript:;" onclick="rootZjlsDownPage()">下一页</a>
    </div>
    </s:if>
      
   
   </s:form>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="js/houtai.js"></script>
	<script>
   function chongzhi(){
	   document.getElementById('lx').value="全部";
	   document.getElementById('xgr').value="";
	   document.getElementById('Timer1').value="";
	   document.getElementById('Timer2').value="";
   }
	   </script>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag="0";
if(loginflag!=null){
    loginflag=(String)session.getAttribute("loginflag");
}
Integer totalPage=(Integer)request.getAttribute("totalPage");
Integer areaPage=(Integer)request.getAttribute("areaPage");
Integer currentPage=(Integer)request.getAttribute("currentPage");
%>

<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>安全保障</title>
    <meta name="keywords" content="众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资">
    <meta name="description" content="众财宝(www.zhongcaibao.net)是一家从事P2P信贷、资产管理、项目投资、经贸咨询、技术推广、企业管理咨询、房地产信息咨询的专业机构，为中小企业提供融资新渠道，更为个人提供创新型投资理财服务。">
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <link type="text/css" rel="stylesheet" href="../css/new_guidelines.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script type="text/javascript" language="javascript" src="../js/png.js"></script>
    <!--[if IE 6]>
    <script src="js/png.js" type="text/javascript"></script>
    <script type="text/javascript">
       EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span,.state h3'); 
    </script>
    <![endif]-->
    <script src="../js/jquery-1.6.4.min.js"></script>
  </head>
    
  <body>
    <div class="pg-container">
    <!--头部-->
      <%@include file="../pub/pub_top.jsp" %>
    <!--头部end-->
    <!--banner开始-->
		<div class="new-banner">
		<a href="/ZhongCaiBao/home/home.action?home=introduce">立即观看三分钟理财动画</a>
	    </div>
    
    <!--banner结束-->
    <!--main开始-->
    <div class="main_box main_bg">

	   
        <div class="content_bg" style="padding-top: 0px;">
        	<div class="w1000">
               <div class="cooperate_main">
                  <div class="cooperate_main_one">
                  <h3><span></span>众财宝互联网金融服务（深圳）有限公司</h3>
                  <img src="../images/title_underline.png">
                  <div class="one_top">
                      <dl>
                        <dt class="q"></dt>
                        <dd>正在为<span>18</span>个项目担保</dd>
                        <dd><h2><span>109,600,000.00</span>元</h2></dd>
                      </dl>
                      <dl>
                        <dt class="w"></dt>
                        <dd>正在为18个项目担保</dd>
                        <dd><h2><span>2,300,000.00</span>元</h2></dd>
                      </dl>
                      <dl>
                        <dt class="e"></dt>
                        <dd>在存风险保障金</dd>
                        <dd><h2><span>965,700.00</span>元</h2></dd>
                      </dl>
                      <dl style="margin-right:0">
                        <dt class="r"></dt>
                        <dd>代偿项目<span>0</span>个</dd>
                        <dd><h2><span>0</span>元</h2></dd>
                      </dl>
                  </div>
                  <h2>基本信息</h2>
                  <img src="../images/title_underline.png">
                  <div class="one_center">
                    <table>
                        <tbody><tr>
                          <th><span>注册资金</span></th>
                          <th><span>开始合作日期</span></th>
                          <th><span>公司成立日期</span></th>
                          <th><span>联系电话</span></th>
                          <th><span>公司官网</span></th>
                          <th style="width:180px;"><span>公司地址</span></th>
                        </tr>
                      <tr>
                      <td><span>3千万</span></td>
                      <td><span>2014-05-01</span></td>
                      <td><span>2009-01-01</span></td>
                      <td><span>010-13345678</span></td>
                      <td><span>www.zt9898.com</span></td>
                      <td><span style="width:180px;line-height:20px;white-space: inherit;height:40px;">北京市东三环南路甲52号顺迈金钻商务中心群楼1、2、3、9层</span></td>
                    </tr> 
                    </tbody></table>
                  </div>
                  <h2>公司简介</h2>
                  <img src="../images/title_underline.png">
                    <p>中投国汇（北京）投资基金管理集团有限公司（简称“中投国汇集团”），是以资本为主要联结纽带的大型投资基金管理集团。
经过十余年的磨砺与蜕变，中投国汇集团不断完善发展战略，优化资产结构，构建资本运营与实业经营互动的业务框架，投资领域涉及能源、新农业、医疗产业、生物医药、现代化制造、房地产、酒店以及高新技术产业。业务涵盖：资产管理、理财规划、私募股权、上市融资、资本运营、国际贸易、文化、艺术交流等行业。
中投国汇集团秉持“诚信务实、锐意进取、开拓创新、追求卓越”的经营理念，合理拓展企业多元化业务，不断构建新的商业模式，使集团取得高效、持久、创新性地发展，力争成为客户推崇、员工热爱、具备核心竞争力的多元化集团公司，最终实现中投国汇集团高起点、高格局、共同发展的目标。
                    </p><div class="scroll" id="scrollbox" onmousemove="MoveDiv(event);" onmouseout="MoveOutDiv();">
                    <div id="scrollcon" style="width:100%;">
                      <table>
                        <tbody>
                          <tr>
                            <td valign="top">             
                              <table width="100%">
                                <tbody><tr>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                </tr>
                              </tbody></table>
                            </td>
                            <td><div id="scrollcopy" style="width:100%;">
                      <table>
                        <tbody>
                          <tr>
                            <td valign="top">             
                              <table width="100%">
                                <tbody><tr>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                  <td><dl><dt><img width="173" height="125" alt="企业法人营业执照" src="../images/cooperate1.png"></dt><dd><span>蜂巢金融</span></dd></dl></td>
                                </tr>
                              </tbody></table>
                            </td>
                            <td><div id="scrollcopy" style="width:100%;"></div></td>
                          </tr>
                        </tbody>
                      </table>
                    </div></td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <h2>全部项目</h2>
                  <img src="../images/title_underline.png">
            <s:form  name="f2">
               <input type="hidden"  id="currentPage" name="currentPage" value='<%=currentPage%>'/>
               <input type="hidden"  id="areaPage" name="areaPage" value='<%=areaPage%>'/>
               <input type="hidden" id="totalPage" name="totalPage" value='<%=totalPage %>' />
               <table>
                   <s:iterator value="guacomlist" var="vo">

                  <div class="tite" id="js_water_box">
        


                <div class="tite_main">
                      <div class="tite_left">

                        <ul>

                          <li><b class="danbao"></b><strong><s:property value="#vo.reason"/></strong><span><img src="../images/fa.png" alt="法律援助基金" title="法律援助基金"><img src="../images/xian.png" alt="风险互助基金" title="风险互助基金"><img src="../images/jin.png" alt="百分百风险本金" title="百分百风险本金"><img src="../images/benjin.png" alt="担保公司保障本息收益" title="担保公司保障本息收益"></span></li>
                          <li>
                            <ol>
                             <li>金额：<em><s:property value="#vo.bid_money"/></em>元</li>
                              <li>期限：<em><s:property value="#vo.bid_deadline"/></em>个月</li>
                              <li>收益率：<em><s:property value="#vo.bid_profit"/></em>%</li>
                              <li>信用等级：<em><s:property value="#vo.user_remark" /></em>级</li>
                            </ol>
                          </li>
                        </ul>
                      </div>
                      <div class="tite_right">
                            <span class="ui-list-field fleft w110">
                                              <strong class="ui-progressbar-mid ui-progressbar-mid-100">
                                                  <div class="outer">
                                                      <div class="water_container js_container">
                                                            <img src="../images/wave_bac.png" width="55" height="55">
                                                        </div>
                                                        <div class="wave_cont">
                                                            <img src="../images/wave.gif" class="js_water_pic" style="bottom: -55px;">
                                                        </div>
                                                    <em class="js_rate"><s:property value="#vo.bid_rate"/></em><span class="pos">%</span>
                                                    </div>
                                                </strong>
                                            </span>
                         
                           <a href="<%=path%>/bidinfo/findById.action?id=${vo.id}" class="provide1">立即预定</a>
                      </div>
                  </div>
                  </s:iterator>
                    </table>
         
         
         
         
             <a href="javascript:alastPage()" >上一页</a>
           <%
         if(totalPage.intValue()<=5){
          for(int i=1;i<=totalPage.intValue();i++){
            if(i==currentPage.intValue()){
           %>
            <a href="javascript:findByPage('<%=i%>')" class="clicktrue" ><%=i%></a>
          <%
          }else{
          %>
            <a href="javascript:findByPage('<%=i%>')" class="click" ><%=i%></a>
          <% 
          }
         }
         }
          else{ if(areaPage.intValue()*5<=totalPage.intValue()){
            for(int i= (areaPage.intValue()-1)*5+1;i<=areaPage.intValue()*5;i++){
              if(i==currentPage.intValue()){
               %>
                <a href="javascript:findByPage('<%=i%>')" class="clicktrue" ><%=i%></a>
              <%
              }else{
              %>
                <a href="javascript:findByPage('<%=i%>')" class="click" ><%=i%></a>
              <% 
              }
            }
          }
               else {
                 for(int i= (areaPage.intValue()-1)*5+1;i<=totalPage.intValue();i++){
                   if(i==currentPage.intValue()){
              %>
            <a href="javascript:findByPage('<%=i%>')" class="clicktrue" ><%=i%></a>
          <%
             }else{
             %>
            <a href="javascript:findByPage('<%=i%>')" class="click" ><%=i%></a>
          <% 
             }
            }
          }
          }
       %>
    <a href="javascript:anextPage()">下一页</a>
    </div>
      <script type="text/javascript">
      function anextPage(){
        if(parseInt( document.getElementById("currentPage").value)<parseInt( document.getElementById("totalPage").value)){
              document.getElementById("currentPage").value= parseInt(document.getElementById("currentPage").value)+1;  
              if(parseInt(document.getElementById("currentPage").value)>parseInt(document.getElementById("areaPage").value*5)){
                document.getElementById("areaPage").value=parseInt(document.getElementById("areaPage").value)+1;
              }
             f2.submit();
          }
            else if(parseInt( document.getElementById("currentPage").value)==parseInt( document.getElementById("totalPage").value)){
              alert("当前已经是最后一页");
            }
          }
         
      
         function findByPage(pp){
           document.getElementById("currentPage").value=pp;
             f2.submit();
         }
         
         
         
          function alastPage(){
            if(parseInt( document.getElementById("currentPage").value)>1){
                  document.getElementById("currentPage").value= parseInt(document.getElementById("currentPage").value)-1;  
                  if(parseInt(document.getElementById("currentPage").value)<(parseInt(document.getElementById("areaPage").value-1)*5)+1){
                    document.getElementById("areaPage").value=   parseInt(document.getElementById("areaPage").value)-1;
                  }
                 f2.submit();
              }
                else if(parseInt( document.getElementById("currentPage").value)==1){
                  alert("当前已经是第一页");
                }
         }
        
      </script>
  </s:form>  


  


  
             
            </div>

                  </div>
       
                  </div>

              </div>
        </div>
    </div>
    <!--main结束-->
    <!--footer start-->
        <%@include file="../pub/pub_footer.jsp" %> 
    <!--footer end-->
    </div>
  
  </body>
    <script>
    	$(function(){
    		$(".ban_bg .ban_show").click(function(){
    			$(".ban_bg").animate({height:"700px"});
    			$(".fla").show(); 
    			$(this).hide();
    			$(this).siblings('.ban_show-top').show();
    		});
    		$(".ban_bg .ban_show-top").click(function(){
    			
    			$(".ban_bg").animate({height:"30px"});
    			
    			$(this).hide();
    			$(this).siblings('.ban_show').show();
    			$(".fla").hide(); 
    		})
    		
    	})
    </script>
    <script type="text/javascript" src="../js/cooperate.js"></script>
    <script type="text/javascript">
 document.getElementById("scrollcopy").innerHTML = document.getElementById("scrollcon").innerHTML;
 MyMar=setInterval(Marquee,speed);
</script>
</html>
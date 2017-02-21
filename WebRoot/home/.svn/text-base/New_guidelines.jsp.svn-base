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

%>

<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新手指引</title>
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
	    <div class="black">	
	    	
	    		<ul class="black_bj">
	    			
	    			<li><a href="/ZhongCaiBao/home/home.action?home=New"   class="cur">新手指引</a></li><li><a href="/ZhongCaiBao/home/home.action?home=insurance" >安全保障</a></li><!-- <li><a href="/ZhongCaiBao/home/home.action?home=agency">合作机构</a></li> -->
	    		</ul>
	    	
	    </div>
        <div class="content_bg">
        	<div class="newbie-white h520">
			   <div class="main">
			    <div class="pg-guide-item">
			     <h4 class="h4bg-orange"><span>我们是众财宝！</span></h4>
			     <div>
			     <div class="fn-clear clearfix ">
			      <div class="grid fl">
			       <p class="pl_40 pt_60" id="guide">众财宝(www.zhongcaibao.net)是国内领先的专业诚信共赢的互联网金融服务平台，是一个以个人对个人小额借贷为主要产品，为借贷两端搭建的公平、透明、安全、高效的互联网金融服务平台。借款用户可以在众财宝平台上获得信用评级、发布借款请求来实现个人快捷的融资需要；理财用户可以把自己的部分闲余资金通过众财宝平台出借给信用良好有资金需求的个人，在获得有保障，高收益的理财回报的同时帮助了优质的借款人。 </p>
			      </div>
			      <div class="fr">
			       <img width="455" height="392" src="../images/New1.png" />
			      </div>
			     </div>
			     </div>
			    </div>
			   </div>
			  </div> 
			  <div class="newbie-ash h640">
			   <div class="main">
			    <div class="pg-guide-item">
			     <h4 class="h4bg-yellow"><span>投资就选众财宝！</span></h4>
			     <div>
			     <div class="fn-clear" style="margin-top: 130px;">
			      <div class="fl pl_40">
			       <img width="424" height="200" src="../images/New2.png" />
			      </div>
			      <div class="fr pl_60">
			       <dl class="pt_40">
			        <dt>
			         7%-18%的高收益
			        </dt>
			        <dd>
			         成为理财人后，通过投资计划，最高获得7%-18%的预期年化收益。
			        </dd>
			        <dt>
			         理财&quot;零&quot;门槛
			        </dt>
			        <dd>
			         只要您是18岁以上中国公民，最低50元就可以在众财宝进行理财。
			        </dd>
			       </dl>
			      </div>
			     </div>
			     </div>
			     <div class="fn-clear clearfix " style="margin-top: 20px;">
			      <div class="grid fl pl_40">
			       <dl class="pt_40">
			        <dt>
			         100%本金保障计划
			        </dt>
			        <dd>
			         所有理财用户的每笔出借资金均在众财宝的本金保障计划覆盖之内，一旦出现逾期坏账，众财宝通过风险备用金优先垫付，保证理财人的资金和收益安全。
			        </dd>
			        <dt>
			         资金灵活周转
			        </dt>
			        <dd>
			         不用担心较长的资金锁定期，您可以进行债权转让，快速收回资金。
			        </dd>
			       </dl>
			      </div>
			      <div class="fr pl_10">
			       <img width="477" height="222" src="../images/New3.png" class="mt_30" />
			      </div>
			     </div>
			    </div>
			   </div>
			  </div>
			  
			  <div class="newbie-white h480">
				   <div class="main">
				    <div class="pg-guide-item">
				     <h4 class="h4bg-orange"><span>理财，就是如此简单！</span></h4>
				     <div>
				     <div class="fn-clear clearfix">
				      <div class="grid_5 fl">
				       <div class="pl_40 ">
				        <dl class="pt_60">
				         <dt>
				          简单3步，完成理财投资
				         </dt>
				         <dd>
				          <p>第一步 完成注册成为理财人</p>
				          <p>第二步 账户充值</p>
				          <p>第三步 进行投标</p>
				          <p>三步走完，轻松赚取收益</p>
				         </dd>
				        </dl>
				        <a href="/ZhongCaiBao/home/home.action?home=lenders" class="about-icon-btn ml_30 fl" target="_blank">我要去理财</a>
				       </div>
				      </div>
				      <div class="fr">
				       <img alt="简单3步，完成理财投资" width="536" height="349" src="../images/New4.png" class="mt_40" />
				      </div>
				     </div>
				     </div>
				    </div>
				   </div>
				  </div>
				   <div class="newbie-ash h400">
					   <div class="main">
					    <div class="pg-guide-item">
					     <h4 class="h4bg-yellow"><span>投资产品介绍！</span></h4>
					     <div>
					     <div class="fn-clear">
					      <div class="grid_6 grid_3 fl pl_40" style="margin-right: 50px;">
					       <dl class="pt_40">
					        <dt>
					         投资散标
					        </dt>
					        <dd>
					         平台提供信用认证标、机构担保标、实地认证标等多类产品，用户可以根据借款人信用等级、利率、期限等信息，自选合适的借款标的，构建符合个人意愿的投资组合。
					        </dd>
					       </dl>
					       <a href="/ZhongCaiBao/bidinfouser/findAllBidinfo.action?currentPage=1" class="about-icon-btn ml_30 fl" target="_blank">我要体验</a>
					      </div>
					      <div class="grid_6 grid_3 fl pl_40" >
					       <dl class="pt_40">
					        <dt>
					         精选理财
					        </dt>
					        <dd>
					      通过整合借款期限相近，借款利率相似的数个优质借款人，形成每一期众财宝精选理财计划，为理财人提供高收益、低风险的全新理财投资体验。
					        </dd>
					       </dl>
					       <a href="/ZhongCaiBao/bidinfo/showAllFinance.action" class="about-icon-btn ml_30 fl" target="_blank">我要体验</a>
					      </div>
					      <div class="grid_6 grid_3 fr" style="float:right;margin-right:0">
					       <dl class="pt_40">
					        <dt>
					         债权转让
					        </dt>
					        <dd>
					         通过众财宝债权转让平台，用户可以自行转让资产组合中符合条件的债权，也可以购买其他用户转让的债权，从而获得折让收益及借款标的后续收益。
					        </dd>
					       </dl>
					       <a href="javaScript:;" class="about-icon-btn ml_30 fl" target="_blank">我要体验</a>
					      </div>
					     </div>
					     </div>
					    </div>
					   </div>
					  </div>
					  <div class="newbie-white h700">
						   <div class="main">
						    <div class="pg-guide-item">
						     <h4 class="h4bg-orange"><span>借款找众财宝</span></h4>
						     <div>
						     <div class="fn-clear">
						      <div class="fl pl_40 pt_40">
						       <img width="362" height="179" src="../images/New5.png" />
						      </div>
						      <div class="grid_6 fr pl_60" style="float:right;">
						       <dl class="pt_40">
						        <dt>
						         无须任何抵押、担保，低门槛，纯信用借款
						        </dt>
						        <dd>
						         众财宝为借款人提供纯信用借款，无须任何抵押或担保，只需要提供必要申请材料并通过审核，即可获得最高50万的借款额度。
						        </dd>
						        <dt>
						         用户自主选择产品
						        </dt>
						        <dd>
						         众财宝面向各类借款用户，设计了汇车贷、汇房贷、汇信贷三种产品，用户可以根据自身情况选择适合的借款产品。
						        </dd>
						       </dl>
						      </div>
						     </div>
						     </div>
						     <div class="fn-clear clearfix" style="margin:0;">
						      <div class="grid_6 fl pl_40">
						       <dl class="pt_40">
						        <dt>
						         全程在线操作，最便捷的借款方式
						        </dt>
						        <dd>
						         无需出门，提交材料、审核、放款全程互联网操作，键盘加鼠标轻松搞定，7*24的互联网金融服务。
						        </dd>
						        <dt>
						         最安全的平台保障
						        </dt>
						        <dd>
						         我们采用业界最先进的加密技术，对您的注册信息、账户信息进行加密处理，众财宝绝不会以任何形式将这些信息透露给第三方。
						        </dd>
						       </dl>
						      </div>
						      <div class="fr pl_10">
						       <img width="445" height="280" src="../images/New6.png" class="mt_30" />
						      </div>
						     </div>
						    </div>
						   </div>
						  </div>
						  <div class="newbie-ash h480" >
						   <div class="main">
						    <div class="pg-guide-item">
						     <h4 class="h4bg-yellow"><span>轻松借款，只需4步</span></h4>
						     <div>
						     <div class="fn-clear clearfix">
						      <div class="grid_6 fl">
						       <div class="pl_40 ">
						        <dl class="pt_60">
						         <dt>
						          简单4步，完成借款
						         </dt>
						         <dd>
						          <p>第一步 注册成为众财宝用户，完成身份认证</p>
						          <p>第二步 选择借款产品发起申请</p>
						          <p>第三步 上传必要申请材料</p>
						          <p>第四步 通过审核后开始筹标</p>
						          <p>满标后，借款完成立刻放款，之后您只需每月还款即可</p>
						         </dd>
						        </dl>
						        <a class="about-icon-btn ml_30 fl" href="/ZhongCaiBao/home/home.action?home=borrowed" target="_blank">我要去借款</a>
						       </div>
						      </div>
						      <div class="fr pt_40">
						       <img width="406" height="289" class="mt_40" src="../images/New7.png" />
						      </div>
						     </div>
						     </div>
						    </div>
						   </div>
						  </div>
						 <div class="newbie-white" style="height: 360px;">
						   <div class="main">
						    <div class="pg-guide-item">
						     <h4 class="h4bg-orange"><span>借款产品介绍</span></h4>
						     <div>
						     <div class="fn-clear">
						      <div class="grid_6" style="width: 330px;">
						       <div class="fl pl_40 pt_60">
						        <img src="../images/New8.png" />
						       </div>
						       <div class="fl pl_20">
						        <dl class="pt_40">
						         <dt>
						          汇车贷
						         </dt>
						         <dd>
						          期限：先息后本，1-12个月
						         </dd>
						         <dd>
						          额度：5-60万
						         </dd>
						        </dl>
						       </div>
						      </div>
						      <div class="grid_6" style="width: 330px;">
						       <div class="fl pl_40 pt_60">
						        <img src="../images/New9.png" />
						       </div>
						       <div class="fl pl_20">
						        <dl class="pt_40">
						         <dt>
						          汇房贷
						         </dt>
						         <dd>
						          期限：先息后本，1-12个月
						         </dd>
						         <dd>
						          额度：10-100万
						         </dd>
						        </dl>
						       </div>
						      </div>
						      <div class="grid_6" style="width: 330px;">
						       <div class="fl pl_40 pt_60">
						        <img src="../images/New10.png" />
						       </div>
						       <div class="fl pl_20">
						        <dl class="pt_40">
						         <dt>
						          汇信贷
						         </dt>
						         <dd>
						          期限：等额本金，6-12个月
						         </dd>
						         <dd>
						          额度：5-20万
						         </dd>
						        </dl>
						       </div>
						      </div>
						     </div>
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
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
	<title>风险备用金账户"的使用规则</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <style type="text/css">
    .pg-webservice-content{ padding:40px 80px;background:#fff;color:#555;}
.pg-webservice-content h1{font-size:35px;font-weight:500;color:#555;height:50px;text-align:center;}
.pg-webservice-content h2{margin-bottom:20px;font-size:22px;}
.pg-webservice-content .mt_20{margin-top: 20px;}
.pg-webservice-content .mb_20{margin-bottom: 20px;}
    </style>
    <script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="js/pub.js"></script>
    <script type="text/javascript" language="javascript" src="../js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
  </head>
  
  <body>
	<div class="pg-container">
<!--头部--><%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main开始-->
		<div class="main_box">
	    	<div class="w1000 pg-webservice-content">
				<h1>什么是本金保障计划</h1>
<p class="mt_20 mb_20">“本金保障计划”是中投国汇（北京）资产管理有限公司众财宝平台（下称“众财宝”）为保护平台全体理财人的共同权益而建立的信用风险共担机制。除另有说明外，平台的所有理财人经过平台身份认证后，在平台的投资行为均适用于“本金保障计划”，理财人无需为此支付任何费用。</p>
<p class="mt_20 mb_20">“本金保障计划”是指在平台发生的适用本金保障计划的每笔借款（下称“受保障借款”，是否适用以平台明示为准）成交时，提取一定比例的金额放入“风险备用金账户”。当理财人投资的某笔受保障借款出现严重逾期时（即逾期超过30天），众财宝将根据“风险备用金账户使用规则”通过“风险备用金”向理财人偿付此笔借款的剩余出借本金或剩余出借本金和逾期当期利息（具体情况视投资标的类型的具体偿付规则为准）。“本金保障计划”为理财人提供了有效的风险共担机制，分散了理财人投资行为所带来的信用风险，营造了一个安全健康的投资环境，保障了理财人的权益。</p>
<div>
<h2>风险备用金账户规则</h2>
<p class="mt_20 mb_20">“风险备用金账户”是指众财宝为所服务的所有理财人的共同利益考虑，以众财宝名义单独开设并由专业机构进行资金托管的一个专款专用账户，服务于平台资金出借人的本金保障计划。</p>
<h2 class="mt_20 mb_20">1.1. “风险备用金账户”资金来源</h2>
<p class="mt_20 mb_20">“风险备用金账户”资金当前全部来源于众财宝向每笔受保障借款的借款人或合作机构（具体以众财宝签署的相关法律文件约定为准）所收取的服务费，众财宝在收取该等服务费的同时，将在收取的该等服务费中按照贷款产品类型及借款人的信用等级等信息计提风险备用金。计提的风险备用金将存放入“风险备用金账户”进行专户管理。各产品类型及信用等级等所对应的风险备用金的计提标准和方式由众财宝制定并解释，众财宝有权根据实际业务需要对相关内容进行调整，如作修改，众财宝将及时进行披露。</p>
<h2 class="mt_20 mb_20">1.2. “风险备用金账户”资金用途</h2>
<p class="mt_20 mb_20">“风险备用金账户”资金将专门用于在一定限额内补偿众财宝所服务的受保障借款的理财人（债权人）在借款人（债务人）逾期还款超过30日时剩余未还本金或剩余未还本金和逾期当期利息（具体偿付金额以所投资的产品类型的偿付规则为准），即当借款人（债务人）逾期还款超过30日时，众财宝将按照“风险备用金账户资金使用规则”从该账户中提取相应资金用于偿付理财人（债权人）在该笔受保障借款项下剩余未还本金或剩余未还本金和逾期当期利息金额（以下统一简称“逾期应收赔付金额”）。</p>
<h2 class="mt_20 mb_20">1.3. “风险备用金账户”资金使用规则</h2>
<p class="mt_20 mb_20"><strong>“风险备用金账户”资金使用遵循以下规则：</strong></p>
<p class="mt_20 mb_20">（1）违约偿付规则，即当受保障借款的借款人（债务人）逾期还款超过30日时，方才从“风险备用金账户”资金中提取相应资金偿付理财人（债权人）逾期应收赔付金额。</p>
<p class="mt_20 mb_20">（2）时间顺序规则，即“风险备用金账户”资金对受保障借款的理财人（债权人）逾期应收赔付金额的偿付按照该债权逾期的时间顺序进行偿付分配。先偿付逾期在先的债权，后偿付逾期在后的债权。</p>
<p class="mt_20 mb_20">（3）债权比例规则，即“风险备用金账户”资金对同一受保障借款的《借款协议》项下不同理财人（债权人）逾期应收赔付金额的偿付按照各债权金额占同协议内发生的债权总额的比例进行偿付分配；当截至某日“风险备用金账户”资金当期余额不足以支付该日所有应享受“风险备用金账户”资金赔付的受保障借款的理财人所对应的逾期应收赔付金额总额时，则该等理财人按照各自对应的逾期应收赔付金额占当期所有理财人对应的逾期应收赔付金额总额的比例进行偿付分配。</p>
<p class="mt_20 mb_20">（4）有限偿付规则，即“风险备用金账户”资金对受保障借款的理财人（债权人）逾期应收赔付金额的偿付以该账户的资金总额为限。当该账户余额为零时，自动停止对理财人逾期应收赔付金额的偿付，直到该账户获得新的风险备用金。</p>
<p class="mt_20 mb_20">（5）收益转移规则，即当受保障借款的理财人享有了“风险备用金账户”对某笔受保障借款按照既定规则进行的偿付后，众财宝即取得对应债权；该债权对应的借款人其后为该笔受保障借款所偿还的全部本金、利息及罚息归属“风险备用金账户”；如该笔受保障借款有抵押、质押或其他担保的，则众财宝处置抵押质押物或行使其他担保权利的所得等也归属“风险备用金账户”。</p>
<p class="mt_20 mb_20">（6）金额上限规则，即当“风险备用金账户”内金额超过届时平台上发生的所有债权未清偿本金金额的10%时，众财宝有权将超出部分转出该账户并自行支配。</p>
</div>

            </div>
        </div>
    </div>
<!--main结束-->
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->

  </body>
</html>
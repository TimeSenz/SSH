<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
<head><base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <title>我要理财精选理财</title>
<link type="text/css" rel="stylesheet" href="css/apply.css">
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
<link rel="Shortcut Icon" href="../images/zcb-icon.ico">

<script src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="js/fund.js"></script>
<script type="text/javascript" language="javascript" src="js/png.js"></script>
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
    <div class="manage-main-container main_box">
        <div class="manage_main">
            <div class="ui-breadcrumb">
            
              <p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;<a>精选理财</a></p>
            </div>
            <div class="manage_nav">
                <ul>
                    <li class="cur"><a href="/ZhongCaiBao/bidinfo/showAllFinance.action">精选理财</a></li>
                    <li><a href="/ZhongCaiBao/bidinfouser/findAllBidinfo.action?currentPage=1">投资散标</a></li>
                </ul>
                <p><img src="images/icon_nav.png" alt="">温馨提示：近期工作日固定发标时间在11:00或13:30，其余时间与周末随机发标。</p>
            </div>
            <div class="manage-main">
                <div class="manage-main1">
                    <div class="manage_main_1">
                        <div class="one">
                            <div class="top">
                                <div class="left">
                                    <h3>精选理财计划<!-- <span>（<i>0069</i>）期</span> --></h3>
                                    <ul style="margin-right:30px;">
                                        <li><strong>计划金额：</strong><span style="font-size: 16px;font-weight: bold;">30,000,000</span>元</li>
                                        <li><strong>投标范围：</strong>实</li>
                                        <li><strong>计划状态：</strong>进行中</li>
                                        <li><strong>收益处理：</strong>
                                        <img src="images/icon3.png" alt="">1年期以下：到期还本付息<br>
                                        <img src="images/icon3.png" alt="">1年期以上：月返息/到期还本付息<br>
                                        <img src="images/icon3.png" alt="">提至众财宝账户<br>
                                        <img src="images/icon3.png" alt="">每月25日提至银行卡（提现费用★）</li>
                                    </ul>
                                    <ul class="ul1">
                                        <li><strong>预期收益：</strong><span>7%~18%</span></li>
                                        <li><strong>保障方式：</strong><span style="color: #28a7e1;">四重维度保障计划</span></li>
                                        <li><strong>投标结束：</strong>2015年08月16日</li>
                                        <li><strong>费率说明：</strong>加入费率 <span>免费</span><br>服务费率 <span>免费</span><br>退出费率 <span>免费</span></li>
                                    </ul>
                                </div>
                                <div class="right">
                                    <s:if test="%{#session.userinfo==null}">
                                        <div class="unLogin">
                                            <a href="/ZhongCaiBao/userinfo/user.action?user=login"></a><a href="/ZhongCaiBao/userinfo/user.action?user=register"></a>
                                        </div>
                                    </s:if>
                                    <s:else>
                                    <div class="right_main">
                                        <dl>
                                            <dt><img src="images/ren11.jpg" alt="头像"></dt>
                                            <dd>
                                                    <h2>下午好,<span class="ellipsis"> <s:property value="#session.userinfo.nickname"/></span></h2>
                                                    <p>
                                                        <span id="phone" style="display:none;"><s:property value="#session.userinfo.phone" /></span>
                                                        <span id="auth" style="display:none;float:left;"><a><img src="images/big_phone1.jpg" title="绑定手机，已绑定" /></a></span>
                                                        <span id="noauth" style="display:none;float:left;"><a href="/ZhongCaiBao/userinfo/personCenter.action"><img src="images/big_phone.jpg" title="绑定手机，未绑定" /></a></span>
                                                        <span id="identify" style="display:none;"><s:property value="#session.userinfo.name" /></span>
                                                        <span id="auth1" style="display:none;float:left;"><a><img src="images/big_ren1.jpg" title="实名认证，已设置" /></a></span>
                                                        <span id="noauth1" style="display:none;float:left;"><a href="/ZhongCaiBao/userinfo/personCenter.action"><img src="images/big_ren.jpg" title="实名认证，未设置" /></a></span>
                                                        <span id="txmm" style="display:none;"><s:property value="#session.userinfo.moneykey" /></span>
                                                        <span id="auth2" style="display:none;float:left;"><a><img src="images/anquan.jpg" title="提现密码，已设置" /></a></span>
                                                        <span id="noauth2" style="display:none;float:left;"><a href="/ZhongCaiBao/userinfo/personCenter.action"><img src="images/anquan1.jpg" title="提现密码，未设置" /></a></span>
                                                        <script type="text/javascript">
                                                            status("phone","auth","noauth");
                                                            status("identify","auth1","noauth1");
                                                            status1("txmm","auth2","noauth2");
                                                        </script>
                                                    </p>
                                            </dd>
                                            <dd><a href="/ZhongCaiBao/userinfo/personCenter.action?id=%{#session.userinfo.userid}" class="right_a">进入个人中心</a></dd>

                                        </dl>
                                        <div>                                            
                                            <p>账户余额<br><a href="/ZhongCaiBao/userinfo/user.action?user=recharge">充值</a><big style=""><s:property value="#session.userinfo.xjye"/></big>元 </p>                        
                                        </div>
                                    </div>                                    
                                    </s:else>
                                    <div class="right_main1">
                                        <ul>
                                        <li style="float:right">累计总人次：<span>1500</span>人</li>
                                            <li>累计总金额：<span>500,000</span>元</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="two">
                            <ul>
                               <li style="margin-right:12px;">
                                        <p  style="color:#2da7e0"><strong><s:property value="all_finance_list[0].reason"/></strong>期限<s:property value="all_finance_list[0].deadline"/>个月</p>
                                        <p><span class="two_input"><input type="text">元</span>剩余<strong><s:property value="all_finance_list[0].money"/></strong>元 </p>
                                        <p  class="two_a"><span><a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="all_finance_list[0].id"/>">立即购买</a></span>1万元起投，预期年化收益 <strong style="color: #eb6877;"><s:property value="all_finance_list[0].profit"/>%</strong></p>
                                </li>
                                <li>
                                    <p  style="color:#2da7e0"><strong>乐享三月</strong>期限3个月</p>
                                        <p><span class="two_input"><input type="text">元</span>剩余<strong>500,000</strong>元 </p>
                                        <p  class="two_a"><span><a href="">立即购买</a></span>1万元起投，预期年化收益 <strong style="color: #eb6877;">7%</strong></p>
                                </li>
                                <li style="margin-right:12px;">
                                    <p  style="color:#2da7e0"><strong>鎏金双季</strong>期限6个月</p>
                                        <p><span class="two_input"><input type="text">元</span>剩余<strong>500,000</strong>元 </p>
                                        <p class="two_a"> <span><a href="">立即购买</a></span>1万元起投，预期年化收益 <strong style="color: #eb6877;">7%</strong></p>
                                </li>
                                <li>
                                    <p  style="color:#2da7e0"><strong>国汇年丰</strong>期限12个月</p>
                                        <p><span class="two_input"><input type="text">元</span>剩余<strong>500,000</strong>元 </p>
                                        <p class="two_a"><span class="cur"><a href="">立即购买</a></span>1万元起投，预期年化收益 <strong style="color: #eb6877;">7%</strong></p>
                                </li>
                            </ul>
                        </div> -->
                        <div class="select_product">
                            <ul class="product">
                                <li class="no1 fleft">
                                    <ul class="desc">
                                        <li class="limit">1000元起投</li>
                                        <li class="deadline">期限<s:property value="all_finance_list[0].deadline"/>个月</li>
                                        <li class="intro">预期年化收益</li>
                                        <li class="profit"><s:property value="all_finance_list[0].profit"/>%</li>
                                    </ul>
                                    <a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="all_finance_list[0].id"/>">立即投资</a>
                                </li>
                                <li class="no2 fleft">
                                    <ul class="desc">
                                        <li class="limit">1000元起投</li>
                                        <li class="deadline">期限<s:property value="all_finance_list[1].deadline"/>个月</li>
                                        <li class="intro">预期年化收益</li>
                                        <li class="profit"><s:property value="all_finance_list[1].profit"/>%</li>
                                    </ul>
                                    <a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="all_finance_list[1].id"/>">立即投资</a>
                                </li>
                                <li class="no3 fleft">
                                    <ul class="desc">
                                        <li class="limit">1000元起投</li>
                                        <li class="deadline">期限<s:property value="all_finance_list[2].deadline"/>个月</li>
                                        <li class="intro">预期年化收益</li>
                                        <li class="profit"><s:property value="all_finance_list[2].profit"/>%</li>
                                    </ul>
                                    <a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="all_finance_list[2].id"/>">立即投资</a>
                                </li>
                                <li class="no4 fleft">
                                    <ul class="desc">
                                        <li class="limit">1000元起投</li>
                                        <li class="deadline">期限<s:property value="all_finance_list[3].deadline"/>个月</li>
                                        <li class="intro">预期年化收益</li>
                                        <li class="profit"><s:property value="all_finance_list[3].profit"/>%</li>
                                    </ul>
                                    <a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="all_finance_list[3].id"/>">立即投资</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="manage_main_2">
                        <dl>
                            <dd><h3>计划介绍</h3>
                                <p>精选理财计划是众财宝推出的便捷高效的自动投标工具。精选理财计划在用户认可的标的范围内，对符合要求的标的进行自动投标，且回款本金在相应期限内自动复投，期限结束后精选理财计划会通过众财宝债权转让平台进行转让退出。该计划所对应的标的均100%适用于众财宝本金保障计划并由系统实现标的分散投资。出借所获利息收益可选择每月复投或提取，更好的满足用户多样化的理财需求。<!-- <span><a href="">了解详情</a></span></p> -->
                            </dd>
                            <dt><img src="images/manage_img1.jpg" width="300px;"></dt>
                        </dl>
                    </div>
                    <div class="manage_main_3">
                            <h3>精选理财原理一览表</h3>
                            <img src="images/manage_img2.jpg">
                    </div>
                    <div class="manage_main_4">
                        <h3>常见问题</h3>
                        <ol>
                            <li><strong>1. 我加入精选理财计划10000元，预期收益率12%-14%，12个月后我大概能赚到多少钱？ </strong></li>
                            <li>精选理财计划的收益最终由您加入精选理财计划资金所投借款的利息决定。理想情况下，假设投资借款的年利率均为12%，且已全额支付，</li>
                            <li>在未发生任何逾期还款情况，那么您的预期投资收益大概为10000*（1+12%）=11200元。</li>
                        </ol>
                        <ol>
                            <li><strong>2. 精选理财计划安全吗？ </strong></li>
                            <li>精选理财计划所投借款100%适用众财宝四重维度保障计划。暨100%本金保障计划、风险金保障基金计划、法律援助基金计划及担保公司全程担保计划。
</li>
                        </ol>
                        <ol>
                            <li><strong>3. 我有10000元，该如何加入精选理财计划？ </strong></li>
                            <li>(1)预定加入</li>
                            <li>在预定加入期间，首先预定10000元精选理财计划，并全额支付，您即成功加入精选理财计划10000元。</li>
                            <li>(2)开放加入</li>
                            <li> 若预定加入期间该期精选理财计划未满额，则进入开放加入阶段，您可直接加入10000元进行投资。</li>
                            <li>注：您可以通过关注众财宝官方微信、微博获取理财计划发布信息。</li>
                        </ol>
                    </div>
                </div>

            </div>    
        </div>

    </div>
<!--main结束-->
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 

</div>
    <script src="js/jquery.pagination.js" type="text/javascript"></script>
        <script src="js/members.js" type="text/javascript"></script>
<script type="text/javascript">

            // This file demonstrates the different options of the pagination plugin
            // It also demonstrates how to use a JavaScript data structure to
            // generate the paginated content and how to display more than one
            // item per page with items_per_page.

            /**
             * Callback function that displays the content.
             *
             * Gets called every time the user clicks on a pagination link.
             *
             * @param {int}page_index New Page index
             * @param {jQuery} jq the container with the pagination links as a jQuery object
             */
            function pageselectCallback(page_index, jq){
                // Get number of elements per pagionation page from form
                var items_per_page = $('#items_per_page').val();
                var max_elem = Math.min((page_index+1) * items_per_page, members.length);
                var newcontent = '';

                // Iterate through a selection of the content and build an HTML string
                for(var i=page_index*items_per_page;i<max_elem;i++)
                {
                    newcontent += '<dt>' + members[i][0] + '</dt>';
                    newcontent += '<dd class="state">' + members[i][2] + '</dd>';
                    newcontent += '<dd class="party">' + members[i][3] + '</dd>';
                }

                // Replace old content with new content
                $('#Searchresult').html(newcontent);

                // Prevent click eventpropagation
                return false;
            }

            // The form contains fields for many pagiantion optiosn so you can
            // quickly see the resuluts of the different options.
            // This function creates an option object for the pagination function.
            // This will be be unnecessary in your application where you just set
            // the options once.
            function getOptionsFromForm(){
                var opt = {callback: pageselectCallback};
                // Collect options from the text fields - the fields are named like their option counterparts
                $("input:text").each(function(){
                    opt[this.name] = this.className.match(/numeric/) ? parseInt(this.value) : this.value;
                });
                // Avoid html injections in this demo
                var htmlspecialchars ={ "&":"&amp;", "<":"&lt;", ">":"&gt;", '"':"&quot;"}
                $.each(htmlspecialchars, function(k,v){
                    opt.prev_text = opt.prev_text.replace(k,v);
                    opt.next_text = opt.next_text.replace(k,v);
                })
                return opt;
            }

            // When document has loaded, initialize pagination and form
            $(document).ready(function(){
                // Create pagination element with options from form
                var optInit = getOptionsFromForm();
                $("#Pagination").pagination(members.length, optInit);

                // Event Handler for for button
                $("#setoptions").click(function(){
                    var opt = getOptionsFromForm();
                    // Re-create pagination content with new parameters
                    $("#Pagination").pagination(members.length, opt);
                });

            });

        </script>

<!--footer end-->
</body>
</html>

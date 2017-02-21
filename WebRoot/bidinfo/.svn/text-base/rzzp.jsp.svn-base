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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><head><style></style>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showBidList.jsp' starting page</title>
    <link type="text/css" rel="stylesheet" href="css/common.css">
            <link type="text/css" rel="stylesheet" href="css/apply.css">
    <link type="text/css" rel="stylesheet" href="css/manage.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">

	-->
    <style type="text/css">
    .deal_show {
    width:1000px;
    margin:20px auto 0px;
    clear:both;
}
.capital{   
    font-size:16px;
    height:80px;
    }
.deal_show table{
    text-align:center;}
.deal_show tr.deal_list{
    height:70px;
    }
.deal_show td{
    font-size:14px;}
</style>
  <script src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" language="javascript" src="js/png.js"></script>
<script type="text/javascript">

 function nextBtn(){
            var ccpage = document.getElementsByName("currentPage")[0].value;
            document.getElementsByName("currentPage")[0].value=parseInt(ccpage)+1;
          
           document.forms[0].submit();
       }
       
       function lastBtn(){
       
           var ccpage =  document.getElementsByName("currentPage")[0].value;
            document.getElementsByName("currentPage")[0].value=parseInt(ccpage)-1;
        
           document.forms[0].submit();
       }
       function goToPage(){
       
           document.getElementsByName("currentPage")[0].value =  document.getElementById("assginedPage").value;
         
          document.forms[0].submit();
          
       }
       
       function changePageSize(){
       
        document.forms[0].submit();
       }

       //二级菜单

    $(function(){
        $(".ui-nav>li").hover(function(){
            $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideDown();
        },function(){
            $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideUp();   
        });

        $(".manage_nav li").click(function(){
                var index=$(this).index();
                $(".manage-main>div").eq(index).show().siblings().hide();
                $(this).addClass('cur').siblings().removeClass('cur');
            })
        $(".manage-main2_1 ul li span").click(function(){
            $(this).addClass('cur').siblings().removeClass('cur');

        })
    })
</script>
  </head>
  
  <body>

<div class="pg-container">
<!--头部--><%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main开始-->
    <div class="manage-main-container">
        <div class="manage_main">
             <div class="ui-breadcrumb">
              <ul class="fn-clear">
                <li class="ui-breadcrumb-text-first">
                  <a href="/ZhongCaiBao">首页</a>
                </li>
                <li class="ui-breadcrumb-separator">〉</li>
                <li class="ui-breadcrumb-text">
                  <a>融资租赁</a>
                </li>
              </ul>
            </div>
            <div class="manage_nav">
                <ul>
                    <li><a href="/ZhongCaiBao/bidinfo/jxlc.jsp">精选理财</a></li>
                    <li><a href="/ZhongCaiBao/bidinfouser/modifyBidList.action?bidtype=unlimited&loan=unlimited&grade=unlimited">投资散标</a></li>
                    <li class="cur"><a href="/ZhongCaiBao/bidinfo/rzzp.jsp">融资租赁</a></li>
                    <li><a href="/ZhongCaiBao/bidinfo/zqzr.jsp">债权转让</a></li>
                </ul>
                <p><img src="images/icon_nav.png" alt="">温馨提示：近期工作日固定发标时间在11:00、13:30、17:00，其余时间与周末随机发标。</p>
            </div>
            <div class="manage-main">
                <div class="manage-main2">
                  <div class="manage-main2_1">
                  <form action="">

  
                        <ul>
                            <li><h3>融资租赁</h3></li>
                            <li><strong>标的类型: </strong>
                            <span class="cur"><input type="radio" name="bidtype" value="unlimited"  id="buxian" checked="checked" ><label style="cursor:pointer" for="buxian">不限</label></span>
                            <span><input type="radio" name="bidtype" value="1" " id="xinyong"><label style="cursor:pointer" for="xinyong">抵 &nbsp;&nbsp;押</label></span>
                            <span><input type="radio" name="bidtype" value="2" " id="shidi"><label style="cursor:pointer" for="shidi">信&nbsp;&nbsp;用</label></span>
                            <span><input type="radio" name="bidtype" value="3" " id="jigou"><label style="cursor:pointer" for="jigou">债权转让</label></span>
                            <span><input type="radio" name="bidtype" value="4" " id="zhineng"><label style="cursor:pointer" for="zhineng">融资租赁</label></span>
                            </li>
                            <li><strong>借款期限: </strong>
                            <span class="cur"><input type="radio" name="loan" value="unlimited" checked="checked" id="buxian1"><label style="cursor:pointer" for="buxian1">不限</label></span>
                            <span><input type="radio" name="loan" value="1" id="san"><label style="cursor:pointer" for="san">3-6个月</label></span>
                            <span><input type="radio" name="loan" value="2" id="jiu"><label style="cursor:pointer" for="jiu">9-15个月</label></span>
                            <span><input type="radio" name="loan" value="3" id="shiba"><label style="cursor:pointer" for="shiba">18-24个月</label></span>
                            <span><input type="radio" name="loan" value="24" id="ersi"><label style="cursor:pointer" for="ersi">24个月以上</label></span>
                                
                            </li>
                            <li><strong>认证等级: </strong>
                            <span  class="cur"><input type="radio" name="grade" value="unlimited" checked="checked" id="buxian2"><label style="cursor:pointer" for="buxian2">不限</label></span>
                            <span><input type="radio" name="grade" value="AA"id="AA"><label style="cursor:pointer" for="AA">AA</label></span>
                            <span><input type="radio" name="grade" value="A"id="A"><label style="cursor:pointer" for="A">A</label></span>
                            <span><input type="radio" name="grade" value="B"id="B"><label style="cursor:pointer" for="B">B</label></span>
                            <span><input type="radio" name="grade" value="C"id="C"><label style="cursor:pointer" for="C">C</label></span>
                            <span><input type="radio" name="grade" value="D"id="D"><label style="cursor:pointer" for="D">D</label></span>
                            <span><input type="radio" name="grade" value="E"id="E"><label style="cursor:pointer" for="E">E</label></span>
                            <span><input type="radio" name="grade" value="HR" id="HR"><label style="cursor:pointer" for="HR">HR</label></span>
                            </li>
                        </ul>
                        <ol>
                            <li><h3>产品优势 :</h3></li>
                            <li><strong>自由交易</strong>可转让亦可认购</li>
                            <li><strong>资金安全</strong>规避流动性风险</li>
                            <li><strong>市场利率</strong>折价溢价自由定价</li>
                            <li><strong>期限灵活</strong>选择多样按需投资</li>
                        </ol>
                        
    <div align="right"><input type="submit" id="" value="投资" class="right">
</div>

 
                  </form></div>


                  <div class="manage-main2_2 fn_clear" style="padding-bottom:70px;">
                    <div class="list">
                         <ul>
                            <li><strong>累计成交总金额</strong><strong>  <i>34.91</i>亿元</strong></li>
                            <li><strong>累计成交总笔数</strong><strong><i>34.91</i>笔</strong></li>
                            <li style="border-right:none"><strong>为用户累计赚取</strong><strong><i>34.91</i>万元</strong></li>
                        </ul>
                        <h3>融资列表</h3>
                    </div>

  
<div class="deal_show">
                <table border="0" cellspacing="0" class="manage-main2_3" id="js_water_box">
                    <tr>
                      <th style="width:260px;text-align:center;">借款标题</th>
                      <th style="width:80px;">信用等级</th>
                      <th style="width:160px">年利率</th>
                      <th style="width:100px">金额</th>
                      <th style="width:100px">期限</th>
                      <th style="width:110px">进度</th>
                      <th style="width:80px"></th>
                    </tr>
                    <tr class="deal_list">
                      <td>改善经营环境</td>
                      <td><span class="ui-creditlevel AA">AA</span></td>
                      <td>15.0%</td>
                      <td>50000</td>
                      <td>12个月</td>
                        <td style="width:110px;text-align:center">
                          <span class="ui-list-field fleft w110">
                              <strong class="ui-progressbar-mid ui-progressbar-mid-100">
                                  <div class="outer">
                                      <div class="water_container js_container">
                                            <img src="images/wave_bac.png" width="37" height="37" />
                                        </div>
                                        <div class="wave_cont">
                                            <img src="images/wave.gif" class="js_water_pic" />
                                        </div>
                                    <em class="js_rate">50</em><span class="pos">%</span>
                                    </div>
                                </strong>
                            </span></td>
                      <td><a href=""><img src="images/provide1.png" /></a></td>
                    </tr>
                    <tr class="deal_list">
                      <td>短期资金周转</td>
                      <td><span class="ui-creditlevel AA">AA</span></td>
                      <td>8.0%</td>
                      <td>20000</td>
                      <td>3个月</td>
                      <td style="width:110px;text-align:center">
                          <span class="ui-list-field fleft w110">
                              <strong class="ui-progressbar-mid ui-progressbar-mid-100">
                                  <div class="outer">
                                      <div class="water_container js_container">
                                            <img src="images/wave_bac.png" width="37" height="37" />
                                        </div>
                                        <div class="wave_cont">
                                            <img src="images/wave.gif" class="js_water_pic" />
                                        </div>
                                    <em class="js_rate">50</em><span class="pos">%</span>
                                    </div>
                                </strong>
                            </span></td>
                      <td><a href=""><img src="images/provide2.png" /></a></td>
                    </tr>
                    <tr class="deal_list">
                      <td>经营周转</td>
                      <td><span class="ui-creditlevel AA">AA</span></td>
                      <td>10.0%</td>
                      <td>20000</td>
                      <td>12个月</td>
                      <td style="width:110px;text-align:center">
                          <span class="ui-list-field fleft w110">
                              <strong class="ui-progressbar-mid ui-progressbar-mid-100">
                                  <div class="outer">
                                      <div class="water_container js_container">
                                            <img src="images/wave_bac.png" width="37" height="37" />
                                        </div>
                                        <div class="wave_cont">
                                            <img src="images/wave.gif" class="js_water_pic" />
                                        </div>
                                    <em class="js_rate">50</em><span class="pos">%</span>
                                    </div>
                                </strong>
                            </span></td>
                      <td><a href=""><img src="images/provide3.png" /></a></td>
                    </tr>
                    <tr class="deal_list">
                      <td>经营性贷款</td>
                      <td><span class="ui-creditlevel AA">AA</span></td>
                      <td>11.0%</td>
                      <td>50000</td>
                      <td>12个月</td>
                      <td style="width:110px;text-align:center">
                          <span class="ui-list-field fleft w110">
                              <strong class="ui-progressbar-mid ui-progressbar-mid-100">
                                  <div class="outer">
                                      <div class="water_container js_container">
                                            <img src="images/wave_bac.png" width="37" height="37" />
                                        </div>
                                        <div class="wave_cont">
                                            <img src="images/wave.gif" class="js_water_pic" />
                                        </div>
                                    <em class="js_rate">50</em><span class="pos">%</span>
                                    </div>
                                </strong>
                            </span></td>
                      <td><a href=""><img src="images/provide1.png" /></a></td>
                    </tr>
                    <tr class="deal_list">
                      <td>进货</td>
                      <td><span class="ui-creditlevel AA">AA</span></td>
                      <td>10.0%</td>
                      <td>50000</td>
                      <td>6个月</td>
                      <td style="width:110px;text-align:center">
                          <span class="ui-list-field fleft w110">
                              <strong class="ui-progressbar-mid ui-progressbar-mid-100">
                                  <div class="outer">
                                      <div class="water_container js_container">
                                            <img src="images/wave_bac.png" width="37" height="37" />
                                        </div>
                                        <div class="wave_cont">
                                            <img src="images/wave.gif" class="js_water_pic" />
                                        </div>
                                    <em class="js_rate">10</em><span class="pos">%</span>
                                    </div>
                                </strong>
                            </span></td>
                      <td><a href=""><img src="images/provide1.png" /></a></td>
                    </tr>
                    <tr class="deal_list">
                      <td>短期经营周转</td>
                      <td><span class="ui-creditlevel AA">AA</span></td>
                      <td>8.0%</td>
                      <td>20000</td>
                      <td>3个月</td>
                      <td style="width:110px;text-align:center">
                          <span class="ui-list-field fleft w110">
                              <strong class="ui-progressbar-mid ui-progressbar-mid-100">
                                  <div class="outer">
                                      <div class="water_container js_container">
                                            <img src="images/wave_bac.png" width="37" height="37" />
                                        </div>
                                        <div class="wave_cont">
                                            <img src="images/wave.gif" class="js_water_pic" />
                                        </div>
                                    <em class="js_rate">90</em><span class="pos">%</span>
                                    </div>
                                </strong>
                            </span></td>
                      <td><a href=""><img src="images/provide1.png" /></a></td>
                    </tr>
                </table>
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


<script>
  function getClass(obj,sClass){
    if(obj.getElementsByClassName){
      return obj.getElementsByClassName(sClass);
    }
    var arr=[];
    var re=new RegExp('\\b'+sClass+'\\b');
    var all=obj.getElementsByTagName('*');
    for(var i=0;i<all.length;i++){
      if(re.test(all[i].className)){
      arr.push(all[i]);
      }
    }
    return arr;
    }
  var oParent=document.getElementById('js_water_box');
  //var oCont=getClass(oParent,'js_container');
  var oWater=getClass(oParent,'js_water_pic');
  var parsent=getClass(oParent,'js_rate');
  //alert(parsent[0].innerHTML);
  for(var i=0;i<oWater.length;i++){
    //alert(-(37*parseInt(parsent[i].innerHTML)));
    oWater[i].style.bottom=-(37*(1-parsent[i].innerHTML/100))+'px';
    }
</script>

  

</body></html>
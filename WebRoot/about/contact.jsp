<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag=(String)session.getAttribute("loginflag");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>联系我们</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link type="text/css" rel="stylesheet" href="css/about.css">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script src="js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
    <style type="text/css">
   .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
  </head>
  
  <body>
<div class="pg-container">
<!--头部-->
	<%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main开始-->
	<div class="main_box">
    	<div class="w1000">
        	<!--顶部标题-->
        	<p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;<a href="/ZhongCaiBao/about/about.action?flag=com">关于我们</a>&nbsp;&gt;&nbsp;联系我们</p>
            <div class="con fn_clear">
                <!--左侧Tab-->
                <div class="tab_btn_con fleft">
                    <a href="/ZhongCaiBao/about/about.action?flag=com" class="rrd-dimgray btn">公司简介</a>
                    <a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="rrd-dimgray btn">还款公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="rrd-dimgray btn">新闻公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="rrd-dimgray btn">最新动态</a>
                    <a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="rrd-dimgray btn">媒体报道</a>                               
                    <a href="/ZhongCaiBao/about/about.action?flag=cooperate" class="rrd-dimgray btn">合作伙伴</a>                              
                    <a href="/ZhongCaiBao/home/home.action?home=questions" class="rrd-dimgray btn">帮助中心</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=recruit" class="rrd-dimgray btn">招贤纳士</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=contact" class="rrd-dimgray btn cur">联系我们</a>              
                </div>
                <!--右侧 内容-->
                <div class="right_con fleft">
                	<div class="right_nr" id="contact">
                    	<span>联系我们</span><p class="line"></p>                        
                        <p class="contact">服务热线： 400-007-1378<br>官方微信： zhongtongguohui<br>官方微博： http://weibo.com/zhongtouguohui<br>官方网址： www.zhongcaibao.net<br>公司地址：北京市朝阳区西大望路甲3号蓝堡国际中心1座28层<br>分公司电话：024-31313623</p>
                        <div class="map" id="dituContent"></div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--main结束-->
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->

  </body>
  <script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
if(document.getElementById("contact").style.display="block"){
    
    //创建地图函数：
    function createMap(){		
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(116.484061,39.917603);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
}

    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
  //标注点数组
    var markerArr = [{title:"蓝堡国际中心1座",content:"蜂巢互联网金融服务（深圳）有限公司",point:"116.483944|39.917907",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
</html>

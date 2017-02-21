<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>ueditor测试、展示</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/ueditor-1.4.3/editor_config.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ueditor-1.4.3/editor_all.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ueditor-1.4.3/uparse.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ueditor-1.4.3/_examples/editor_api.js"></script>
		<style type="text/css">
			.clear {
				clear: both;
			}
		</style>
	</head>
	<body>
		<div class="wrap">
    <div class="nav">
      <div class="logo">
        <a href=""></a>
      </div>
      <ul class="ul">
        <li class="cur"><a href="javaScript:;">预览新闻</a></li>
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
        	  <li><strong class="icon11"><span><a href="/ZhongCaiBao/newsinfo/findAllByDong.action?currentPage=1">新闻动态</a></span></strong></li>
	          <li><strong class="icon11"><span><a href="/ZhongCaiBao/newsinfo/findAllByGong.action?currentPage=1">新闻公告</a></span></strong></li>
	          <li><strong class="icon11"><span><a href="/ZhongCaiBao/newsinfo/findAllByHuan.action?currentPage=1">还款公告</a></span></strong></li>
	          <li><strong class="icon11"><span><a href="/ZhongCaiBao/newsinfo/findAllByMei.action?currentPage=1">媒体报道</a></span></strong></li>
	          <li><strong class="icon11"><span><a href="/ZhongCaiBao/root/showCoupon.jsp">优惠券</a></span></strong></li>
              <li><strong class="icon11"><span><a href="/ZhongCaiBao/sms/findAll.action?currentPage=1">短信模版</a></span></strong></li>
   	         <li><strong class="icon11"><span><a href="/ZhongCaiBao/userinfo/findAll.action?currentPage=1">发送短信</a></span></strong></li>
            </ul>
          </div>
      </div>
    <div class="article">
            <div class="article_top">
              <div id="time" class="p"></div>
              <ul>
                <li>您当前的位置:</li>
                <li><a href="">首页</a>></li>
                <li>新增新闻</li>
              </ul>
            </div>
            <div id="mod_table">
            <div class="mod_table">
                <div class="mod_title">
                  新增新闻
                </div>
                <div class="mod_table_main">

                    <s:form action="/newsinfo/addNewsinfo.action">
                          <input type="hidden" id="contents" name="contents"  />
                        <input type="hidden" id="cusinfo" name="cusinfo" value="<s:property value="#session.cusinfo.name"/>"/>
                           <ul  class="mod_table_main_ul">
                           <li><strong>标题：</strong><input type="text" name="newsinfo.title"  autocomplete="off"></span></li>
                           
                           <li><strong>时间：</strong><input type="text" name="newsinfo.time" id="Text2" autocomplete="off"></span></li>
                           <li><strong>备注：</strong><input type="text" name="newsinfo.remark"  autocomplete="off"></span></li>
                           <li><strong>类型：</strong><select name="newsinfo.type" id="" style="width:160px"><option value="动">新闻动态</option><option value="公">新闻公告</option><option value="还">还款公告</option><option value="媒">媒体报道</option></select></li>
                           <li><strong>录入人：</strong><s:property value="#session.cusinfo.name"/></span></li>
                           <li><strong>内容：</strong>
                          <script id="container" name="content" type="text/plain">
                                  请填写
                          </script>
                           </li>
                           <li><p style="margin-left:30px;"><input type="submit" name="submit"   onclick="aa()" class="btn" value="确认" id="reg-btn"></p></li>

                           </ul>
                        </s:form>
                </div>  
     
            </div>
      </div>
</div>

   
<!--     <s:form action="/newsinfo/addNewsinfo.action">
  <input type="hidden" id="contents" name="contents"  />
<input type="hidden" id="cusinfo" name="cusinfo" value="<s:property value="#session.cusinfo.name"/>"/>
   <ul>
   <li><strong>标题：</strong><input type="text" name="newsinfo.title"  autocomplete="off"></span></li>
   <li><strong>内容：
  加载编辑器的容器
  <script id="container" name="content" type="text/plain">
          请填写
  </script>
   </li>
   <li><strong>时间：</strong><input type="text" name="newsinfo.time"  autocomplete="off"></span></li>
   <li><strong>备注：</strong><input type="text" name="newsinfo.remark"  autocomplete="off"></span></li>
   <li><strong>类型：</strong><input type="text" name="newsinfo.type"  autocomplete="off"></span></li>
   **动：新闻动态
     公：新闻公告
   <li><strong>录入人：</strong><s:property value="#session.cusinfo.name"/></span></li>
   <li><p style="margin-left:30px;"><input type="submit" name="submit"   onclick="aa()" class="btn" value="确认" id="reg-btn"></p></li>
   </ul>
</s:form>  -->
    <!-- 配置文件 -->
    <script type="text/javascript"  src="${pageContext.request.contextPath }/ueditor-1.4.3/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath }/ueditor-1.4.3/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
    var ue = UE.getEditor('container');
    function aa(){  
    	  var editor = new UE.Editor();
          editor.execCommand('blod');
    	  var uee = UE.getEditor('container');
          //对编辑器的操作最好在编辑器ready之后再做
          uee.ready(function(){
          //获取内容
          var txt = uee.getContent();
          document.getElementById("contents").value=txt;
      })
    }
    </script>
  <script src="js/houtai.js"></script>
	</body>
	
</html>

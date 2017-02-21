<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- //微信弹窗开始-->
      <div class="wx_code" style="display:none;">
        <a class="close">          
        </a>
        <div class="code"></div>
        <p>微信“发现”扫一扫，众财宝里动态全知道！</p>
      </div> 
      <div class="wx_code1" style="display:none;">
        <a class="close">          
        </a>
        <div class="code"></div>
        <p>微信“发现”扫一扫，众财宝里动态全知道！</p>
      </div>
<!--//微信弹窗结束-->
<div class="ui-footer" id="footer">
	<div class="footer_container">
    <!--友情链接-->
    	<div class="ui-footer-section fn_clear">
        	<h4 class="friend-text">友情链接</h4>
            <ul class="ui-footer-links fn_clear w850">
                <li class="fn_left"><a class="gray" href="http://www.wangdaizhijia.com/" target="_blank">网贷之家</a></li>
                <li class="fn_left"><a class="gray" href="http://www.p2peye.com/" target="_blank">网贷天眼</a></li>
            	<li class="fn_left"><a class="gray" href="http://www.cjdao.com/index.jsp" target="_blank">财经道</a></li>
                <li class="fn_left"><a class="gray" href="http://www.rong360.com/licai/" target="_blank">融360理财</a></li>
                <li class="fn_left"><a class="gray" href="http://bj.58.com/danbaobaoxiantouzi/" target="_blank">58投资担保</a></li>
            </ul>
        </div>
        <!--公司介绍&客户服务-->
        <div class="ui-footer-section fn_clear">
        	<div class="ui-footer-links w700 grid">
                <ul class="fn_clear">
                    <li class="fn_left"><a class="gray" href="/ZhongCaiBao/about/about.action?flag=com">公司简介</a></li>
                    <li class="fn_left"><a class="gray" href="/ZhongCaiBao/home/home.action?home=insurance">安全保障</a></li>
                   <!--  <li class="fn_left"><a class="gray" href="/ZhongCaiBao/about/about.action?flag=group">集团简介</a></li> -->
                    <li class="fn_left"><a class="gray" href="/ZhongCaiBao/home/home.action?home=questions">帮助中心</a></li>
                    <li class="fn_left"><a class="gray" href="/ZhongCaiBao/about/about.action?flag=contact">联系我们</a></li>
                </ul>
                <ul class="fn_clear icons" id="wx_con">
                    <li class="fn_left"><h4 class="guest">客户服务</h4></li>
                    <li class="fn_left contact1"><a class="wb" target="_blank" href="http://weibo.com/zhongtouguohui"></a></li>
                    <li class="fn_left contact2"><a class="wx" id="wx" href="javascript:;"></a></li>                                      
                    <li class="fn_left contact3"><a class="online" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=954430024&amp;site=qq&amp;menu=yes"></a></li>
                </ul>
              </div>
              <div class="service grid">
              	<p>客服电话</p>
                <h4 class="ui-footer-phone">400-007-1378</h4>
                <p>9:00-18:00</p>
              </div>
        </div>
        <!--版权信息&信誉资质-->
        <div class="ui-footer-section last">
        	<div class="ui-footer-copyright">
            	<span class="ui-footer-contact">&copy; 2015 众财宝 All rights reserved</span>
                <span class="ui-footer-contact has-separator">中投国汇（北京）资产管理有限公司</span>
                <span class="ui-footer-contact has-separator">京ICP备 13038534号</span>
            </div>
        </div>
        <!-- 信誉网站说明 -->
        <div class="ui-footer-verification fn_clear">
          <a class="ui-footer-verification-item fn_left kx" title="众财宝已通过中网权威数据库对比，获得“可信网站”身份验证，您可放心使用。" href="" target="_blank"></a> 
          <a class="ui-footer-verification-item fn_left credibility" title="" href=""></a>          
          <a class="ui-footer-verification-item fn_left accuse" title="" href="http://www.12321.cn/" target="_blank"></a>
          <a class="ui-footer-verification-item fn_left police" title="众财宝已经完成在公安机关的信息备案，您可了解网站相关备案信息。" href="http://www.bj.cyberpolice.cn/" target="_blank"></a>
          <a class="ui-footer-verification-item fn_left qyxy" title="" href="http://qyxy.baic.gov.cn/simple/dealSimpleAction!transport_ww.dhtml" target="_blank"></a>
        </div>
    </div>
</div>
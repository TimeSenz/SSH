<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>

<meta http-equiv="content-type" content="text/html;" charset="utf-8"/>
<link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<title>精选理财计划服务协议书</title>
<style type="text/css">
html,body{ margin:0; padding:0; font-family: "宋体"; font-size:12px; }
.clearfix::after { height: 0px; clear: both; display: block; visibility: hidden; content: ""; }
.clearfix { zoom: 1; }
.xywarp{ width:960px; margin:0 auto;}
.xywarp .info{ font-weight:bold; background:#edf7fd; line-height:1.5; padding:10px 40px; font-size:14px;}
.xywarp .info img{ text-align:right;}
.info p{ text-indent:30px;}
.xywarp .xycon{ border-color: #dfe6ea; border-style: solid; border-width: 0 1px;}
#content p { line-height: 18px; }
span.underline{text-decoration: underline;}
</style>
<script type="text/javascript" src="../js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="../js/download.js"></script>
</head>
<body>
<div class="xywarp">
    <div class="xyhead">
        <div class="info clearfix">
            <div style="margin-right:10px;margin-bottom:30px;text-align: right;">
            <!--   <img style="cursor:pointer;" src="../images/xydownload.jpg" onclick="downloadPdf()"/> -->
            </div>
            <div class="tit">尊敬的客户：</div>
            <P>
                中投国汇（北京）资产管理有限公司（以下称"众财宝"）"精选理财计划服务"（以下称"精选理财计划"）仅面向众财宝的新老注册用户。精选理财计划旨在为众财宝的新老注册用户提供效率更高、退出更加灵活的服务，以便更好地提高出借人的资金使用效率。
            </P>
        </div>
    </div>
    <div class="xycon">
        <div id="content" style="padding: 5px 12px; font-size:12px">
            <br><br>
            <p align="center">
                <strong><s:property value="bidinfo.reason"/>服务协议书</strong>
            </p>
            <p style="width=98%;text-align:right"> 协议编号：____________</p>
<p>甲方：<span class="underline"><s:property value="#session.userinfo.name"/></span></p>
<p>身份证件号码：<span class="underline"><s:property value="#session.userinfo.idcard"/></span></p>
<p>联系电话：<span class="underline"><s:property value="#session.userinfo.phone"/></span></p>
<p>众财宝昵称：<span class="underline"><s:property value="#session.userinfo.nickname"/></span></p>


            <br>
            <p>乙方：中投国汇（北京）资产管理有限公司</p>
            <p>住所：北京市东三环南路甲52号顺迈金钻商务中心群楼1、2、3、9层</p>
            <p>邮编：100020 </p>
            <p>咨询电话：400-007-1378</p>
            <br>
            <p>
                <strong>甲乙双方经友好协商，本着平等自愿、诚实信用的原则，达成如下协议：</strong>
            </p>
            <br>
            <p style="margin-left:21pt; font-size:14px; ">
                <strong>1、精选理财计划服务意向</strong>
            </p>
            <p style="margin-left:30pt;">
                1.1 乙方作为一家在北京市合法成立并有效存续的有限公司，拥有www.zhongcaibao.net 网站（下称“众财宝网站”或“众财宝平台“）的经营权，主要通过众财宝平台为互联网环境下自然人之间的借贷交易提供信息中介和居间撮合服务；乙方谨此推出"出借人优先自动投标及到期按相关规则自动退出"的精选理财计划服务（下称“精选理财计划”），为加入精选理财计划的出借人提供更加贴心、便捷的服务，并将尽最大努力维护出借人的合法利益。
            </p>
            <p style="margin-left:30pt;">
                1.2 甲方同意加入本期精选理财计划，并自愿遵守众财宝网站现有的相关协议及规则。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>2、甲方加入本期精选理财计划详情：</strong>
            </p>
            <p style="margin-left:30pt;">
                甲方同意按照如下条件通过众财宝平台加入乙方提供的本期精选理财计划，相关条件详情如下：
            </p>
             <s:iterator value="jkrlist" var="vo">
            <table border="1" style="margin: 0px auto; font-size:12px; border-collapse: collapse; border: 1px solid #000; width: 60%; ">
                <tbody>
                    <tr height="25px" >
                        <td width="40%" style="padding: 4px 10px; font-weight:bold; "> 名称 </td>
                        <td style="padding: 4px 10px; font-weight:bold; "><s:property value="#vo.bidname"/></td>
                    </tr>
                    <tr height="25px">
                        <td width="40%" style="padding: 4px 10px;">预期年化收益率</td>
                        <td style="padding: 4px 10px;"><s:property value="bidinfo.profit"/></td>
                    </tr>
                    <tr height="25px">
                        <td width="40%" style="padding: 4px 10px;">加入本金数额（下称”甲方加入资金”）</td>
                        <td style="padding: 4px 10px;"><s:property value="#vo.jmoney"/></td>
                    </tr>
                    <tr height="25px">
                        <td width="40%" style="padding: 4px 10px;">锁定期</td>
                        <td style="padding: 4px 10px;">7天</td>
                    </tr>
                    <tr height="25px">
                        <td width="40%" style="padding: 4px 10px;">投资范围</td>
                        <td style="padding: 4px 10px;">符合精选理财计划筛选范围的优质借款标的</td>
                    </tr>
                    <tr height="25px">
                        <td width="40%" style="padding: 4px 10px;">收益处理方式</td>
                        <td style="padding: 4px 10px;"><s:property value="#vo.repaytype"/></td>
                    </tr>
                    <tr height="25px">
                        <td width="40%" style="padding: 4px 10px;">锁定期开始日</td>
                        <td style="padding: 4px 10px;"><s:date name="#vo.creatTime" format="yyyy-MM-dd" /></td>
                    </tr>
                    <tr height="25px">
                        <td width="40%" style="padding: 4px 10px;">锁定期结束日</td>
                        <td style="padding: 4px 10px;"><s:date name="#vo.creatTime" format="yyyy-MM-"/><span id="startTime"><s:date name="#vo.creatTime" format="dd"/></span></td>
                         <script type="text/javascript">
                  var oStartTime=document.getElementById('startTime');
                  var val=oStartTime.innerHTML                  
                  var oDeadeline=parseInt(val)+7;
                  oStartTime.innerHTML=oDeadeline
                </script>
                    </tr>
                </tbody>
            </table>
            </s:iterator>
            <p style="margin-left:30pt;">
                <strong>甲方已经知悉、了解并同意：本协议所示预期收益率不代表甲方最终实际收益；本协议约定投资范围内的借款标的均适用于众财宝本金保障计划，甲方出借本金以及相应的利息存在不能够按期收回的风险；在实际收益率未达到预期收益率的情况下，甲方仅能收取其实际收益。乙方不对甲方本金的收回、可获收益金额作出任何承诺、保证。</strong>
            </p>
            <p style="margin-left:30pt;">
                甲方在申请期内支付完毕甲方加入资金的，即加入本期精选理财计划；甲方加入本期精选理财计划后，甲方即可通过系统在本协议项下甲方认可的投资范围内进行优先自动投标。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>3、本期精选理财计划基本要素：</strong>
            </p>
            <p style="margin-left:30pt;">
                3.1 名称：精选理财计划-A141229期。
            </p>
            <p style="margin-left:30pt;">
                3.2 优先自动投标范围：在众财宝平台上发布的借款需求，包括【机构担保标】【实地认证标】。在众财宝平台上债权转让市场转让的债权，包括【机构担保标】【实地认证标】。
            </p>
            <p style="margin-left:30pt;">
                3.3 加入金额要求：最低加入金额为人民币【1,000.00】元，并以人民币【1,000.00】整数倍递增，最高不超过人民币【500,000.00】元。
            </p>
            <p style="margin-left:30pt;">
                3.4 申请期：自2014年12月29日 至 2015年01月03日。申请期内，甲方可通过预定或直接加入的方式加入本期精选理财计划。具体的加入方式请参见众财宝网站精选理财计划现有申请、加入规则。
            </p>
            <p style="margin-left:30pt;">
                3.5 锁定期：自2015年01月03日至2015年04月03日。甲方加入本期精选理财计划后及锁定期内，甲方加入本期精选理财计划的资金不能提现；但甲方可以按照第本协议第6.2条、第6.3条的规定申请提前退出本期精选理财计划。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>4、授权</strong>
            </p>
            <p style="margin-left:30pt;">
                4.1 <strong>甲方在此无条件且不可撤销地同意并确认：</strong>自甲方加入本期精选理财计划起，甲方即可通过系统在本协议项下甲方认可的投资范围内进行优先自动投标，并通过众财宝网站系统以甲方名义自动签署相关借款协议、债权转让协议；甲方对此等自动投标和自动签署相关借款协议、债权转让协议之安排已充分知悉并理解；该等自动签署的借款协议、债权转让协议均视为甲方真实意思的表示，甲方对该等法律文件的效力均予以认可且无任何异议，并无条件接受该等自动签署的借款协议、债权转让协议之约束。
            </p>
            <p style="margin-left:30pt;">
                4.2 <strong>甲方在此无条件且不可撤销地同意并确认：</strong>甲方通过系统自动投标而签署之借款协议、债权转让协议等法律文件或其中的相关条款生效后，乙方即可根据该等协议和本协议相关约定，对相关款项进行划扣、支付、冻结以及行使其他权利，甲方对此均予以接受和认可。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>5、甲方收益处理及费用</strong>
            </p>
            <p style="margin-left:30pt;">
                5.1 利息收入处理：甲方加入资金通过自动优先投标出借或购买已有债权后，各笔借款每期偿还的利息在合并计提当期管理费用后的剩余部分将作为精选理财计划的可支配收益（下称“收益”）支付给甲方并根据甲方之选择进行处理；借款人每期偿还的本金则将继续由乙方提供自动投标服务，并适用本协议各项约定。（计提管理费用的详细计算过程参见注1）
            </p>
            <p style="margin-left:30pt;">
                5.2 收益处理方式：甲方在加入本期精选理财计划时，可自主选择如下两种收益处理方式中的一种；一旦确认，不得修改：
            </p>
            <p style="margin-left:40pt;">
                （1）提取至众财宝主账户：收益将提取至甲方众财宝主账户，甲方可自行支配。
            </p>
            <p style="margin-left:40pt;">
                （2）收益再投资：收益将继续由乙方提供自动投标服务，适用本协议各项约定。
            </p>
            <p style="margin-left:30pt;">
                5.3 精选理财计划费用种类：乙方收取的精选理财计划费用包括管理费用（称为“管理费用“）以及提前退出费用。
            </p>
            <p style="margin-left:30pt;">
                5.4 管理费用的计算和收取：
            </p>
            <p style="margin-left:40pt;">
                （1）就乙方依据本协议为甲方提供的自动投标服务，甲方应当向乙方支付管理费用。
            </p>
            <p style="margin-left:40pt;">
                （2）目标值：目标值仅为乙方收取管理费的基准和依据，不代表对甲方加入本期精选理财计划可以取得的收益的任何预测，也不是乙方对甲方加入本期精选理财计划可以取得的收益的任何保证、承诺。
            </p>
            <p style="margin-left:40pt;">
                甲方提前退出本期精选理财计划时，依据甲方在锁定期内实际加入本期精选理财计划的时间重新计算目标值。（目标值的具体计算办法见注2）
            </p>
            <p style="margin-left:40pt;">
                （3）当甲方到期退出或提前退出时，若甲方加入资金对应借款在甲方退出本期精选理财计划前产生的总利息（下称“甲方期间总利息”）小于或等于相应目标值，则乙方不向甲方收取管理费用；若甲方期间总利息大于相应目标值，则超过目标值的部分为乙方收取的管理费，在甲方到期退出或提前退出时予以扣除。
            </p>
            <p style="margin-left:30pt;">
                5.5 提前退出费用的计算和收取
            </p>
            <p style="margin-left:30pt;">
                提前退出费用按照本协议第6.2条规定计算，并在甲方提前退出精选理财计划时收取。
            </p>
            <p style="margin-left:30pt;">
                <strong>5.6 甲方对本协议项下收益处理方式以及乙方收取的管理费用和提前退出费用的标准、方式均已充分知晓并理解，对该等约定无任何异议，且在任何时候均不就该等约定向乙方提出任何主张或要求。</strong>
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>6、本期精选理财计划的退出</strong>
            </p>
            <p style="margin-left:30pt;">
                6.1 到期退出
            </p>
            <p style="margin-left:40pt;">
                锁定期届满日当日，甲方将不再享受优先自动投标服务并自动退出本期精选理财计划；届时甲方通过本期精选理财计划自动投标而产生之债权、资金，按照第6.3款规定进行处理。
            </p>
            <p style="margin-left:30pt;">
                6.2 提前退出
            </p>
            <p style="margin-left:40pt;">
                锁定期内，甲方可通过甲方的众财宝账户申请提前全额退出本期精选理财计划。在本期精选理财计划锁定期内，甲方仅可提出一次提前退出申请，且必须申请全额退出；同时，甲方的提前退出申请一旦提出，即不可撤销。
            </p>
            <p style="margin-left:40pt;">
                甲方申请提前退出的，应向乙方支付提前退出费用（上下文称“提前退出费用”）；提前退出费用金额=甲方加入资金金额×2%。
            </p>
            <p style="margin-left:40pt;">
                甲方提出提前退出申请且乙方确认后，众财宝网站系统将自动告知甲方提前退出申请受理成功，即视为甲方成功提前退出本期精选理财计划。自甲方提前退出申请且乙方确认之日（下称“提前退出日“），甲方即退出本期精选理财计划，甲方在本期精选理财计划项下通过系统自动投标而产生之债权、资金，按照本协议第6.3款规定进行处理。
            </p>
            <p style="margin-left:30pt;">
                6.3 退出方式
            </p>
            <p style="margin-left:30pt;">
                <strong>甲方在此无条件且不可撤销地同意并授权：甲方到期自动退出或提前退出本期精选理财计划时，授权乙方通过系统自动将甲方加入资金通过系统自动投标而产生之债权、资金按照如下方式处理：</strong>
            </p>
            <p style="margin-left:40pt;">
                （1） 如加入本期精选理财计划的相关金额通过系统自动出借或受让债权后对应债权本息尚未完全回款并处于正常还款状态，则系统将于甲方退出本期精选理财计划之时将该等债权通过众财宝平台的“债权转让市场”进行转让；<strong>该等债权最终转让完毕的时间以其在债权转让市场的实际交易情况确定，乙方并不对该等债权转让完成的时间做出任何承诺和保证； </strong>转让所得资金按照本协议第6.3条第（2）款规定处理；
            </p>
            <p style="margin-left:40pt;">
                （2） 对于甲方退出本期精选理财计划时甲方加入资金中尚未进行投标的部分，以及虽投标但是已收回的本息资金，均由系统在根据本协议第5条规定的标准扣除乙方收取的管理费用、提前退出费用（如有）后直接提取至甲方众财宝主账户，甲方可自行支配、使用；
            </p>
            <p style="margin-left:40pt;">
                （3） 如加入本期精选理财计划的资金出借或受让债权后对应债权本息尚未完全回款且处于逾期状态，则对于该等逾期的债权，暂不进行转让；在该等逾期债权的债务人对逾期欠款进行清偿且该等债权的状态处于正常还款后，按照本协议第6.3条（1）款规定进行转让；如果该等逾期债权根据众财宝平台的本金保障计划（<a href="/ZhongCaiBao/home/home.action?home=insurance" target="_blank">点击此处查询本金保障计划</a>）得到了偿付，所获偿付金额均按照本协议第6.3条（2）款规定提取至甲方众财宝主账户。
            </p>
            <p style="margin-left:30pt;">
                债权转让的定价规则请参见众财宝网站债权转让有关页面的具体规定。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>7、服务计划保障</strong>
            </p>
            <p style="margin-left:30pt;">
                7.1 为降低甲方因投资标的过于集中而所带来的信用违约风险，乙方将对甲方加入本次服务计划金额根据网站有关规则安排分散化的优先自动投标。
            </p>
            <p style="margin-left:30pt;">
                7.2 为保证本期精选理财计划的及时性，在甲方加入本期精选理财计划时，系统即为甲方加入本期精选理财计划的甲方加入资金启动优先自动投标的功能。
            </p>
            <p style="margin-left:30pt;">
                7.3 为增加投标的优先性， 系统将为甲方加入资金安排优先自动投标，保障甲方加入资金可以按照本协议约定规则通过众财宝网站系统优先进行自动投标。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>8、意外事件</strong>
            </p>
            <p style="margin-left:30pt;">
                如因司法机关或行政机关对甲方采取强制措施导致其本期精选理财计划金额对应的资金被全部或部分扣划，视为甲方提前退出本期精选理财计划，本协议自动终止。本协议因此而自动终止的，甲方将不再享有相应收益。但甲方仍应按照本协议第5.4及5.5条之规定向乙方支付管理费用及提前退出费用。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>9、税费</strong>
            </p>
            <p style="margin-left:30pt;">
                甲方应自行承担并缴付其因加入本期精选理财计划所获收益的应纳税额。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>10、甲方声明和保证</strong>
            </p>
           <p style="margin-left:30pt;">
                10.1 在签署本协议书以前，乙方已就本协议书及有关交易文件的全部条款和内容向甲方进行了详细的说明和解释，甲方已认真阅读本协议有关条款，对有关条款不存在任何疑问或异议，并对协议双方的权利、义务、责任与风险有清楚和准确的理解。
            </p>
            <p style="margin-left:30pt;">
                10.2 甲方保证所使用的资金为合法取得，且甲方对该等资金拥有完全且无瑕疵的处分权。
            </p>
            <p style="margin-left:30pt;">
                10.3 甲方保证为履行本协议而向乙方提供的全部资料均真实、有效。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                <strong>11、其他</strong>
            </p>
            <p style="margin-left:30pt;">
                11.1 甲方需要通过众财宝网站或客服人员、网站平台查询等方式了解相关信息。<strong>如未及时查询，或由于通讯故障、系统故障以及其他不可抗力等因素影响使甲方无法及时了解相关信息，由此产生的责任和风险由甲方自行承担。</strong>
            </p>
            <p style="margin-left:30pt;">
                11.2 本服务协议和甲方通过点击确认与乙方签署的用户注册协议等相关协议，以及乙方在众财宝网站不时公示之交易规则、说明、公告等涉及甲乙双方权利义务的法律文件，共同构成了约束甲方接受乙方在本协议项下提供之服务时双方行为的协议之整体，甲方均须予以遵守，如有违反，应当自行承担相关法律后果。
            </p>
            <p style="margin-left:30pt;">
                11.3 由于地震、火灾、战争等不可抗力导致的交易中断、延误的，甲乙双方互不承担责任。但应在条件允许的情况下，应采取一切必要的补救措施以减小不可抗力造成的损失。
            </p>
            <p style="margin-left:30pt;">
                11.4 甲方成功加入本期精选理财计划后，如果在本期精选理财计划申请期内，甲方追加加入本期精选理财计划的资金金额，则甲方与乙方之间的权利义务约定及甲方加入本期精选理财计划的总金额应以最后生成的协议书所约定的内容为准。甲方应当在本期精选理财计划的申请期内进行追加，具体追加方式适用本协议第3.4条之规定。
            </p>
            <p style="margin-left:30pt;">
                11.5 本协议项下产生的纠纷，双方先行协商解决，协商不成的，任何一方可向本协议签署地有管辖权的人民法院提起诉讼。
            </p>
            <p style="margin-left:30pt;">
                11.6 本协议自甲方在众财宝网站操作确认同意签署本协议并支付完毕全部甲方加入资金、乙方确认甲方成功加入本期精选理财计划时（以甲方的众财宝网站账户信息显示为准）生效。本协议采用电子文本形式制成，可以有一份或者多份并且每一份具有同等法律效力，并永久保存在乙方为此设立的专用服务器上备查，对各方均具有法律约束力。
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                注1
            </p>
            <p style="margin-left:30pt;">
                各笔借款每期偿还的总利息中超过比照注2中计算的当期目标值的部分作为精选理财计划当期管理费用计提。(可以合并或分期计提)
            </p>
            <p style="margin-left:21pt; font-size:14px;">
                注2
            </p>
            <p style="margin-left:30pt;">
                目标值=P x Y/12 x M + P x Y/360 x D
            </p>
            <p style="margin-left:30pt;">
                P:甲方加入资金
            </p>
            <p style="margin-left:30pt;">
                Y:预期年化收益率
            </p>
            <p style="margin-left:30pt;">
                M:锁定期开始日（含）至甲方退出本期精选理财计划之日（含）之间足月部分的月数。
            </p>
            <p style="margin-left:30pt;">
                D: 锁定期开始日（含）至甲方退出本期精选理财计划之日（含）之间足月部分以外的剩余天数。
            </p>

        </div>
        <div style="text-align: center">
            <form action="/account/downloadContract.action" method="POST" id="downloadForm">
        <input type="hidden" value="153" name="mainId">
        <input type="hidden" value="41" name="templateId">
                <input type="hidden" value="" name="content" id="htmlContent">
            </form>
            <input type="button" value="关 闭" align="center" onclick="javascript:window.close()">
         <!--    <img style="margin-right:10px;margin-bottom:10px;cursor:pointer;" src="../images/xydownload.jpg" align="right" onclick="downloadPdf()"/> -->
        </div>
    </div>
</div>
</body>
</html>
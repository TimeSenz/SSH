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
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>众财宝-您的贴心理财专！网络投资平台！网络贷款平台！</title>
<meta name="keywords" content="众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资">
<meta name="description" content="众财宝(www.zhongcaibao.net)是一家从事P2P信贷、资产管理、项目投资、经贸咨询、技术推广、企业管理咨询、房地产信息咨询的专业机构，为中小企业提供融资新渠道，更为个人提供创新型投资理财服务。">
<link rel="stylesheet" type="text/css" href="../css/agree.css">
<link rel="Shortcut Icon" href="../images/zcb-icon.ico">
	<body>
		<div class="iqj-agree">
    		<p class="iqj-agree-title">借贷协议</p>

		<p class="iqj-agree-h3">甲方（理财人）：<s:property value="#session.userinfo.name"/></p>
		<s:iterator value="jkrlist" var="vo">
		<p class="iqj-agree-h3">乙方（借款人）：<s:property value="#vo.jname"/></p>
		 </s:iterator>
		
		<p class="iqj-agree-h3">丙方（服务提供商）：中投国汇（北京）资产管理有限公司</p>
		<p class="iqj-agree-h3">鉴于：</p>
		<p class="iqj-agree-text-normal iqj-agree-marginB">1. 丙方是一家在北京朝阳区合法成立并有效存在的有限责任公司，公司名称为：中投国汇（北京）资产管理有限公司（“众财宝”），拥有www.zhongcaibao.net 网站（以下简称“本网站”或“网站”）的经营权，提供投资和信用咨询，为交易提供信息服务和其他有关借款管理的相关服务。<br />
		2. 甲方已与丙方签订《理财咨询与服务协议》。<br />
		3. 乙方已与丙方签订《借款咨询与服务协议》。<br />
		4. 乙方有借款需求，甲方亦同意借款，双方有意成立借贷关系并同意与丙方共同签署《借贷协议》（“本协议”或“协议”）。</p>
		<p class="iqj-agree-h3">第一条 释义</p>
		<p class="iqj-agree-text">在本协议中，除非上下文另有解释，下列词语具有以下含义：</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 众财宝用户名：指理财人或借款人在本网站上根据个人的真实身份信息注册和经众财宝审查后使用的名称。</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 理财人：指自主选择理财一定数量资金给他人的自然人即甲方。</p>
		<p class="iqj-agree-text">&nbsp;<span>3.</span>&nbsp; 年化利率：13.0%。</p>
		<p class="iqj-agree-text">&nbsp;<span>4.</span>&nbsp; 借款人：指有资金需求、经丙方筛选推荐或经丙方选定给理财人并得到理财人一定数量理财资金的自然人即乙方。</p>
		<p class="iqj-agree-text">&nbsp;<span>5.</span>&nbsp; 元： 指人民币。</p>
		<p class="iqj-agree-text">&nbsp;<span>6.</span>&nbsp; 托管账户：根据本协议第四条的定义。</p>
		<p class="iqj-agree-text">&nbsp;<span>7.</span>&nbsp; 风险金专用账户：指为理财人的共同利益考虑、由丙方设立并管理、以丙方的名义单独开立一个专用银行账户或第三方托管账户,由丙方在理财人和借款人双方债权债务关系成立时对每一笔借款都从丙方自身的服务费收入中提取 5-80%的 金额存入此专用账户(具体的金额由众财宝根据借款人风险评估结果而定),款项 专款专用,用于补偿理财人可能存在的潜在还款损失。</p>
		<p class="iqj-agree-text">&nbsp;<span>8.</span>&nbsp; 期：每月为一期。</p>
		<p class="iqj-agree-text">&nbsp;<span>9.</span>&nbsp; 工作日：指中华人民共和国法律规定的工作日（法定工作日）。</p>
		<p class="iqj-agree-text"><span>10.</span> 电子签署： 指理财人、借款人或服务提供商在众财宝网站上认证或确认电子纪录形式的文件，使其产生法律效力的行为。</p>
		<p class="iqj-agree-text"><span>11.</span> 提前还款：指在理财人与借款人借贷关系存在期间约定了借款人的本息偿还周期和金额等相关还款计划，借款人可能在协议规定的偿还周期结束前，在某一期将剩余本金全部提前还给理财人，从而使理财人的资金比约定的计划提前收回。</p>
		<p class="iqj-agree-text"><span>12.</span> 转帐费： 根据本协议第八条的定义。</p>
		<p class="iqj-agree-text"><span>13.</span> 居间管理费： 根据本协议第八条的定义。</p>
		<p class="iqj-agree-text"><span>14.</span> 逾期借款管理费：根据本协议第十条的定义。</p>
		<p class="iqj-agree-text"><span>15.</span> 理财管理费：根据本协议第九条的定义。</p>
		<p class="iqj-agree-text"><span>16.</span> 逾期理财管理费：甲方拖欠丙方的理财管理费。</p>
		<p class="iqj-agree-text"><span>17.</span> 投标：根据借款人在众财宝网站上发布的借款信息，理财人自主选择理财资金数量给借款人的过程。</p>
		<p class="iqj-agree-text"><span>18.</span> 投标有效期：理财人投标的期限。</p>
		<p class="iqj-agree-text"><span>19.</span> 满标：即借款人的借款需求在投标有效期内获得理财人的全部支持。</p>
		<p class="iqj-agree-h3">第二条 理财人</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 理财金额（元）：与主协议第三条第一款借款金额一致。</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 借款期限（月）：与主协议第三条第二款借款期限一致。</p>
		<p class="iqj-agree-text">&nbsp;<span>3.</span>&nbsp; 每月应收本息（元）：见补充协议。</p>
		<p class="iqj-agree-h3">第三条 各方权利和义务</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 甲方的权利和义务</p>
		<p class="iqj-agree-text"><span>1.1</span> 甲方应按约定的借款日将足额的借款本金支付给乙方。</p>
		<p class="iqj-agree-text"><span>1.2</span> 甲方享有其理财款项所带来的利息收益。</p>
		<p class="iqj-agree-text"><span>1.3</span> 如乙方违约，甲方有权要求丙方提供其已获得的乙方信息。</p>
		<p class="iqj-agree-text"><span>1.4</span> 甲方应主动缴纳由利息所得带来的可能的税费。</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 乙方的权利和义务</p>
		<p class="iqj-agree-text"><span>2.1</span> 乙方必须按期足额向甲方偿还本金和利息。</p>
		<p class="iqj-agree-text"><span>2.2</span> 乙方必须按期足额向丙方支付借款管理费用。</p>
		<p class="iqj-agree-text"><span>2.3</span> 乙方承诺所借款项不用于任何违法用途。</p>
		<p class="iqj-agree-text"><span>2.4</span> 乙方不得将本协议项下的任何权利义务转让给任何其他方。</p>
		<p class="iqj-agree-text">&nbsp;<span>3.</span>&nbsp; 丙方的权利和义务</p>
		<p class="iqj-agree-text"><span>3.1</span> 甲乙双方同意丙方有权代甲方每期收取甲方理财款项所对应的乙方每期偿还的本息，代收后的处置方式按本协议第五条执行。</p>
		<p class="iqj-agree-text"><span>3.2</span> 甲方同意向乙方理财资金时，已委托丙方在本协议生效时将该笔借款资金直接划付至乙方账户。</p>
		<p class="iqj-agree-text"><span>3.2</span> 甲乙双方同意丙方有权代甲方在有必要时对乙方进行贷款的违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。甲方在此确认明确委托丙方为其进行以上工作，并授权丙方可以将此工作委托给其他方进行。乙方对前述委托的提醒、催收事项已明确知晓并应积极配合。</p>
		<p class="iqj-agree-text"><span>3.4</span> 丙方有权按月向乙方收取双方约定的借款管理费，并在有必要时对乙方进行违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。 丙方有权将此违约提醒及催收工作委托给其他方进行。</p>
		<p class="iqj-agree-text"><span>3.5</span> 丙方接受甲乙双方的委托所产生的法律后果由相应委托方承担。如因乙方或甲方或其他原因（包括但不限于技术问题）造成的延误或错误，丙方不承担任何责任。</p>
		<p class="iqj-agree-text"><span>3.6</span> 丙方应对甲方和乙方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），丙方有权披露。</p>
		<p class="iqj-agree-h3">第四条 理财款项的支付</p>
		
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 托管账户</p>
		<p class="iqj-agree-text">丙方在与其合作的第三方支付平台上开立托管账户，第三方支付平台在上述托管账户项下建立甲方托管子账户，该甲方托管子账户成为托管账户。</p>
		<p class="zcb-agree-text"><span>1.1</span> 托管账户开立<br>
			<span>1.2</span> 资金所有权</p>
		<p class="zcb-agree-text-indent"> 托管账户资金所有权属于甲方。</p>
		<p class="zcb-agree-text"><span>1.3</span> 托管账户管理</p>
		<p class="zcb-agree-text-indent"> 在托管期间，托管账户由第三方支付平台管理，该账户不得提取现金；</p>
		<p class="zcb-agree-text-indent"> 依据本协议所载明的借款日，丙方代理财人将款项划入借款人账户。</p>
		<p class="iqj-agree-text"><span>1.4</span> 上述托管账户为不计息账户。</p>
		<p class="iqj-agree-text"><span>1.5</span> 资金划转/划扣所产生的费用，由甲方承担。</p>
		<p class="iqj-agree-text"><span>1.6</span> 本协议中所规定的任何由丙方合作第三方支付平台划扣的款项，若出现由于丙方原因导致的划扣错误，则丙方应返还错误划扣款项并按照银行活期存款利率的2倍支付甲方利息。</p>
		<p class="iqj-agree-h3">第五条 甲方理财资金的回收管理</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp;乙方有义务对甲方定期还本付息。为便利、统一地回收本息，甲方委托并授权丙方代为收取乙方每期偿还的本息，丙方在每期收款日后的三个工作日内与甲方按本条第2款进行结算。</p>
		<p class="zcb-agree-text">&nbsp;<span>2.</span>&nbsp; 甲方指定其在丙方网站上注册的电子账户作为资金回收专用账户。<br>
		<span>2.1</span> 账户中的资金不产生利息收益。<br>
		<span>2.2</span> 账户中的资金只能划转到甲方名下的银行账户。<br>
		<span>2.3</span> 甲方有义务及时向丙方提供本人名下的银行账户信息。<br>
		<span>2.4</span> 每天从电子账户中只能往外划转的最高金额为20,000人民币。<br>
		<span>2.5</span> 如果电子账户中的资金超过100,000元停留时间不超过10天，超过50,000元停留时间不超过15天，超过10,000元停留时间不超过25天，超过部分的资金会自</p>
		<p class="zcb-agree-text-indent">动返回到甲方名下的银行账户。<br>
		<span>2.6</span> 甲方变更该账户时必须签署《客户信息变更》并经乙方确认后方可变更；如因甲方未及时书面通知乙方而引发的损失由甲方自行承担。<br>
		<span>2.7</span> 甲方在丙方网站上注册的电子账户信息如下：</p>
		<p class="zcb-agree-text-indent">众财宝用户名：见补充协议</p>
		<p class="iqj-agree-text">&nbsp;<span>3.</span>&nbsp; 资金划转所产生的转帐费用，由甲方承担。</p>
		<p class="iqj-agree-text">&nbsp;<span>4.</span>&nbsp; 如果甲方未及时向丙方提供本人名下的银行账户信息，资金迟延划转责任由甲方承担。</p>

		<p class="iqj-agree-h3">第六条 风险金专用账户</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 风险金专用账户：指为理财人的共同利益考虑、由丙方设立并管理、以丙方的名义单独开立一个专用银行账户或第三方托管账户，由丙方在理财人和借款人双方债权债务关系成立时对每一笔借款都从丙方自身的服务费收入中提取一定金额存入此专用账户，款项专款专用，用于补偿理财人可能存在的潜在还款损失。</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 在风险金专用账户当期余额不足以支付当期（每月为一期）理财人所对应的发生逾期的借款人的逾期本息时， 甲方同意将其当期部分利息收入无偿存入风险金专用账户（由丙方代扣）。提取的利息比例由丙方根据当期短缺的资金情况决定，但不会超过甲方当期的全部利息收入。</p>
		<p class="iqj-agree-h3">第七条 甲方回款风险的处置方式</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 当借款人发生违约时，甲方选择如下之一的方式处置回款风险：</p>
		<p class="iqj-agree-text"><span>1.1</span> 甲方自行追讨，丙方提供协助，由甲方自行承担损失和风险。</p>
		<p class="iqj-agree-text"><span>1.2</span> 由丙方还款风险专用账户进行借款人回款风险的共担，规则如下：</p>
		<p class="zcb-agree-text-indent">丙方根据借款人的整体违约状况设定还款风险金的提取（使用）比例，并有权进行适当的调整。</p>
		<p class="zcb-agree-text-indent">丙方按季度为周期披露还款风险金专用账户整体信息情况；同时，如果甲方在披露期内得到还款风险金专用账户的补偿，将披露甲方的具体受偿情况；如果需</p><p class="zcb-agree-text-indent">要，甲方应协助丙方进行由于借款人违约行为而产生的相关法律诉讼行为。</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span> &nbsp;当借款人逾期还款超过10天但不超过30天的情况下，丙方将开始计算丙方当期应收回本息的利息补偿，具体利息补偿金额计算方式如下：<br />
		利息补偿金额＝实际逾期天数／360天X年化利率X当月应收回本息金额</p>
		<p class="iqj-agree-text">&nbsp;<span>3.</span>&nbsp; 当借款人逾期超过30天时 ，丙方将从使用风险专用账户代替乙方向甲方垫付当月甲方应收回的本金、利息和利息补偿金（按本条第二款的方式计算）。</p>
		<p class="iqj-agree-text">&nbsp;<span>4.</span>&nbsp; 甲方选择还款风险专用账户进行风险共担的情况下，甲方受偿可能属于如下情形之一：</p>
		<p class="iqj-agree-text"><span>4.1</span> 在还款风险金专用账户当期余额足以支付当期（每月为一期）所有选择此方式的理财人所对应的发生逾期的借款人的逾期本金时，由还款风险金专用账户将当期所有违约借款人的全部逾期本金金额支付给甲方及本网站上的其他理财人，甲方和其他理财人在各自与借款人借贷关系存在期间约定的本息回收情况保持不变，在甲方得到还款风险金专用账户代偿当期本金后，借款人其后偿还的逾期款本金归属风险金专用账户，同时逾期借款管理费等相关权益作为丙方的催收服务费。</p>
		<p class="iqj-agree-text"><span>4.2</span> 在还款风险金专用账户当期余额不足以支付当期（每月为一期）所有选择此方式理财的理财人所对应的发生逾期的逾期本金时，则当期所有选择此方式的理财人按照各自对应的违约借款人的逾期本金金额占当期所有理财人对应的违约借款人的逾期本息总额的比例对还款风险金专用账户的当期资金进行分配。甲方和其他理财人当期未得到分配的部分自动计入下一期，与下一期发生的新逾期款继续进行上述同样原则的按比例分配，依此类推。</p>
		<p class="iqj-agree-text">&nbsp;<span>5.</span>&nbsp; 理财人从风险金专用账户获得全额支付本金后，借款人将其债权自动转让给乙方。</p>
		<p class="iqj-agree-text">&nbsp;<span>6.</span>&nbsp; 资金划转/划扣所产生的费用，由甲方承担。</p>

		<p class="iqj-agree-h3">第八条 甲方的债权转让</p>
		<p class="zcb-agree-text">甲方在有需要时，向丙方提出将自己当时持有的债权资产全部或部分转让给第三方的需求，丙方在接受甲方的书面申请后按照本条下列款项的规定为甲方寻找债权受让人、协助办理转让手续。</p>

		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 甲方可自行决定是否转让对乙方所拥有的债权</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 甲方需委托丙方为其寻找其对乙方所拥有的债权。债权应优先转让给新注册成功的理财人。</p>
		<p class="iqj-agree-text">&nbsp;<span>3.</span>&nbsp; 甲方债权的受让人不得为乙方。</p>
		<p class="iqj-agree-text">&nbsp;<span>4.</span>&nbsp; 甲方可自行决定转让全部或部分债权。债权转让额以剩余本金为限。债权转让的最低限额为人民币100元。</p>
		<p class="iqj-agree-text">&nbsp;<span>5.</span>&nbsp; 如果甲方出售全部债权，只计算到整数部分，小数点之后金额不计算在内，小数部分债权会转到风险金专用账户。</p>
		<p class="iqj-agree-text">&nbsp;<span>6.</span>&nbsp; 甲方需提供其所转让债权的详尽还款计划，包括还款原则、剩余时间、利息支付等内容。</p>
		<p class="iqj-agree-text">&nbsp;<span>7.</span>&nbsp; 债权转让费用为转让资金的0.5%。债权转让费用由甲方支付。</p>
		<p class="iqj-agree-text">&nbsp;<span>8.</span>&nbsp; 丙方有义务协助甲方寻找债权受让人，但并不保证一定找到债权受让人。</p>

		<p class="iqj-agree-h3">第九条 居间服务费及转帐费</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 在本协议中，“居间服务费”是指因丙方为乙方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通等系列信用相关服务而由乙方支付给丙方的报酬。“转帐费”是指第三方支付平台包括但不限于银行等机构收取由于资金划转而产生的费用。</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 对于丙方向乙方提供的一系列服务，乙方同意向丙方支付本次借款本金的［］%(人民币［］元)作为居间服务费，此笔费用从借款本金中一次性扣除缴纳。在还款期间，乙方每月向丙方支付借款本金的(  %) 作为转帐费（具体数额根据第三方支付平台的收费标准而定），按实际还款月数／期数支付，转帐费的缴纳时间与乙方向理财人支付本息的还款日一致。</p>

		<p class="iqj-agree-h3">第十条 理财管理费</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 理财管理费：指丙方因其提供的本协议服务向甲方按月收取的服务费</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 乙方免收理财管理费。</p>
		<p class="iqj-agree-text">&nbsp;<span>3.</span>&nbsp; 理财管理费由丙方在甲方每笔理财款对应的回款日收取（在当期借款人还款中自动扣除），理财管理费=该笔理财资金的本金x理财管理费费率。</p>
		
		<p class="iqj-agree-h3">第十一条 违约责任</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 协议各方均应严格履行协议义务，非经各方协商一致并书面同意或依照本协议约定，任何一方不得解除本协议。</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、仲裁费、律师费等，应由违约方承担。如违约方为乙方，甲方有权立即解除本协议，并要求乙方立即偿还未偿还的本金、利息。此时，乙方还应向丙方支付所有应付的借款管理费。如本协议提前解除时，乙方在网站的电子账户里有任何余款，丙方有权按照本条第3项的清偿顺序将乙方的余款用于清偿，并要求乙方支付因此产生的相关费用。</p>			
		<p class="iqj-agree-text">&nbsp;<span>3.</span>&nbsp; 乙方应严格履行还款义务，如乙方逾期还款，则应按照本款规定向丙方支付逾期管理费。</p>
			<p class="zcb-agree-text"><span>3.1</span> 逾期借款管理费总额(元)= 逾期本息总额(元)×逾期借款管理费率×逾期天数；</p>
			<p class="zcb-agree-text"><span>3.2</span> 或最低费用，取两者中的较高者。</p>
		<p class="iqj-agree-text">&nbsp;<span>4.</span>&nbsp; 乙方的每期还款均应按照如下顺序清偿</p>
			<p class="iqj-agree-text"><span>4.1</span> 逾期借款管理费</p>
			<p class="iqj-agree-tex"><span>4.2</span> 拖欠的利息</p>
			<p class="iqj-agree-text"><span>4.3</span> 拖欠的本金</p>
			<p class="iqj-agree-text"><span>4.4</span> 转帐费</p>
			<p class="iqj-agree-text"><span>4.5</span> 逾期理财管理费</p>
			<p class="iqj-agree-text"><span>4.6</span> 正常的利息</p>
			<p class="iqj-agree-text"><span>4.7</span> 正常的本金</p>
			<p class="iqj-agree-text"><span>4.8</span> 理财管理费</p>
			<p class="iqj-agree-text"><span>4.9</span> 其他费用</p>
		<p class="iqj-agree-text">&nbsp;<span>5.</span>&nbsp; 如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，本协议项下的全部借款本息及借款管理费提前到期，乙方应立即清偿本协议下尚未偿付的全部本金、利息、借款管理费及根据本协议产生的其他全部费用。</p>
		<p class="iqj-agree-text">&nbsp;<span>6.</span>&nbsp; 如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方的“逾期记录”记入本网站的信用系统，由此产生的法律后果由乙方承担，丙方不承担任何法律责任。</p>
		<p class="iqj-agree-text">&nbsp;<span>7.</span>&nbsp; 如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方违约失信的相关信息及乙方其他信息向媒体、用人单位、公安机关、检查机关、法律机关披露，由此产生的法律后果由乙方承担，丙方不承担任何法律责任。</p>
		<p class="iqj-agree-text">&nbsp;<span>8.</span>&nbsp; 如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将资料提供给第三方机构通过电话、信函、上门等方式对乙方进行催收。</p>
		<p class="iqj-agree-text">&nbsp;<span>9.</span>&nbsp; 如果乙方在还款期间，出现逾期且时间超过30天, 乙方在原有的还款方式基础上，也可以通过汇款到丙方指定银行账户进行还款。丙方收款账户为:<br />
		户名： 中投国汇（北京）资产管理有限公司<br />
		开户行：民生银行北京建国门支行<br />
		账户号：0104012830001994</p>
		<p class="iqj-agree-text"><span>10.</span> 在乙方还清全部本金、利息、借款管理费、逾期借款管理费之前，逾期借款管理费的计算不停止。</p>
		<p class="iqj-agree-text"><span>11.</span> 本协议中的所有甲方与乙方之间的借款均是相互独立的，一旦乙方逾期未归还借款本息，任何一个甲方有权单独向乙方追索或者提起诉讼。如乙方逾期支付借款管理费或提供虚假信息的，丙方亦可单独向乙方追索或者提起诉讼。</p>	
		
		<p class="iqj-agree-h3">第十二条 提前还款</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 乙方可在借款期间任何时候提前偿还剩余全部借款。</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 提前偿还全部剩余借款的方式；</p>
			<p class="iqj-agree-text"><span>2.1</span> 乙方提前清偿全部剩余借款时，应向甲方支付当期应还本息和提前还款补偿费。<br />
		提前还款补偿费（元）= 剩余本金（元）X 2%<br />
		或最底费用200（元），取两者中的较高者。</p>
			<p class="iqj-agree-text"><span>2.2</span> 乙方提前清偿全部剩余借款时，应向丙方支付当期借款管理费，乙方无需支付剩余还款期的借款管理费。</p>
			<p class="iqj-agree-text"><span>2.3</span> 50％的提前还款补偿费由甲方获得，另外50％由丙方获得。</p>
		
		<p class="iqj-agree-h3">第十三条 不可抗力</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span> “不可抗力事件”指一方无法预见、抗拒、避免的致使该方无法履行其在本协议项下义务的事件。不可抗力事件包括：暴乱、战争、瘟疫、火灾、水灾、地震、风暴或其他自然灾害。</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 若一方因不可抗力事件而不能履行本协议所规定的义务,该方应在不可抗力事件发生后七天内书面通知另一方，双方应尽其最大可能尽可能地减少损失。若发生不可抗力事件，一方无需对因不能履行或损失承担责任，并且该等履行失败或迟延不得视作对本协议的违约。声称因不可抗力事件丧失履行能力的一方应采取适当措施最大限度减少或消除不可抗力事件的影响，并在尽可能短的时间内尝试恢复履行受不可抗力事件影响的义务，否则应该承担对于扩大的损失的赔偿责任。</p>

		<p class="iqj-agree-h3">第十四条 法律及争议解决</p>
		
		<p class="zcb-agree-text">
		本协议适用中国法律。各方因本协议或违反本协议所致之任何争议或纠纷，应依诚信原则协议解决。如果在纠纷发生之日起三十（30）天内各方仍不能以友好协商的方式解决争议，该争议应提交给中国国际经济贸易仲裁委员会北京分会依该委员会当时有效的仲裁规则进行裁决，裁决结果是终局的，对各方均有约束力。</p>
		<p class="iqj-agree-h3">第十五条 其它约定</p>
		
		<p class="iqj-agree-text">满标后3天内， 由于甲方或乙方原因，丙方不能将借款本金金额转帐到乙方指定的账户时， 借款本金金额会自动回到甲方的账户。</p>
		<p class="iqj-agree-h3">第十六条 附则</p>
		<p class="iqj-agree-text">&nbsp;<span>1.</span>&nbsp; 如果甲方出现理财资产的继承或赠与，必须由主张权利的继承人或受赠人向丙方出示经国家权威机关认证的继承或赠与权利归属证明文件，经丙方确认后予协助进行资产的转移，由此产生的相关税费，由主张权利的继承人或受赠人，向其主管税务机关申报、缴纳，丙方不负责相关事宜处理；</p>
		<p class="iqj-agree-text">&nbsp;<span>2.</span>&nbsp; 签署本协议，乙方知悉并同意甲方可以转让债权。乙方确认，当甲方转让其债权时，不需要通知乙方，债权转让即对乙方生效。</p>
		<p class="iqj-agree-text">&nbsp;<span>3.</span>&nbsp; 本协议采用电子文本形式制成，各方均认可该形式的协议效力。</p>
		<p class="iqj-agree-text">&nbsp;<span>4.</span>&nbsp; 本协议自文本最终生成之日起生效。</p>
		<p class="iqj-agree-text">&nbsp;<span>5.</span>&nbsp; 如果本协议中的任何一条或多条违反适用的法律法规，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。</p>


		    <p class="iqj-agree-title">补充协议 <span class="iqj-agree-title-sub" style="font-size:12px;">编号：</span><span class="underline" style="font-size:12px;">27462-1</span></p>
		    <p class="iqj-agree-text">甲、乙和丙三方同意对《借贷协议》条款做如下补充，相关条款与下述条款不一致的，以下述条款为准。</p>
		    
		    <p class="iqj-agree-h3">第一条 理财人</p>
		    <table class="iqj-agree-table">
		     <tr class="fwhite title"><th width="17%" class="round_angle_l">序号</td><th width="25%">理财人</td><th width="23%">投资金额</td><th class="round_angle_r">投资时间</td></tr>
                                <s:iterator value="lcrbuyinfo" var="vo">
                                <tr class="dark"><td><s:property value="#vo.id"/></td><td><s:property value="#vo.lcrname"/></td><td><s:property value="#vo.money"/></td><td><span class="span1"><s:date name="#vo.time" format="yyyy-MM-dd hh:mm:ss"/></span></td></tr>
                                
                                </s:iterator>
		    </table>
		    <p class="iqj-agree-h3">第二条 借款基本信息</p>
		    <h4></h4>
		    <table class="iqj-agree-table">
		      <s:iterator value="jkrlist" var="vo">
		      <tr>
			<th>借款人众财宝用户名</th>
		      <td><s:property value="#vo.jname"/></td>
		      </tr>
		      <tr>
			<th>借款本金数额（元）</th>
			<td><s:property value="#vo.jmoney"/></td>
			</tr>
			<tr>
			<th>居间服务费（元）</th>
			<td><s:property value="#vo.fff"/></td>
			</tr>
			<tr>
			<th>实际到帐（元）</th>
			<td><s:property value="#vo.rmoney"/></td>
			</tr>
			<tr>
			<th>月偿还本息额（元）</th>
			<td><s:property value="#vo.profit"/></td>
			</tr>
			<tr>
			<th>还款期/月数</th>
			<td><s:property value="#vo.deadline"/></td>
			</tr>
			<tr>
			<th>本息总额（元）</th>
            <td><s:property value="#vo.totalmoney"/></td>
            </tr>
            <tr>
		    <tr><th>还款日为</th>
			<td>每月<s:date name="#vo.time" format="dd" />日（24:00前，节假日不顺延）</td>
			</tr>
			<tr>
		    <tr><th>还款起止日期</th>
			<td><s:date name="#vo.starttime" format="yyyy-MM-dd HH:mm:ss" />---<s:date name="#vo.endtime" format="yyyy-MM-dd HH:mm:ss" /></td>
		    </tr>
           </s:iterator>
		    </table>
		    <p class="iqj-agree-h3">第三条 居间服务费及转帐费</p>
		    
		    <p class="zcb-agree-text">对于丙方向乙方提供的一系列服务，乙方同意向丙方支付人民币0.00元作为居间服务费，此笔费用从借款本金中一次性扣除缴纳。在还款期间，乙方自行负担转账操作所产生的手续费（具体数额根据第三方支付平台的收费标准而定，最高不超过当期还款额的1.01%），按实际还款月数／期数支付，转帐费的缴纳时间与乙方向理财人支付本息的还款日一致。</p>
		    
		    <p class="iqj-agree-h3">第四条 违约责任</p>
		    <p class="zcb-agree-text">乙方应严格履行还款义务，如乙方逾期还款，则应按照本款规定向丙方支付逾期管理费：<br />
		    逾期借款管理费总额(元)= 逾期本息总额(元)×逾期借款管理费率×逾期天数；<br />

		    或最底费用/天×逾期天数，取两者中的较高者。

		    逾期天数和逾期借款管理费费率：</p>
		    <p class="zcb-agree-text-indent">1－30 天： %</p>
		    <p class="zcb-agree-text-indent">31－60天： %</p>
		    <p class="zcb-agree-text-indent">61天以上：%</p>



		</div>
		</div>
	</div>
    </body>
</html>

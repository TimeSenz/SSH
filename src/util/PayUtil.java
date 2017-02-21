package util;

import java.io.IOException;

import org.apache.commons.httpclient.HttpException;

/**
 * 
 * @author 李佳
 *关于支付的业务工具类
 */
public class PayUtil {
	// 凡是有可能是中文的字段，都要进行url转码
	public void doUrl() throws HttpException, IOException{
		
		
	
//			String url = "http://localhost:8091/rest.shtml?method=createApply&applyId=&customerName="
//					+ java.net.URLEncoder.encode("张三三", "utf-8")
//					+ "&paperNumber=11010419810101010&member="
//					+ 1313	// 机构编号由安融提供，请向安融索要
//					+ "&sign="
//					+ "sFlwxCCKTp"	// 接口密码请向安融索要
//					+ "&loanType=&loanMoney=&currency=&loanTimeLimit=&assureType=&applyDate=&creditAddress="
//					+ java.net.URLEncoder.encode("北京市丰台区角门东里41号楼3单元502号", "utf-8");
		String url="http://www.baidu.com";
			org.apache.commons.httpclient.HttpClient client = new org.apache.commons.httpclient.HttpClient();
			org.apache.commons.httpclient.methods.PostMethod postmethod = new org.apache.commons.httpclient.methods.PostMethod(url); // url对应以上生成的url地址
			postmethod.getParams().setParameter(org.apache.commons.httpclient.params.HttpMethodParams.HTTP_CONTENT_CHARSET,"utf-8");
			client.executeMethod(postmethod);
			// 返回报告的json信息
			String res = new String(postmethod.getResponseBodyAsString());
			System.out.println(res);
			// 释放连接
			postmethod.releaseConnection();
			
			// 转换为实体bean
//			ObjectMapper mapper = new ObjectMapper();
//			CreditReport reportBean = mapper.readValue(res, CreditReport.class);
			// 后面具体实体bean的使用就根据各机构业务不同而不同了
	}


}

package util;

import java.io.IOException;

import org.apache.commons.httpclient.HttpException;

/**
 * 
 * @author ���
 *����֧����ҵ�񹤾���
 */
public class PayUtil {
	// �����п��������ĵ��ֶΣ���Ҫ����urlת��
	public void doUrl() throws HttpException, IOException{
		
		
	
//			String url = "http://localhost:8091/rest.shtml?method=createApply&applyId=&customerName="
//					+ java.net.URLEncoder.encode("������", "utf-8")
//					+ "&paperNumber=11010419810101010&member="
//					+ 1313	// ��������ɰ����ṩ����������Ҫ
//					+ "&sign="
//					+ "sFlwxCCKTp"	// �ӿ�������������Ҫ
//					+ "&loanType=&loanMoney=&currency=&loanTimeLimit=&assureType=&applyDate=&creditAddress="
//					+ java.net.URLEncoder.encode("�����з�̨�����Ŷ���41��¥3��Ԫ502��", "utf-8");
		String url="http://www.baidu.com";
			org.apache.commons.httpclient.HttpClient client = new org.apache.commons.httpclient.HttpClient();
			org.apache.commons.httpclient.methods.PostMethod postmethod = new org.apache.commons.httpclient.methods.PostMethod(url); // url��Ӧ�������ɵ�url��ַ
			postmethod.getParams().setParameter(org.apache.commons.httpclient.params.HttpMethodParams.HTTP_CONTENT_CHARSET,"utf-8");
			client.executeMethod(postmethod);
			// ���ر����json��Ϣ
			String res = new String(postmethod.getResponseBodyAsString());
			System.out.println(res);
			// �ͷ�����
			postmethod.releaseConnection();
			
			// ת��Ϊʵ��bean
//			ObjectMapper mapper = new ObjectMapper();
//			CreditReport reportBean = mapper.readValue(res, CreditReport.class);
			// �������ʵ��bean��ʹ�þ͸��ݸ�����ҵ��ͬ����ͬ��
	}


}

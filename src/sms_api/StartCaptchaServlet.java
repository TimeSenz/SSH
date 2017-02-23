package sms_api;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.GeetestLib;


/**
 * ʹ��Get�ķ�ʽ����challenge��capthca_id,�˷�ʽ��ʵ��ǰ�����ȫ����Ŀ���ģʽ
 *
 */
public class StartCaptchaServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		GeetestLib gtSdk = new GeetestLib(GeetestConfig.getCaptcha_id(), GeetestConfig.getPrivate_key());

		String resStr = "{}";
		
		//�Զ���userid
		String userid = "test";

		//������֤Ԥ����
		int gtServerStatus = gtSdk.preProcess(userid);
		
		//��������״̬���õ�session��
		request.getSession().setAttribute(gtSdk.gtServerStatusSessionKey, gtServerStatus);
		//��userid���õ�session��
		request.getSession().setAttribute("userid", userid);
		
		resStr = gtSdk.getResponseStr();

		PrintWriter out = response.getWriter();
		out.println(resStr);

	}
}
package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.HttpException;
import org.apache.struts2.ServletActionContext;

import util.PayUtil;

public class AboutAction {
	
	public String jump() throws HttpException, IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		String flag=request.getParameter("flag");
		System.out.println("��ת�ж�:"+flag);
		//���Ž���
		if(flag.equals("group")){
			
			return "group";
		}
//		//���żܹ�
//		if(flag.equals("structure")){
//			
//			return "structure";
//		}
//		//��ҵ�Ļ�
//		if(flag.equals("culture")){
//			
//			return "culture";
//		}
		//��˾����
		if(flag.equals("com")){
			
			return "com";
		}
//		//��˾����
//		if(flag.equals("supports")){
//			
//			return "supports";
//		}
		//��ϵ����
		if(flag.equals("contact")){
			
			return "contact";
		}
		/* //���³�����
        if(flag.equals("bossWord")){
			
			return "bossWord";
		}*/
		//�������
       if(flag.equals("cooperate")){
			
			return "cooperate";
		}
		//������ʿ
       if(flag.equals("recruit")){
			
			return "recruit";
		}
		return "success";
	}

}

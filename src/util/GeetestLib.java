package util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.Socket;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Java SDK
 * 
 */
public class GeetestLib {

	protected final String verName = "3.2.0";// SDK�汾���
	protected final String sdkLang = "java";// SD����������

	protected final String apiUrl = "http://api.geetest.com"; //������֤API URL
	protected final String baseUrl = "api.geetest.com";
	
	protected final String registerUrl = "/register.php"; //register url
	protected final String validateUrl = "/validate.php"; //validate url

	/**
	 * ������֤������֤������ chllenge
	 */
	public static final String fn_geetest_challenge = "geetest_challenge";
	
	/**
	 * ������֤������֤������ validate
	 */
	public static final String fn_geetest_validate = "geetest_validate";
	
	/**
	 * ������֤������֤������ seccode
	 */
	public static final String fn_geetest_seccode = "geetest_seccode";

	/**
	 * ��Կ
	 */
	private String captchaId = "";

	/**
	 * ˽Կ
	 */
	
	private String privateKey = "";
	
	private String userId = "";

	private String responseStr = "";
	
	/**
	 * ���Կ��أ��Ƿ����������־
	 */
	public boolean debugCode = true;
	
	/**
	 * ������֤API����״̬Session Key
	 */
	public String gtServerStatusSessionKey = "gt_server_status";
	
	/**
	 * ���������캯��
	 * 
	 * @param captchaId
	 * @param privateKey
	 */
	public GeetestLib(String captchaId, String privateKey) {
		this.captchaId = captchaId;
		this.privateKey = privateKey;
	}
	
	/**
	 * ��ȡ������֤��ʼ�������ַ���
	 * 
	 * @return ��ʼ�����
	 */
	public String getResponseStr() {
		return responseStr;
	}
	
	public String getVersionInfo() {
		return verName;
	}

	/**
	 * Ԥ����ʧ�ܺ�ķ��ظ�ʽ��
	 * 
	 * @return
	 */
	private String getFailPreProcessRes() {

		Long rnd1 = Math.round(Math.random() * 100);
		Long rnd2 = Math.round(Math.random() * 100);
		String md5Str1 = md5Encode(rnd1 + "");
		String md5Str2 = md5Encode(rnd2 + "");
		String challenge = md5Str1 + md5Str2.substring(0, 2);

		return String.format(
				"{\"success\":%s,\"gt\":\"%s\",\"challenge\":\"%s\"}", 0,
				this.captchaId, challenge);
	}

	/**
	 * Ԥ����ɹ���ı�׼��
	 * 
	 */
	private String getSuccessPreProcessRes(String challenge) {
		
		gtlog("challenge:" + challenge);
		return String.format(
				"{\"success\":%s,\"gt\":\"%s\",\"challenge\":\"%s\"}", 1,
				this.captchaId, challenge);
	}

	/**
	 * ��֤��ʼ��Ԥ����
	 *
	 * @return 1��ʾ��ʼ���ɹ���0��ʾ��ʼ��ʧ��
	 */
	public int preProcess() {

		if (registerChallenge() != 1) {
			
			this.responseStr = this.getFailPreProcessRes();
			return 0;
		}
		
		return 1;

	}
	
	/**
	 * ��֤��ʼ��Ԥ����
	 *
	 * @param userid
	 * @return 1��ʾ��ʼ���ɹ���0��ʾ��ʼ��ʧ��
	 */
	public int preProcess(String userid){
		
		this.userId = userid;
		return this.preProcess();
	}
	
	

	/**
	 * ��captchaID����ע�ᣬ����challenge
	 * 
	 * @return 1��ʾע��ɹ���0��ʾע��ʧ��
	 */
	private int registerChallenge() {
		try {
			String GET_URL = apiUrl + registerUrl+"?gt=" + this.captchaId;
			if (this.userId != ""){
				GET_URL = GET_URL + "&user_id=" + this.userId;
				this.userId = "";
			}
			gtlog("GET_URL:" + GET_URL);
			String result_str = readContentFromGet(GET_URL);
			gtlog("register_result:" + result_str);
			if (32 == result_str.length()) {

				this.responseStr = this.getSuccessPreProcessRes(this.md5Encode(result_str + this.privateKey));
				
				return 1;
			} else {
				gtlog("gtServer register challenge failed");
				return 0;
			}
		} catch (Exception e) {
			gtlog("exception:register api");
		}
		return 0;
	}

	/**
	 * �������󣬻�ȡ���������ؽ��
	 * 
	 * @param getURL
	 * @return ���������ؽ��
	 * @throws IOException
	 */
	private String readContentFromGet(String getURL) throws IOException {

		URL getUrl = new URL(getURL);
		HttpURLConnection connection = (HttpURLConnection) getUrl
				.openConnection();

		connection.setConnectTimeout(2000);// ��������������ʱ����λ�����룩
		connection.setReadTimeout(2000);// ���ô�������ȡ���ݳ�ʱ����λ�����룩

		// ����������������ӣ���δ��������
		connection.connect();
		
		// �������ݵ���������ʹ��Reader��ȡ���ص�����
		StringBuffer sBuffer = new StringBuffer();

		InputStream inStream = null;
		byte[] buf = new byte[1024];
		inStream = connection.getInputStream();
		for (int n; (n = inStream.read(buf)) != -1;) {
			sBuffer.append(new String(buf, 0, n, "UTF-8"));
		}
		inStream.close();
		connection.disconnect();// �Ͽ�����

		return sBuffer.toString();
	}
	
	
	
	
	/**
	 * �ж�һ��������ֵ�Ƿ�Ϊ��
	 * 
	 * @param gtObj
	 * @return
	 */
	protected boolean objIsEmpty(Object gtObj) {
		if (gtObj == null) {
			return true;
		}

		if (gtObj.toString().trim().length() == 0) {
			return true;
		}

		return false;
	}

	/**
	 * ���ͻ��˵������Ƿ�Ϸ�,����ֻҪ��һ��Ϊ�գ����жϲ��Ϸ�
	 * 
	 * @param request
	 * @return
	 */
	private boolean resquestIsLegal(String challenge, String validate, String seccode) {

		if (objIsEmpty(challenge)) {
			return false;
		}

		if (objIsEmpty(validate)) {
			return false;
		}

		if (objIsEmpty(seccode)) {
			return false;
		}

		return true;
	}
	
	
	/**
	 * ���������������ʹ�õ���֤��ʽ,��gt-server���ж�����֤,��ȡ��֤���
	 * 
	 * @param challenge
	 * @param validate
	 * @param seccode
	 * @return ��֤���,1��ʾ��֤�ɹ�0��ʾ��֤ʧ��
	 */
	public int enhencedValidateRequest(String challenge, String validate, String seccode) {	
		
		if (!resquestIsLegal(challenge, validate, seccode)) {
			return 0;
		}
		gtlog("request legitimate");
		
		String host = baseUrl;
		String path = validateUrl;
		int port = 80;
		String query = String.format("seccode=%s&sdk=%s", seccode,
				(this.sdkLang + "_" + this.verName));
		String response = "";
		
		if (this.userId != ""){
			query = query + "&user_id=" + this.userId;
			this.userId = "";
		}
		gtlog(query);
		try {
			if (validate.length() <= 0) {
				return 0;
			}

			if (!checkResultByPrivate(challenge, validate)) {
				return 0;
			}
			gtlog("checkResultByPrivate");
			response = postValidate(host, path, query, port);

			gtlog("response: " + response);
		} catch (Exception e) {
			e.printStackTrace();
		}

		gtlog("md5: " + md5Encode(seccode));

		if (response.equals(md5Encode(seccode))) {
			return 1;
		} else {
			return 0;
		}
	}
	
	/**
	 * ���������������ʹ�õ���֤��ʽ,��gt-server���ж�����֤,��ȡ��֤���
	 * 
	 * @param challenge
	 * @param validate
	 * @param seccode
	 * @param userid
	 * @return ��֤���,1��ʾ��֤�ɹ�0��ʾ��֤ʧ��
	 */
	public int enhencedValidateRequest(String challenge, String validate, String seccode, String userid) {	
		
		this.userId = userid;
		return this.enhencedValidateRequest(challenge, validate, seccode);
	}

	/**
	 * failbackʹ�õ���֤��ʽ
	 * 
	 * @param challenge
	 * @param validate
	 * @param seccode
	 * @return ��֤���,1��ʾ��֤�ɹ�0��ʾ��֤ʧ��
	 */
	public int failbackValidateRequest(String challenge, String validate, String seccode) {

		gtlog("in failback validate");

		if (!resquestIsLegal(challenge, validate, seccode)) {
			return 0;
		}
		gtlog("request legitimate");

		String[] validateStr = validate.split("_");
		String encodeAns = validateStr[0];
		String encodeFullBgImgIndex = validateStr[1];
		String encodeImgGrpIndex = validateStr[2];

		gtlog(String.format(
				"encode----challenge:%s--ans:%s,bg_idx:%s,grp_idx:%s",
				challenge, encodeAns, encodeFullBgImgIndex, encodeImgGrpIndex));
			
		int decodeAns = decodeResponse(challenge, encodeAns);
		int decodeFullBgImgIndex = decodeResponse(challenge, encodeFullBgImgIndex);
		int decodeImgGrpIndex = decodeResponse(challenge, encodeImgGrpIndex);

		gtlog(String.format("decode----ans:%s,bg_idx:%s,grp_idx:%s", decodeAns,
				decodeFullBgImgIndex, decodeImgGrpIndex));

		int validateResult = validateFailImage(decodeAns,decodeFullBgImgIndex, decodeImgGrpIndex);

		return validateResult;
	}
	
	

	/**
	 *
	 * @param ans
	 * @param full_bg_index
	 * @param img_grp_index
	 * @return
	 */
	private int validateFailImage(int ans, int full_bg_index,
			int img_grp_index) {
		final int thread = 3;// �ݲ�ֵ

		String full_bg_name = md5Encode(full_bg_index + "").substring(0, 9);
		String bg_name = md5Encode(img_grp_index + "").substring(10, 19);

		String answer_decode = "";

		// ͨ�������ַ���������ż��λƴ�Ӳ�����λ
		for (int i = 0; i < 9; i++) {
			if (i % 2 == 0) {
				answer_decode += full_bg_name.charAt(i);
			} else if (i % 2 == 1) {
				answer_decode += bg_name.charAt(i);
			} else {
				gtlog("exception");
			}
		}

		String x_decode = answer_decode.substring(4, answer_decode.length());

		int x_int = Integer.valueOf(x_decode, 16);// 16 to 10

		int result = x_int % 200;
		if (result < 40) {
			result = 40;
		}

		if (Math.abs(ans - result) <= thread) {
			return 1;
		} else {
			return 0;
		}
	}
	
	
	
	
	/**
	 * �����������
	 * 
	 * @param encodeStr
	 * @param challenge
	 * @return
	 */
	private int decodeResponse(String challenge, String string) {
		if (string.length() > 100) {
			return 0;
		}

		int[] shuzi = new int[] { 1, 2, 5, 10, 50 };
		String chongfu = "";
		HashMap<String, Integer> key = new HashMap<String, Integer>();
		int count = 0;

		for (int i = 0; i < challenge.length(); i++) {
			String item = challenge.charAt(i) + "";

			if (chongfu.contains(item) == true) {
				continue;
			} else {
				int value = shuzi[count % 5];
				chongfu += item;
				count++;
				key.put(item, value);
			}
		}

		int res = 0;

		for (int j = 0; j < string.length(); j++) {
			res += key.get(string.charAt(j) + "");
		}

		res = res - decodeRandBase(challenge);

		return res;

	}

	/**
	 * �������λ���������,�����ƫ����
	 * 
	 * @param randStr
	 * @return
	 */
	private int decodeRandBase(String challenge) {

		String base = challenge.substring(32, 34);
		ArrayList<Integer> tempArray = new ArrayList<Integer>();

		for (int i = 0; i < base.length(); i++) {
			char tempChar = base.charAt(i);
			Integer tempAscii = (int) (tempChar);

			Integer result = (tempAscii > 57) ? (tempAscii - 87)
					: (tempAscii - 48);

			tempArray.add(result);
		}

		int decodeRes = tempArray.get(0) * 36 + tempArray.get(1);
		return decodeRes;

	}
	
	

	/**
	 * ���debug��Ϣ����Ҫ����debugCode
	 * 
	 * @param message
	 */
	public void gtlog(String message) {
		if (debugCode) {
			System.out.println("gtlog: " + message);
		}
	}

	protected boolean checkResultByPrivate(String challenge, String validate) {
		String encodeStr = md5Encode(privateKey + "geetest" + challenge);
		return validate.equals(encodeStr);
	}

	/**
	 * ò�Ʋ���Post��ʽ�������ع�ʱ�޸�����
	 * 
	 * @param host
	 * @param path
	 * @param data
	 * @param port
	 * @return
	 * @throws Exception
	 */
	protected String postValidate(String host, String path, String data,
			int port) throws Exception {
		String response = "error";
		
		InetAddress addr = InetAddress.getByName(host);
		Socket socket = new Socket(addr, port);
		BufferedWriter wr = new BufferedWriter(new OutputStreamWriter(
				socket.getOutputStream(), "UTF8"));
		wr.write("POST " + path + " HTTP/1.0\r\n");
		wr.write("Host: " + host + "\r\n");
		wr.write("Content-Type: application/x-www-form-urlencoded\r\n");
		wr.write("Content-Length: " + data.length() + "\r\n");
		wr.write("\r\n"); // �Կ�����Ϊ�ָ�
		
		// ��������
		wr.write(data);
		wr.flush();
		
		// ��ȡ������Ϣ
		BufferedReader rd = new BufferedReader(new InputStreamReader(
				socket.getInputStream(), "UTF-8"));
		String line;
		while ((line = rd.readLine()) != null) {
			response = line;
		}
		wr.close();
		rd.close();
		socket.close();
		return response;
	}


	/**
	 * md5 ����
	 * 
	 * @time 2014��7��10�� ����3:30:01
	 * @param plainText
	 * @return
	 */
	private String md5Encode(String plainText) {
		String re_md5 = new String();
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes());
			byte b[] = md.digest();
			int i;
			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}

			re_md5 = buf.toString();

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return re_md5;
	}

}

package com.union.portal.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.KeyManagementException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Random;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.xml.bind.DatatypeConverter;

import org.json.JSONObject;

public class HttpUtils_Org {
   private static final String USER__AGENT = "Mozilla/5.0";
   //private static final String HTTPS       = "https://";
   private static final String M_SERVER    = "https://etmsgroupltd.com:443";
   private static final String M_LOGIN     = "1012";
   private static final String M_MANAGERPW = "Dnflskfk!23";
   private static final String M_VERSION   = "484";
   private static final String M_TYPE      = "manager";
   private static final String M_AGENT     = "WebAPI_manager";

	// +--------------------------------------------------------------+
	// | Authentication |
	// +--------------------------------------------------------------+
	public static boolean sendAuth() {
		
		disableSslVerification();
		
		String response = "";
		if (M_SERVER.isEmpty()) {
			System.out.println("call initConnection with correct server first");
			return (false);
		}
		// ---
		String path = "/api/auth/start?version=" + M_VERSION + "&agent=" + M_AGENT + "&login=" + M_LOGIN + "&type="
				+ M_TYPE;
		// ---
		try {
			System.out.println("sendAuth - send Http GET request");
			response = sendGet(path);
		} catch (Exception ex) {
			ex.printStackTrace();
			return (false);
		}

		// ---
		if (!response.isEmpty()) {
			JSONObject json_obj = new JSONObject(response);
			String retcode = json_obj.getString("retcode");
			System.out.println(retcode);
			if (retcode.equals("0 Done")) {
				String srv_rand = json_obj.getString("srv_rand");
				byte[] byte_array = DatatypeConverter.parseHexBinary(srv_rand);
				printByteResult(byte_array);
				// ---
				byte[] cli_rand_buf = GetRandomHex();
				printByteResult(cli_rand_buf);
				// ---
				String cli_rand_string = DatatypeConverter.printHexBinary(cli_rand_buf);
				// ---
				String srv_rand_answer = GetHashFromPassword(M_MANAGERPW, byte_array);
				// ---
				String auth_response = "/api/auth/answer?srv_rand_answer=" + srv_rand_answer + "&cli_rand="
						+ cli_rand_string;
				try {
					System.out.println("sendAuth - send Http GET request");
					sendGet(auth_response);
				} catch (Exception ex) {
					System.out.println(ex.toString());
				}
			}
			return (true);
		} else {
			return (false);
		}
	}

	// +--------------------------------------------------------------+
	// | Send GET request |
	// +--------------------------------------------------------------+
	public static String sendGet(String path) throws Exception {
		
		String url = M_SERVER + path;
		// ---
		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		// ---
		con.setRequestMethod("GET");
		// ---
		con.setRequestProperty("User-Agent", USER__AGENT);
		// ---
		int responseCode = con.getResponseCode();
		// ---
		System.out.println("\nSending 'GET' request to URL : " + url);
		System.out.println("Response Code : " + responseCode);
		// ---
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();
		// ---
		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
		// ---
		System.out.println(response.toString());
		return (response.toString());
	}  

	static public String sendPost(String path, String parameter, String charset) throws Exception {
		// TODO Auto-generated method stub
		String xmlStr = "";
		String actionurl = M_SERVER + path;
        System.out.println("urlinfo: " + actionurl);
        System.out.println("parameter: " +parameter);
        
		URL url = new URL(actionurl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("User-Agent", USER__AGENT);
        conn.setRequestProperty("Connection", "Keep-Alive");
    	conn.setDoInput(true);
    	conn.setDoOutput(true);
    	conn.setUseCaches(false);
    	OutputStream out = conn.getOutputStream();
    	out.write(parameter.getBytes(charset));
    	out.close();
        
        System.out.println("Response code: " + conn.getResponseCode());

        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(),charset));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(), charset));
        }
        StringBuilder response = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
        	response.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(response.toString());
        
		return (response.toString());
	}
	
	public static String sendPostByPayload(String path, String payload) throws Exception {
		// TODO Auto-generated method stub
		
    	String actionurl = M_SERVER + path;
    	String jsonstr = "";
		StringBuffer jsonString = new StringBuffer();
		String line = "";
		
		try {
			URL url = new URL(actionurl);
			HttpsURLConnection connection = (HttpsURLConnection) url.openConnection();
	        
	        connection.setRequestMethod("POST");
	        connection.setRequestProperty("Accept", "*/*");
	        connection.setRequestProperty("Connection", "Keep-Alive");
	 
	        connection.setRequestProperty("Accept-Language", "ko-KR");
	        connection.setRequestProperty("Content-Type", "application/json");
	        //아래 두개의 값은 별도로 셋팅이 필요함.
	        connection.setRequestProperty("User-Agent", USER__AGENT);
	        connection.setDoInput(true);
	        connection.setDoOutput(true);
	        connection.setUseCaches(false);

	        OutputStream os = connection.getOutputStream(); 
	        os.write(payload.getBytes("UTF-8")); 
	        os.flush();
	        	        
//	        OutputStreamWriter writer = new OutputStreamWriter(connection.getOutputStream());
//	        //OutputStreamWriter writer = new OutputStreamWriter(connection.getOutputStream(), "EUC-KR");
//	        writer.write(payload);
//	        writer.close();
	        
	        
	        BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
	        
        	
	        while ((line = br.readLine()) != null) {
	        	jsonString.append(line);
	        }
	        br.close();
	        connection.disconnect();

	        
        	System.out.println("##url :  " + actionurl );
        	System.out.println("##payload :  " + payload);
        	System.out.println("##response :  " + jsonString.toString());

        	jsonstr = jsonString.toString();
        	
		} catch (Exception e) {
			jsonstr = "ERROR";
			e.printStackTrace();
		}
		
		return jsonstr;
    	
	}	
	// +------------------------------------------------------------------+
	// | Output the result |
	// +------------------------------------------------------------------+	
	private static void printByteResult(byte[] array_to_print) {
		if (array_to_print != null) {
			StringBuilder sb_unsigned_bytes = new StringBuilder();
			for (byte b : array_to_print)
				sb_unsigned_bytes.append((b & 0xff));
			System.out.println("result array =" + sb_unsigned_bytes.toString());
		} else {
			System.out.println("array_to_print is null");
		}
	}
	
	// +------------------------------------------------------------------+
	// | Get the result in HEX format |
	// +------------------------------------------------------------------+
	private static String getHEXResult(byte[] array_to_print) {
		if (array_to_print != null) {
			StringBuilder sb = new StringBuilder();
			for (byte b : array_to_print)
				sb.append(String.format("%02X", b));
			return (sb.toString());
		} else {
			System.out.println("array_to_print is null");
			return null;
		}
	}
	
	// +------------------------------------------------------------------+
	// | Get a random sequence |
	// +------------------------------------------------------------------+
	private static byte[] GetRandomHex() {
		byte[] base_byte = new byte[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 };
		// ---
		SecureRandom random = new SecureRandom();
		random.nextBytes(base_byte);
		// ---
		return base_byte;
	}	

	// +------------------------------------------------------------------+
	// | Get a password hash |
	// +------------------------------------------------------------------+
	private static String GetHashFromPassword(String password, byte[] randCode) {
		if (password.isEmpty() || randCode == null)
			return null;
		// ---
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] password_bytes_unicode = md.digest(password.getBytes(StandardCharsets.UTF_16LE));
			// ---
			printByteResult(password_bytes_unicode);
			// ---
			String api_word_str = "WebAPI";
			byte[] apiWord = api_word_str.getBytes(StandardCharsets.UTF_8);
			System.out.println("WebAPI byte array =" + Arrays.toString(apiWord));
			// ---
			byte[] hashContains = CopyBuffer(password_bytes_unicode, apiWord);
			// ---
			printByteResult(hashContains);
			// ---
			byte[] final_hash = md.digest(hashContains);
			printByteResult(final_hash);
			// ---
			byte[] final_hash_plus_rand = CopyBuffer(final_hash, randCode);
			byte[] final_hash_plus_rand_md5 = md.digest(final_hash_plus_rand);
			// ---
			return getHEXResult(final_hash_plus_rand_md5);
		} catch (Exception ex) {
			System.out.println(ex.toString());
			return null;
		}
	}
	
	// +------------------------------------------------------------------+
	// | Copy the buffer |
	// +------------------------------------------------------------------+
	public static byte[] CopyBuffer(byte[] ar1, byte[] ar2) {
		byte[] result = new byte[ar1.length + ar2.length];
		// ---
		try {
			System.arraycopy(ar1, 0, result, 0, ar1.length);
			System.arraycopy(ar2, 0, result, ar1.length, ar2.length);
		} catch (Exception ex) {
			System.out.println(ex.toString());
			return null;
		}
		// ---
		return result;
	}	

	// +--------------------------------------------------------------+
	// | Disable SSL when using untrusted certificates |
	// +--------------------------------------------------------------+
	private static void disableSslVerification() {
		try {
			// ---
			TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {
				public java.security.cert.X509Certificate[] getAcceptedIssuers() {
					return null;
				}

				// ---
				public void checkClientTrusted(X509Certificate[] certs, String authType) {
				}

				// ---
				public void checkServerTrusted(X509Certificate[] certs, String authType) {
				}
			} };
			// ---
			SSLContext sc = SSLContext.getInstance("SSL");
			sc.init(null, trustAllCerts, new java.security.SecureRandom());
			HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
			// ---
			HostnameVerifier allHostsValid = new HostnameVerifier() {
				public boolean verify(String hostname, SSLSession session) {
					return true;
				}
			};
			// ---
			HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (KeyManagementException e) {
			e.printStackTrace();
		}

	}
	
	//+------------------------------------------------------------------+
	//| Call authentication function                                     |
	//+------------------------------------------------------------------+
	public static void main(String[] args) {
		if (sendAuth()) {
			System.out.println("auth success");
			try {
				sendGet("/api/time/server");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
			System.out.println("auth failed");
	}
	
	
	/**
	 * 파일을 바이트 배열로 변환 처리함.
	 * @param filepath
	 * @return
	 */
	public static byte[] getFileBinary(String filepath) {
		File file = new File(filepath);
		byte[] data = new byte[(int) file.length()];
		try (FileInputStream stream = new FileInputStream(file)) {
			stream.read(data, 0, data.length);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return data;
	}

	/**
	 * 임시 비밀번호 생성
	 * @param length 비밀번호 길이
	 * @return 숫자와 문자로 구성된 임시 비밀번호문자열
	 */
	public static String getRandomPassword( int length ){
        char[] charaters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'};
        StringBuilder sb = new StringBuilder("");
        Random rn = new Random();
        for( int i = 0 ; i < length ; i++ ){
            sb.append( charaters[ rn.nextInt( charaters.length ) ] );
        }
        return sb.toString();
    }

	/**
	 * post 방식으로 parameter 및 json 두가지를 모두 넘기는 것을 제공.
	 * @param path webapi 경로
	 * @param parameter post로 넘기는 파라메터값
	 * @param payload json형태로 넘기는 파라메터값
	 * @param charset 문자셋 (기본 UTF-8 : 서버환경에 따라서 다르게 표현)
	 * @return 결과값
	 */
	public static String sendPostWithPayload(String path, String parameter, String payload, String charset) throws Exception {
		// TODO Auto-generated method stub
		String actionurl = M_SERVER + path;
        System.out.println("urlinfo: " + actionurl);
        System.out.println("parameter: " +parameter);
        
		URL url = new URL(actionurl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("User-Agent", USER__AGENT);
        conn.setRequestProperty("Connection", "Keep-Alive");
    	conn.setDoInput(true);
    	conn.setDoOutput(true);
    	conn.setUseCaches(false);
    	
    	OutputStream out = conn.getOutputStream();
    	out.write(parameter.getBytes(charset));
    	out.close();
        
        System.out.println("Response code: " + conn.getResponseCode());

        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(),charset));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(), charset));
        }
        StringBuilder response = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
        	response.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(response.toString());
        
		return (response.toString());

	}
}

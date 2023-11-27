package com.union.portal.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
//import java.net.HttpURLConnection;
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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.client.RestTemplate;



public class HttpUtils_20220821 {

	private static final Logger logger = LoggerFactory.getLogger(HttpUtils_20220821.class);
	
	//private static final String USER__AGENT = "Mozilla/5.0";
	private static final String USER__AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";
   //private static final String HTTPS       = "https://";
// 2021-09-18 server 변경.
//   private static final String MT5A_SERVER    = "https://mt5a.unionmk.com:443";
//   private static final String MT5A_LOGIN     = "2000";
//   private static final String MT5A_MANAGERPW = "Dnflskfk!23";
//   private static final String MT5A_VERSION   = "484";
//   private static final String MT5A_TYPE      = "manager";
//   private static final String MT5A_AGENT     = "WebAPI_MT5A_manager";
//
//   private static final String MT5B_SERVER    = "https://mt5a.unionmk.com:443";
//   private static final String MT5B_LOGIN     = "2001";
//   private static final String MT5B_MANAGERPW = "Dnflskfk!23";
//   private static final String MT5B_VERSION   = "484";
//   private static final String MT5B_TYPE      = "manager";
//   private static final String MT5B_AGENT     = "WebAPI_MT5B_manager";

   private static final String MT5A_SERVER    = "https://mt5a.unionmkc.com:443";
   private static final String MT5A_LOGIN     = "3001";
   private static final String MT5A_MANAGERPW = "Dnflskfk!23";
   private static final String MT5A_VERSION   = "484";
   private static final String MT5A_TYPE      = "manager";
   private static final String MT5A_AGENT     = "WebAPI_MT5A_manager";

   private static final String MT5B_SERVER    = "https://mt5a.unionmkc.com:443";
   private static final String MT5B_LOGIN     = "3002";
   private static final String MT5B_MANAGERPW = "Dnflskfk!23";
   private static final String MT5B_VERSION   = "484";
   private static final String MT5B_TYPE      = "manager";
   private static final String MT5B_AGENT     = "WebAPI_MT5B_manager";

   private static String M_SERVER    = "";
   private static String M_LOGIN     = "";
   private static String M_MANAGERPW = "";
   private static String M_VERSION   = "";
   private static String M_TYPE      = "";
   private static String M_AGENT     = "";   
  /* 
   private static String M2PURLINFO = "https://testpp.match-trade.com/paymentprocessor/api/v2/deposit/crypto_agent";
   private static String M2PAPITOKEN = "R8tFyA9nVAoEzEEp8OUc8KIdnlzM50W1yvb7";
   private static String M2PSECKEY = "P3bHoNqNfsjOXwjITGdzoNoiGITuwW5jzHEn";
   */
   

   private static String M2PURLINFO = "https://m2p.match-trade.com/api/v2/deposit/crypto_agent";
   private static String M2PAPITOKEN = "yXWu27faPqcoAAZf75iyCiHOMv5wQeUvFHGb";
   private static String M2PSECKEY = "D4aVq9oFdYwjXeUrH1TilVM6z4Gye7wIB1dg";
   
   // +--------------------------------------------------------------+
	// | Authentication |
	// +--------------------------------------------------------------+
	public static boolean sendAuth(String serverinfo) {
		
		disableSslVerification();
		
		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER    = MT5A_SERVER;
			M_LOGIN     = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION   = MT5A_VERSION;
			M_TYPE      = MT5A_TYPE;
			M_AGENT     = MT5A_AGENT;	
		} else {
			M_SERVER    = MT5B_SERVER;
			M_LOGIN     = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION   = MT5B_VERSION;
			M_TYPE      = MT5B_TYPE;
			M_AGENT     = MT5B_AGENT;	
		}
		
		String response = "";
		if (M_SERVER.isEmpty()) {
			logger.error("call initConnection with correct server first");
			return (false);
		}
		// ---
		String path = "/api/auth/start?version=" + M_VERSION + "&agent=" + M_AGENT + "&login=" + M_LOGIN + "&type="
				+ M_TYPE;
		// ---
		try {
			logger.info("sendAuth - send Http GET request");
			response = sendGet(serverinfo, path);
		} catch (Exception ex) {
			logger.error(ex.toString());
			ex.printStackTrace();
			return (false);
		}

		// ---
		if (!response.isEmpty()) {
			JSONObject json_obj = new JSONObject(response);
			String retcode = json_obj.getString("retcode");
			logger.info(retcode);
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
					logger.info("sendAuth - send Http GET request");
					sendGet(serverinfo, auth_response);
				} catch (Exception ex) {
					logger.error(ex.toString());
					ex.printStackTrace();
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
	public static String sendGet(String serverinfo, String path) throws Exception {

		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER    = MT5A_SERVER;
			M_LOGIN     = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION   = MT5A_VERSION;
			M_TYPE      = MT5A_TYPE;
			M_AGENT     = MT5A_AGENT;	
		} else {
			M_SERVER    = MT5B_SERVER;
			M_LOGIN     = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION   = MT5B_VERSION;
			M_TYPE      = MT5B_TYPE;
			M_AGENT     = MT5B_AGENT;	
		}
		
		
		String url = M_SERVER + path;
		// ---
		URL obj = new URL(url);
		HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
		// ---
		con.setRequestMethod("GET");
		// ---
		con.setRequestProperty("User-Agent", USER__AGENT);
		// ---
		int responseCode = con.getResponseCode();
		// ---
		logger.info("\nSending 'GET' request to URL : " + url);
		logger.info("Response Code : " + responseCode);
		// ---
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
		String inputLine;
		StringBuffer response = new StringBuffer();
		// ---
		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
		// ---
		logger.info(response.toString());
		return (response.toString());
	}  

	static public String sendPost(String serverinfo, String path, String parameter, String charset) throws Exception {
		// TODO Auto-generated method stub
		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER    = MT5A_SERVER;
			M_LOGIN     = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION   = MT5A_VERSION;
			M_TYPE      = MT5A_TYPE;
			M_AGENT     = MT5A_AGENT;	
		} else {
			M_SERVER    = MT5B_SERVER;
			M_LOGIN     = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION   = MT5B_VERSION;
			M_TYPE      = MT5B_TYPE;
			M_AGENT     = MT5B_AGENT;	
		}
		
		String xmlStr = "";
		String actionurl = M_SERVER + path;
        logger.info("urlinfo: " + actionurl);
        logger.info("parameter: " +parameter);
        
		URL url = new URL(actionurl);
        HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("User-Agent", USER__AGENT);
        conn.setRequestProperty("Connection", "Keep-Alive");
    	conn.setDoInput(true);
    	conn.setDoOutput(true);
    	conn.setUseCaches(false);
    	OutputStream out = conn.getOutputStream();
    	out.write(parameter.getBytes(charset));
    	out.close();
        
        logger.info("Response code: " + conn.getResponseCode());

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
        logger.info(response.toString());
        
		return (response.toString());
	}
	
	public static String sendPostByPayload(String serverinfo, String path, String payload) throws Exception {
		// TODO Auto-generated method stub
		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER    = MT5A_SERVER;
			M_LOGIN     = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION   = MT5A_VERSION;
			M_TYPE      = MT5A_TYPE;
			M_AGENT     = MT5A_AGENT;	
		} else {
			M_SERVER    = MT5B_SERVER;
			M_LOGIN     = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION   = MT5B_VERSION;
			M_TYPE      = MT5B_TYPE;
			M_AGENT     = MT5B_AGENT;	
		}
				
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

	        
        	logger.info("##url :  " + actionurl );
        	logger.info("##payload :  " + payload);
        	logger.info("##response :  " + jsonString.toString());

        	jsonstr = jsonString.toString();
        	
		} catch (Exception e) {
			jsonstr = "ERROR";
			logger.error(e.toString());
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
			logger.info("result array =" + sb_unsigned_bytes.toString());
		} else {
			logger.info("array_to_print is null");
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
			logger.info("array_to_print is null");
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
			logger.info("WebAPI byte array =" + Arrays.toString(apiWord));
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
			logger.error(ex.toString());
			ex.printStackTrace();
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
			logger.error(ex.toString());
			ex.printStackTrace();
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
			logger.error(e.toString());
			e.printStackTrace();
		} catch (KeyManagementException e) {
			logger.error(e.toString());
			e.printStackTrace();
		}

	}
	
	//+------------------------------------------------------------------+
	//| Call authentication function                                     |
	//+------------------------------------------------------------------+
	public static void main(String[] args) {
		String serverinfo = "MT5A";
		if (sendAuth(serverinfo)) {
			logger.info("auth success");
			try {
				sendGet(serverinfo, "/api/time/server");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
			logger.error("auth failed");
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
	public static String sendPostWithPayload(String serverinfo, String path, String parameter, String payload, String charset) throws Exception {
		// TODO Auto-generated method stub
		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER    = MT5A_SERVER;
			M_LOGIN     = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION   = MT5A_VERSION;
			M_TYPE      = MT5A_TYPE;
			M_AGENT     = MT5A_AGENT;	
		} else {
			M_SERVER    = MT5B_SERVER;
			M_LOGIN     = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION   = MT5B_VERSION;
			M_TYPE      = MT5B_TYPE;
			M_AGENT     = MT5B_AGENT;	
		}
				
		String actionurl = M_SERVER + path;
        logger.info("urlinfo: " + actionurl);
        logger.info("parameter: " +parameter);
        
		URL url = new URL(actionurl);
        HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("User-Agent", USER__AGENT);
        conn.setRequestProperty("Connection", "Keep-Alive");
    	conn.setDoInput(true);
    	conn.setDoOutput(true);
    	conn.setUseCaches(false);
    	
    	OutputStream out = conn.getOutputStream();
    	out.write(parameter.getBytes(charset));
    	out.close();
        
        logger.info("Response code: " + conn.getResponseCode());

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
        logger.info(response.toString());
        
		return (response.toString());

	}
	
	/**
	 * 2021-11-21 sha-384 encrypt 처리
	 * @param input
	 * @return
	 */
	public static String encryptThisString(String input)
    {
        try {
            // getInstance() method is called with algorithm SHA-384
            MessageDigest md = MessageDigest.getInstance("SHA-384");
  
            // digest() method is called
            // to calculate message digest of the input string
            // returned as array of byte
            byte[] messageDigest = md.digest(input.getBytes());
  
            // Convert byte array into signum representation
            BigInteger no = new BigInteger(1, messageDigest);
  
            // Convert message digest into hex value
            String hashtext = no.toString(16);
  
            // Add preceding 0s to make it 32 bit
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
  
            // return the HashText
            return hashtext;
        }
  
        // For specifying wrong message digest algorithms
        catch (NoSuchAlgorithmException e) {
			logger.error(e.toString());
            throw new RuntimeException(e);
        }
    }
	
    /**
     * Match2pay Crypto Deposit Create Request 요청해서 응답값을 받는다. 
     * @throws NoSuchAlgorithmException
     */
/*    public static M2PayDepositRequest getM2PayDepositRequest(M2PayDepositRequest depositRequest)
    {
    	String result = "SUCCESS";
    	String resultmessage = "SUCCESS";
    	try {
        	depositRequest.setApitoken(M2PAPITOKEN);
        	
        	// key 값들을 a-z로 정렬 작업 진행.
            String signiturestr = depositRequest.getAmount() + depositRequest.getApitoken() + depositRequest.getCallbackurl() + depositRequest.getCurrency() + depositRequest.getPaymentcurrency() + depositRequest.getTimestamp() + M2PSECKEY;
            
            logger.info("###### signiturestr parameter: " + signiturestr);
            
        	String signature = HttpUtils_20220821.encryptThisString(signiturestr);
        	
            logger.info("###### signature : " + signature);
        	depositRequest.setSignature(signature);
        	
        	RestTemplate restTemplate = new RestTemplate();

        	JSONObject depositJsonObject = new JSONObject();
        	
        	depositJsonObject.put("amount", depositRequest.getAmount());
        	depositJsonObject.put("apiToken", depositRequest.getApitoken()); 
        	depositJsonObject.put("callbackUrl", depositRequest.getCallbackurl() ); 
        	depositJsonObject.put("currency", depositRequest.getCurrency()); 
        	depositJsonObject.put("paymentCurrency", depositRequest.getPaymentcurrency()); 
        	depositJsonObject.put("timestamp", depositRequest.getTimestamp()); 
        	depositJsonObject.put("signature", depositRequest.getSignature()); 
            
        	HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
        	HttpEntity<String> request = new HttpEntity<String>(depositJsonObject.toString(), headers);
        	
        	String depositResultAsJsonStr = 
        		      restTemplate.postForObject(M2PURLINFO, request, String.class);
        	logger.info("#### depositResultAsJsonStr : " + depositResultAsJsonStr);
        	
        	JSONObject jsonobj = new JSONObject(depositResultAsJsonStr);
        	
        	if (jsonobj != null && jsonobj.isEmpty() == false && depositResultAsJsonStr.indexOf("error") < 0
        			&& jsonobj.getString("paymentId") != null && jsonobj.getString("paymentId").trim().length() > 1 ) {
        		
            	String paymentId = jsonobj.getString("paymentId");
            	String status = jsonobj.getString("status");
            	BigDecimal transactionAmount = jsonobj.getBigDecimal("transactionAmount");
            	BigDecimal netAmount = jsonobj.getBigDecimal("netAmount");
            	String transactionCurrency = jsonobj.getString("transactionCurrency");
            	String finalCurrency = jsonobj.getString("finalCurrency");
            	BigDecimal processingFee = jsonobj.getBigDecimal("processingFee");
            	String address = jsonobj.getString("address");
            	String checkoutUrl = jsonobj.getString("checkoutUrl");
        		
            	depositRequest.setPaymentid(paymentId);
            	depositRequest.setStatus(status);
            	depositRequest.setTransactionamount(transactionAmount);
            	depositRequest.setNetamount(netAmount);
            	depositRequest.setTransactioncurrency(transactionCurrency);
            	depositRequest.setFinalcurrency(finalCurrency);
            	depositRequest.setProcessingfee(processingFee);
            	depositRequest.setAddress(address);
            	depositRequest.setCheckouturl(checkoutUrl);
            	
            	logger.info("#### parse json object : " + depositRequest);
            	
        	} else {
        		result = "ERROR";
        		resultmessage = "ERROR-JSONISNULL";
        		logger.error("#### JSON parse error check  ");
        	}
    		
    	} catch(Exception e) {
    		result = "ERROR";
    		resultmessage = "ERROR-EXCEPTION : " + e.toString();
			logger.error(resultmessage);
    		e.printStackTrace();
    	}
        
    	depositRequest.setResult(result);
    	depositRequest.setResultmessage(resultmessage);
    	
    	return depositRequest;
    }	*/
}

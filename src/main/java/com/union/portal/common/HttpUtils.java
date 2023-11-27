package com.union.portal.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
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
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Random;
import java.util.UUID;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
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
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;



import okhttp3.*;

public class HttpUtils {

	private static final Logger logger = LoggerFactory.getLogger(HttpUtils.class);

/*	private static final String USER__AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";

	private static final String MT5A_SERVER = "https://mt5a.unionmks.com:443";
	private static final String MT5A_LOGIN = "3001";
	private static final String MT5A_MANAGERPW = "Dnflskfk!23";
	private static final String MT5A_VERSION = "2190"; // 484 -> 2190
	private static final String MT5A_TYPE = "manager";
	private static final String MT5A_AGENT = "WebAPI_MT5A_manager";
	public static final String SwapTradingregisterationGroupMT5_A = "wi\\real\\SmartA\""; //

	private static final String MT5B_SERVER = "https://mt5a.unionmks.com:443";
	private static final String MT5B_LOGIN = "3001";
	private static final String MT5B_MANAGERPW = "Dnflskfk!23";
	private static final String MT5B_VERSION = "2190"; // 484 -> 2190
	private static final String MT5B_TYPE = "manager";
	private static final String MT5B_AGENT = "WebAPI_MT5B_manager";
	public static final String SwapTradingregisterationGroupMT5_B = "wi\\real\\SmartA"; //

	private static final String MT5MT5Genie_SERVER = "https://20.157.16.57:443";
	private static final String MT5MT5Genie_LOGIN = "4000";
	private static final String MT5MT5Genie_MANAGERPW = "abc123!@#";
	private static final String MT5MT5Genie_VERSION = "2190"; // 484 -> 2190
	private static final String MT5Genie_TYPE = "manager";
	private static final String MT5MT5Genie_AGENT = "WebAPI_MT5Genie_manager";

	public static final String SwapTradingregisterationGroupMT5Genie = "demo\\TestOnly"; // unionmkLCC

	private static String DEFAULT_CHARSET = "UTF-8";
	private static String M_SERVER = "";
	private static String M_LOGIN = "";
	private static String M_MANAGERPW = "";
	private static String M_VERSION = "";
	private static String M_TYPE = "";
	private static String M_AGENT = "";
	private static String M_SWAPTRADINGGROUP = "";*/
	
	
	private static final String USER__AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";

	private static final String MT5A_SERVER = "https://mt5a.unionmkc.com:443";
	private static final String MT5A_LOGIN = "3002";
	private static final String MT5A_MANAGERPW = "Dnflskfk!23";
	private static final String MT5A_VERSION = "2190"; // 484 -> 2190
	private static final String MT5A_TYPE = "manager";
	private static final String MT5A_AGENT = "WebAPI_MT5A_manager";
	public static final String SwapTradingregisterationGroupMT5_A = "ecn\\real\\Basic"; //

	private static final String MT5B_SERVER = "https://mt5a.unionmkc.com:443";
	private static final String MT5B_LOGIN = "3002";
	private static final String MT5B_MANAGERPW = "Dnflskfk!23";
	private static final String MT5B_VERSION = "2190"; // 484 -> 2190
	private static final String MT5B_TYPE = "manager";
	private static final String MT5B_AGENT = "WebAPI_MT5B_manager";
	public static final String SwapTradingregisterationGroupMT5_B = "ecn\\real\\Basic"; //

	private static final String MT5MT5Genie_SERVER = "https://20.157.16.57:443";
	private static final String MT5MT5Genie_LOGIN = "4000";
	private static final String MT5MT5Genie_MANAGERPW = "abc123!@#";
	private static final String MT5MT5Genie_VERSION = "2190"; // 484 -> 2190
	private static final String MT5Genie_TYPE = "manager";
	private static final String MT5MT5Genie_AGENT = "WebAPI_MT5Genie_manager";

	public static final String SwapTradingregisterationGroupMT5Genie = "demo\\TestOnly"; // unionmkLCC

	private static String DEFAULT_CHARSET = "UTF-8";
	private static String M_SERVER = "";
	private static String M_LOGIN = "";
	private static String M_MANAGERPW = "";
	private static String M_VERSION = "";
	private static String M_TYPE = "";
	private static String M_AGENT = "";
	private static String M_SWAPTRADINGGROUP = "";
	/*
	 * private static String M2PURLINFO =
	 * "https://testpp.match-trade.com/paymentprocessor/api/v2/deposit/crypto_agent";
	 * private static String M2PAPITOKEN = "R8tFyA9nVAoEzEEp8OUc8KIdnlzM50W1yvb7";
	 * private static String M2PSECKEY = "P3bHoNqNfsjOXwjITGdzoNoiGITuwW5jzHEn";
	 */

	private static String M2PURLINFO = "https://m2p.match-trade.com/api/v2/deposit/crypto_agent";
	private static String M2PAPITOKEN = "yXWu27faPqcoAAZf75iyCiHOMv5wQeUvFHGb";
	private static String M2PSECKEY = "D4aVq9oFdYwjXeUrH1TilVM6z4Gye7wIB1dg";

	// public String DOTNETAPIURL = "http://localhost:58727/testcustomsend";
	public String DOTNETAPIURL = "http://1.224.163.106/testcustomsend";

	// test
	// +--------------------------------------------------------------+
	// | Authentication |
	// +--------------------------------------------------------------+
	private final String HTTPS = "https://";
	private String server;
	private OkHttpClient client;

	public HttpUtils(String serverinfo) {
		// --- Production mode
		// this.client = new OkHttpClient();
		// --- Debug mode

		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER = MT5A_SERVER;
			M_LOGIN = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION = MT5A_VERSION;
			M_TYPE = MT5A_TYPE;
			M_AGENT = MT5A_AGENT;
			M_SWAPTRADINGGROUP = SwapTradingregisterationGroupMT5_A;
		} else if (serverinfo != null && serverinfo.equals("MT5B")) {
			M_SERVER = MT5B_SERVER;
			M_LOGIN = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION = MT5B_VERSION;
			M_TYPE = MT5B_TYPE;
			M_AGENT = MT5B_AGENT;
			M_SWAPTRADINGGROUP = SwapTradingregisterationGroupMT5_B;
		} else if (serverinfo != null && serverinfo.equals("MT5Genie")) {
			M_SERVER = MT5MT5Genie_SERVER;
			M_LOGIN = MT5MT5Genie_LOGIN;
			M_MANAGERPW = MT5MT5Genie_MANAGERPW;
			M_VERSION = MT5MT5Genie_VERSION;
			M_TYPE = MT5Genie_TYPE;
			M_AGENT = MT5MT5Genie_AGENT;
			M_SWAPTRADINGGROUP = SwapTradingregisterationGroupMT5Genie;
		}

		this.client = HttpUtils.trustAllSslClient(new OkHttpClient());
		this.server = M_SERVER;
	}

	/**
	 * �뿉�윭媛� 諛쒖깮�븳 寃쎌슦 2 踰� �뜑 �샇異쒗븳�떎. �깉濡쒖슫 �깦�뵆濡� �젣怨듯븳 踰꾩쟾�쓣 �궗�슜�븯硫댁꽌 �븘�옒 踰꾩쟾 �궘�젣
	 * 
	 * @param serverinfo
	 * @return
	 */
//   public boolean sendAuth(String serverinfo) {
//	   logger.info("#####["+serverinfo+"] call sendAuth start " );
//	   String uuid = UUID.randomUUID().toString().replaceAll("-", "");
//	   boolean isResult = sendAuthRetry(serverinfo, uuid);
//	   
//	   if (isResult == false) {
//		   logger.error(uuid+ "##### ["+isResult+" "+serverinfo+"] sendAuth 1 error try auth");
//		   isResult = sendAuthRetry(serverinfo, uuid);
//		   
//		   if (isResult == false) {
//			   logger.error(uuid+ "#####["+isResult+" " +serverinfo+ "] sendAuth 2  error try auth");
//			   isResult = sendAuthRetry(serverinfo, uuid);
//			   if (isResult == false) {
//				   logger.error(uuid+ "#####["+serverinfo+"]sendAuth 3 final error : " + isResult);
//			   } else {
//				   logger.error(uuid+ "#####["+serverinfo+"]sendAuth 2 error after success : " + isResult);
//			   }
//		   } else {
//			   logger.error(uuid+ "#####["+serverinfo+"]sendAuth 1 error after success : " + isResult);
//		   }
//	   }
//
//	   logger.info("#####["+serverinfo+"]sendAuth 理쒖쥌泥섎━寃곌낵 : " + isResult);
//	   return isResult;
//
//   }

	public String getSwapGroupRegisteration(String serverinfo) {
		String st = "";
		if (serverinfo != null && serverinfo.equals("MT5A")) {
			st = SwapTradingregisterationGroupMT5_A;
		}

		else if (serverinfo != null && serverinfo.equals("MT5B")) {
			st = SwapTradingregisterationGroupMT5_B;
		}

		else if (serverinfo != null && serverinfo.equals("MT5Genie")) {
			st = SwapTradingregisterationGroupMT5Genie;
		}

		return st;
	}

	public boolean sendAuth(String serverinfo) {
		String response = "";
		String password = M_MANAGERPW;
		if (server.isEmpty()) {
			System.out.println("call initConnection with correct server first");
			return (false);
		}
		// ---
		String path = "/auth_start?version=" + M_VERSION + "&agent=" + M_AGENT + "&login=" + M_LOGIN + "&type=manager";
		// ---
		try {
			System.out.println("\nsendAuth - send Http GET request");
			response = sendGet(path);
		} catch (Exception ex) {
			System.out.println(ex.toString());
			return false;
		}
		// ---
		if (response != null && !response.isEmpty()) {
			JSONObject json_obj = new JSONObject(response);
			String retcode = json_obj.getString("retcode");
			System.out.println(retcode);
			if (retcode.equals("0 Done")) {
				String srv_rand = json_obj.getString("srv_rand");
				System.out.println("srv_rand = " + srv_rand);

				byte[] byte_array = DatatypeConverter.parseHexBinary(srv_rand);
				System.out.print("srv_rand in byte array: ");
				printByteResult(byte_array);
				// ---
				byte[] cli_rand_buf = getRandomHex();
				System.out.print("cli_rand_buf in byte array: ");
				printByteResult(cli_rand_buf);
				// ---
				String cli_rand_string = DatatypeConverter.printHexBinary(cli_rand_buf);
				// ---
				String srv_rand_answer = getHashFromPassword(password, byte_array);
				// ---
				String auth_response = "/auth_answer?srv_rand_answer=" + srv_rand_answer + "&cli_rand="
						+ cli_rand_string;
				System.out.println(auth_response);
				try {
					System.out.println("\nsendAuth - send Http GET request");
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
	// | �먓꺫궿둔싼궿먈꾉먁분겉녡먈� |
	// +--------------------------------------------------------------+
	public boolean sendAuth(String login, String password, String build, String agent) {
		String response = "";
		if (server.isEmpty()) {
			System.out.println("call initConnection with correct server first");
			return (false);
		}
		// ---
		String path = "/auth_start?version=" + build + "&agent=" + agent + "&login=" + login + "&type=manager";
		// ---
		try {
			System.out.println("\nsendAuth - send Http GET request");
			response = sendGet(path);
		} catch (Exception ex) {
			System.out.println(ex.toString());
			return false;
		}
		// ---
		if (response != null && !response.isEmpty()) {
			JSONObject json_obj = new JSONObject(response);
			String retcode = json_obj.getString("retcode");
			System.out.println(retcode);
			if (retcode.equals("0 Done")) {
				String srv_rand = json_obj.getString("srv_rand");
				System.out.println("srv_rand = " + srv_rand);

				byte[] byte_array = DatatypeConverter.parseHexBinary(srv_rand);
				System.out.print("srv_rand in byte array: ");
				printByteResult(byte_array);
				// ---
				byte[] cli_rand_buf = getRandomHex();
				System.out.print("cli_rand_buf in byte array: ");
				printByteResult(cli_rand_buf);
				// ---
				String cli_rand_string = DatatypeConverter.printHexBinary(cli_rand_buf);
				// ---
				String srv_rand_answer = getHashFromPassword(password, byte_array);
				// ---
				String auth_response = "/auth_answer?srv_rand_answer=" + srv_rand_answer + "&cli_rand="
						+ cli_rand_string;
				System.out.println(auth_response);
				try {
					System.out.println("\nsendAuth - send Http GET request");
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
	// | �왨궿왐�逵勻克逵 GET-鈞逵極�棘�곍� |
	// +--------------------------------------------------------------+
	public String sendGet(String path) {
		String url = server + path;
		Request request = new Request.Builder().url(url).build();
		System.out.println("### urlinfo : " + url);
		// ---
		return newCall(request);
	}

	public String sendGetExternalURL(String url) {

		Request request = new Request.Builder().url(url).build();
		System.out.println("### urlinfo : " + url);
		// ---
		return newCall(request);
	}

	// +--------------------------------------------------------------+
	// | �왨궿왐�逵勻克逵 GET-鈞逵極�棘�곍� |
	// +--------------------------------------------------------------+
	public String sendGet(String serverinfo, String path) {
		String url = server + path;
		Request request = new Request.Builder().url(url).build();
		System.out.println("### urlinfo : " + url);
		// ---
		return newCall(request);
	}
	
	
	public String sendGetOwnApi( String path) {
		
		String url = ServletUriComponentsBuilder.fromCurrentContextPath().build().toUriString() + path;
		Request request = new Request.Builder().url(url).build();
		System.out.println("### urlinfo : " + url);
		// ---
		return newCall(request);
	}
	
	
	
	

	// +--------------------------------------------------------------+
	// | |
	// +--------------------------------------------------------------+
	private String newCall(Request request) {
		try (Response response = client.newCall(request).execute()) {
			if (response.code() != 200)
				return null;
			else {
				if (response.body() != null)
					return response.body().string();
				else
					return null;
			}
		} catch (IOException e) {
			System.out.println("client.newCall failed"); // e.printStackTrace();
			return null;
		}
	}

	// +--------------------------------------------------------------+
	// | �왨궿왐�逵勻克逵 P0ST-鈞逵極�棘�곍� |
	// +--------------------------------------------------------------+
	public String sendPost(String path, String json) {
		String url = server + path;
		RequestBody requestBody = RequestBody.create(okhttp3.MediaType.parse("application/json; charset=utf-8"), json);
		Request request = new Request.Builder().url(url).post(requestBody).build();
		return newCall(request);
	}

	public String sendPost(String serverinfo, String path, String json) {
		String url = server + path;
		RequestBody requestBody = RequestBody.create(okhttp3.MediaType.parse("application/json; charset=utf-8"), json);
		Request request = new Request.Builder().url(url).post(requestBody).build();
		return newCall(request);
	}

	public boolean sendSymbolGet(String symbol_name) {
		if (symbol_name.isEmpty()) {
			System.out.println("empty symbol name");
			return (false);
		}
		String request = "/symbol_get?symbol=" + symbol_name;
		String response = "";
		try {
			response = sendGet(request);
		} catch (Exception ex) {
			System.out.println(ex.toString());
		}
		// ---
		if (response != null && !response.isEmpty()) {
			System.out.println(response);
			JSONObject json_obj = new JSONObject(response);
			String retcode = json_obj.getString("retcode");
			System.out.println(retcode);
			return (true);
		} else {
			return (false);
		}
	}

	public boolean sendAuthRetry(String serverinfo, String uuid) {
		logger.info("#####[" + serverinfo + "] call sendAuthRetry start ");
		String errorMessage = "";
		disableSslVerification();
		boolean isResult = false;

		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER = MT5A_SERVER;
			M_LOGIN = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION = MT5A_VERSION;
			M_TYPE = MT5A_TYPE;
			M_AGENT = MT5A_AGENT;
		} else {
			M_SERVER = MT5B_SERVER;
			M_LOGIN = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION = MT5B_VERSION;
			M_TYPE = MT5B_TYPE;
			M_AGENT = MT5B_AGENT;
		}

		String response = "";
		if (M_SERVER.isEmpty()) {
			errorMessage = uuid + "[" + serverinfo + "]call initConnection with correct server first";
			logger.error(errorMessage);
			// isResult = false;
			// return (false);
		}
		// ---
		String path = "/api/auth/start?version=" + M_VERSION + "&agent=" + M_AGENT + "&login=" + M_LOGIN + "&type="
				+ M_TYPE;
		// ---
		String starttime = DateUtil.getDateFormat("");
		try {
			logger.info("[" + serverinfo + "]sendAuth - send Http GET request");
			response = sendGetByServername(serverinfo, path);

			if (response.indexOf("0 Done") < 0) {
				// isResult = false;
				errorMessage = uuid + "[" + serverinfo + "]call response error /api/auth/start : " + response;
				logger.error(errorMessage);
			}

		} catch (Exception ex) {
			errorMessage = uuid + "[" + serverinfo + "]call exception /api/auth/start : " + ex.toString();
			logger.error(errorMessage);
			ex.printStackTrace();
			// isResult = false;
			// return (false);
		}

		// ---
		// error testing...
		// errorMessage = "error test...";
		if (!response.isEmpty() && (errorMessage == null || errorMessage.trim().equals(""))) {
			JSONObject json_obj = new JSONObject(response);
			String retcode = json_obj.getString("retcode");
			logger.info(retcode);
			if (retcode.equals("0 Done")) {
				String srv_rand = json_obj.getString("srv_rand");
				byte[] byte_array = DatatypeConverter.parseHexBinary(srv_rand);
				printByteResult(byte_array);
				// ---
				byte[] cli_rand_buf = getRandomHex();
				printByteResult(cli_rand_buf);
				// ---
				String cli_rand_string = DatatypeConverter.printHexBinary(cli_rand_buf);
				// ---
				String srv_rand_answer = getHashFromPassword(M_MANAGERPW, byte_array);
				// ---
				String auth_response = "/api/auth/answer?srv_rand_answer=" + srv_rand_answer + "&cli_rand="
						+ cli_rand_string;
				try {
					logger.info("[" + serverinfo + "]sendAuth - send Http GET request");

					if (srv_rand_answer != null && srv_rand_answer.trim().length() > 0 && cli_rand_string != null
							&& cli_rand_string.trim().length() > 0) {
						String resultstr = sendGetByServername(serverinfo, auth_response);
						// 2022-09-12 resultvalue check add start ////
						if (resultstr != null && resultstr.indexOf("0 Done") >= 0) {
							isResult = true;
							// return (true);
						} else {
							errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call [" + auth_response
									+ "] response error : " + resultstr + "\r\n start response : " + response;
							logger.error(errorMessage);
							// isResult = false;
							// return (false);
						}
						// 2022-09-12 resultvalue check add end ////

					} else {
						// isResult = false;
						errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call [" + auth_response
								+ "] parameter error  \r\n start response : " + response;
						logger.error(errorMessage);
					}

				} catch (Exception ex) {
					errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]start response : " + response
							+ "\r\ncall error exception [" + auth_response + "] : " + ex.toString();
					logger.error(errorMessage);
					ex.printStackTrace();
					// isResult = false;
					// return (false);
				}
			} else {
				errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call error /api/auth/start : " + response;
				logger.error(errorMessage);
				// isResult = false;
				// return (false);
			}
		} else {
			errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call /api/auth/start : response empty : "
					+ response + "\r\n errormessage exists -  " + errorMessage;
			logger.error(errorMessage);
			// isResult = false;
			// return (false);
		}

		logger.info("[" + serverinfo + "]isResult : " + isResult);
		logger.info("[" + serverinfo + "]errorMessage : " + errorMessage);

//		if (isResult == false || (errorMessage != null && errorMessage.trim().length() > 0)) {
//			// database error message save
//			userService.addWebAPIErrormessage("webapi", errorMessage);
//		}
//		
		return isResult;
	}

	public String sendAuthStr(String serverinfo) {
		logger.error("#####[" + serverinfo + "] call sendAuth start ");
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		String isResult = sendAuthRetryStr(serverinfo, uuid);

		if (isResult != null && isResult.startsWith("false")) {
			logger.error(uuid + "##### [" + isResult + " " + serverinfo + "] sendAuth 1 error try auth");
			isResult = sendAuthRetryStr(serverinfo, uuid);

			if (isResult != null && isResult.startsWith("false")) {
				logger.error(uuid + "#####[" + isResult + " " + serverinfo + "] sendAuth 2  error try auth");
				isResult = sendAuthRetryStr(serverinfo, uuid);
				if (isResult != null && isResult.startsWith("false")) {
					logger.error(uuid + "#####[" + serverinfo + "]sendAuth 3 final error : " + isResult);
				} else {
					logger.error(uuid + "#####[" + serverinfo + "]sendAuth 2 error after success : " + isResult);
				}
			} else {
				logger.error(uuid + "#####[" + serverinfo + "]sendAuth 1 error after success : " + isResult);
			}
		}

		logger.error("#####[" + serverinfo + "]sendAuth 理쒖쥌泥섎━寃곌낵 : " + isResult);
		return isResult;

	}

	public String sendAuthRetryStrNew(String serverinfo, String uuid) {
		String errorMessage = "";
		String isResult = "false-" + uuid;
		String response = "";
		String password = M_MANAGERPW;
		if (server.isEmpty()) {
			errorMessage = uuid + "[" + serverinfo + "]call initConnection with correct server first";
			logger.error(errorMessage);
		}
		// ---
		String path = "/auth_start?version=" + M_VERSION + "&agent=" + M_AGENT + "&login=" + M_LOGIN + "&type=manager";
		String starttime = DateUtil.getDateFormat("");
		// ---
		try {
			logger.info("\nsendAuth - send Http GET request");
			response = sendGet(path);
			if (response.indexOf("0 Done") < 0) {
				// isResult = false;
				errorMessage = uuid + "[" + serverinfo + "]call response error /api/auth/start : " + response;
				logger.error(errorMessage);
			}

		} catch (Exception ex) {
			errorMessage = uuid + "[" + serverinfo + "]call exception /api/auth/start : " + ex.toString();
			logger.error(errorMessage);
			ex.printStackTrace();
		}
		// ---
		if (response != null && !response.isEmpty() && (errorMessage == null || errorMessage.trim().equals(""))) {
			JSONObject json_obj = new JSONObject(response);
			String retcode = json_obj.getString("retcode");
			logger.info(retcode);
			if (retcode.equals("0 Done")) {
				String srv_rand = json_obj.getString("srv_rand");
				logger.info("srv_rand = " + srv_rand);

				byte[] byte_array = DatatypeConverter.parseHexBinary(srv_rand);
				logger.info("srv_rand in byte array: ");
				printByteResult(byte_array);
				// ---
				byte[] cli_rand_buf = getRandomHex();
				logger.info("cli_rand_buf in byte array: ");
				printByteResult(cli_rand_buf);
				// ---
				String cli_rand_string = DatatypeConverter.printHexBinary(cli_rand_buf);
				// ---
				String srv_rand_answer = getHashFromPassword(password, byte_array);
				// ---
				String auth_response = "/auth_answer?srv_rand_answer=" + srv_rand_answer + "&cli_rand="
						+ cli_rand_string;
				logger.info(auth_response);
				try {
					logger.info("\nsendAuth - send Http GET request");
					String resultstr = sendGet(auth_response);
					if (resultstr != null && resultstr.indexOf("0 Done") >= 0) {
						isResult = "true-" + uuid;
					} else {
						errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call [" + auth_response
								+ "] response error : " + resultstr + "\r\n start response : " + response;
						logger.error(errorMessage);
					}

				} catch (Exception ex) {
					errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]start response : " + response
							+ "\r\ncall error exception [" + auth_response + "] : " + ex.toString();
					logger.error(errorMessage);
					ex.printStackTrace();
				}
			}
		} else {
			errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call /api/auth/start : response empty : "
					+ response + "\r\n errormessage exists -  " + errorMessage;
			logger.error(errorMessage);
		}
		return isResult;
	}

	public String sendAuthRetryStr(String serverinfo, String uuid) {
		logger.info("#####[" + serverinfo + "] call sendAuthRetry start ");
		String errorMessage = "";
		disableSslVerification();
		String isResult = "false-" + uuid;

		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER = MT5A_SERVER;
			M_LOGIN = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION = MT5A_VERSION;
			M_TYPE = MT5A_TYPE;
			M_AGENT = MT5A_AGENT;
		} else {
			M_SERVER = MT5B_SERVER;
			M_LOGIN = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION = MT5B_VERSION;
			M_TYPE = MT5B_TYPE;
			M_AGENT = MT5B_AGENT;
		}

		String response = "";
		if (M_SERVER.isEmpty()) {
			errorMessage = uuid + "[" + serverinfo + "]call initConnection with correct server first";
			logger.error(errorMessage);
			// isResult = false;
			// return (false);
		}
		// ---
		String path = "/api/auth/start?version=" + M_VERSION + "&agent=" + M_AGENT + "&login=" + M_LOGIN + "&type="
				+ M_TYPE;
		// ---
		String starttime = DateUtil.getDateFormat("");
		try {
			logger.info("[" + serverinfo + "]sendAuth - send Http GET request");
			response = sendGetByServername(serverinfo, path);

			if (response.indexOf("0 Done") < 0) {
				// isResult = false;
				errorMessage = uuid + "[" + serverinfo + "]call response error /api/auth/start : " + response;
				logger.error(errorMessage);
			}

		} catch (Exception ex) {
			errorMessage = uuid + "[" + serverinfo + "]call exception /api/auth/start : " + ex.toString();
			logger.error(errorMessage);
			ex.printStackTrace();
			// isResult = false;
			// return (false);
		}

		// ---
		// error testing...
		// errorMessage = "error test...";
		if (!response.isEmpty() && (errorMessage == null || errorMessage.trim().equals(""))) {
			JSONObject json_obj = new JSONObject(response);
			String retcode = json_obj.getString("retcode");
			logger.info(retcode);
			if (retcode.equals("0 Done")) {
				String srv_rand = json_obj.getString("srv_rand");
				byte[] byte_array = DatatypeConverter.parseHexBinary(srv_rand);
				printByteResult(byte_array);
				// ---
				byte[] cli_rand_buf = getRandomHex();
				printByteResult(cli_rand_buf);
				// ---
				String cli_rand_string = DatatypeConverter.printHexBinary(cli_rand_buf);
				// ---
				String srv_rand_answer = getHashFromPassword(M_MANAGERPW, byte_array);
				// ---
				String auth_response = "/api/auth/answer?srv_rand_answer=" + srv_rand_answer + "&cli_rand="
						+ cli_rand_string;
				try {
					logger.info("[" + serverinfo + "]sendAuth - send Http GET request");

					if (srv_rand_answer != null && srv_rand_answer.trim().length() > 0 && cli_rand_string != null
							&& cli_rand_string.trim().length() > 0) {
						String resultstr = sendGetByServername(serverinfo, auth_response);
						// 2022-09-12 resultvalue check add start ////
						if (resultstr != null && resultstr.indexOf("0 Done") >= 0) {
							isResult = "true-" + uuid;
							// return (true);
						} else {
							errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call [" + auth_response
									+ "] response error : " + resultstr + "\r\n start response : " + response;
							logger.error(errorMessage);
							// isResult = false;
							// return (false);
						}
						// 2022-09-12 resultvalue check add end ////

					} else {
						// isResult = false;
						errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call [" + auth_response
								+ "] parameter error  \r\n start response : " + response;
						logger.error(errorMessage);
					}

				} catch (Exception ex) {
					errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]start response : " + response
							+ "\r\ncall error exception [" + auth_response + "] : " + ex.toString();
					logger.error(errorMessage);
					ex.printStackTrace();
					// isResult = false;
					// return (false);
				}
			} else {
				errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call error /api/auth/start : " + response;
				logger.error(errorMessage);
				// isResult = false;
				// return (false);
			}
		} else {
			errorMessage = uuid + ":" + starttime + "[" + serverinfo + "]call /api/auth/start : response empty : "
					+ response + "\r\n errormessage exists -  " + errorMessage;
			logger.error(errorMessage);
			// isResult = false;
			// return (false);
		}

		logger.info("[" + serverinfo + "]isResult : " + isResult);
		logger.info("[" + serverinfo + "]errorMessage : " + errorMessage);

//			if (isResult == false || (errorMessage != null && errorMessage.trim().length() > 0)) {
//				// database error message save
//				userService.addWebAPIErrormessage("webapi", errorMessage);
//			}
//			
		return isResult;
	}

	// +--------------------------------------------------------------+
	// | Send GET request |
	// +--------------------------------------------------------------+
	public static String sendGetByServername(String serverinfo, String path) throws Exception {

		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER = MT5A_SERVER;
			M_LOGIN = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION = MT5A_VERSION;
			M_TYPE = MT5A_TYPE;
			M_AGENT = MT5A_AGENT;
		} else {
			M_SERVER = MT5B_SERVER;
			M_LOGIN = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION = MT5B_VERSION;
			M_TYPE = MT5B_TYPE;
			M_AGENT = MT5B_AGENT;
		}

		String url = M_SERVER + path;
		BufferedReader in = null;
		URL obj = null;
		HttpsURLConnection con = null;

		String responsestr = "";

		try {
			// ---
			obj = new URL(url);
			con = (HttpsURLConnection) obj.openConnection();
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
			in = new BufferedReader(new InputStreamReader(con.getInputStream(), DEFAULT_CHARSET));
			String inputLine;
			StringBuffer response = new StringBuffer();
			// ---
			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
			con.disconnect();
			// ---
			System.out.println(response.toString());
			responsestr = response.toString();
		} catch (Exception e) {
			responsestr = null;
			logger.error("### sendGet path : " + serverinfo + ":" + path);
			logger.error("### sendGet error message : " + e.toString());
			e.printStackTrace();
		} finally {
			try {
				if (in != null)
					in.close();
			} catch (Exception e) {
			}
			try {
				if (con != null)
					con.disconnect();
			} catch (Exception e) {
			}
		}
		return responsestr;
	}

	static public String sendPost(String serverinfo, String path, String parameter, String charset) throws Exception {
		// TODO Auto-generated method stub
		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER = MT5A_SERVER;
			M_LOGIN = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION = MT5A_VERSION;
			M_TYPE = MT5A_TYPE;
			M_AGENT = MT5A_AGENT;
		} else {
			M_SERVER = MT5B_SERVER;
			M_LOGIN = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION = MT5B_VERSION;
			M_TYPE = MT5B_TYPE;
			M_AGENT = MT5B_AGENT;
		}

		String responsestr = "";
		String actionurl = M_SERVER + path;
		System.out.println("urlinfo: " + actionurl);
		System.out.println("parameter: " + parameter);
		URL url = null;
		HttpsURLConnection conn = null;
		BufferedReader rd = null;
		try {
			url = new URL(actionurl);
			conn = (HttpsURLConnection) url.openConnection();
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

			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), charset));
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

			responsestr = response.toString();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rd != null)
					rd.close();
			} catch (Exception e) {
			}
			try {
				if (conn != null)
					conn.disconnect();
			} catch (Exception e) {
			}

		}

		return responsestr;
	}

	public static String sendPostByPayload(String serverinfo, String path, String payload) throws Exception {
		// TODO Auto-generated method stub
		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER = MT5A_SERVER;
			M_LOGIN = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION = MT5A_VERSION;
			M_TYPE = MT5A_TYPE;
			M_AGENT = MT5A_AGENT;
		} else {
			M_SERVER = MT5B_SERVER;
			M_LOGIN = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION = MT5B_VERSION;
			M_TYPE = MT5B_TYPE;
			M_AGENT = MT5B_AGENT;
		}

		String actionurl = M_SERVER + path;
		String jsonstr = "";
		StringBuffer jsonString = new StringBuffer();
		String line = "";
		BufferedReader br = null;
		URL url = null;
		HttpsURLConnection connection = null;
		try {
			url = new URL(actionurl);
			connection = (HttpsURLConnection) url.openConnection();

			connection.setRequestMethod("POST");
			connection.setRequestProperty("Accept", "*/*");
			connection.setRequestProperty("Connection", "Keep-Alive");

			connection.setRequestProperty("Accept-Language", "ko-KR");
			connection.setRequestProperty("Content-Type", "application/json");
			// �븘�옒 �몢媛쒖쓽 媛믪� 蹂꾨룄濡� �뀑�똿�씠 �븘�슂�븿.
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

			br = new BufferedReader(new InputStreamReader(connection.getInputStream(), DEFAULT_CHARSET));

			while ((line = br.readLine()) != null) {
				jsonString.append(line);
			}
			br.close();
			connection.disconnect();

			System.out.println("##url :  " + actionurl);
			System.out.println("##payload :  " + payload);
			System.out.println("##response :  " + jsonString.toString());

			jsonstr = jsonString.toString();

		} catch (Exception e) {
			jsonstr = "ERROR";
			e.printStackTrace();
		} finally {
			try {
				if (br != null)
					br.close();
			} catch (Exception e) {
			}
			try {
				if (connection != null)
					connection.disconnect();
			} catch (Exception e) {
			}

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
	private byte[] getRandomHex() {
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
	private String getHashFromPassword(String password, byte[] randCode) {
		if (password.isEmpty() || randCode == null)
			return null;
		// ---
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] password_bytes_unicode = md.digest(password.getBytes(StandardCharsets.UTF_16LE));
			// ---
			System.out.print("#1. MD5 of pass in byte array: ");
			printByteResult(password_bytes_unicode);
			// ---
			String api_word_str = "WebAPI";
			byte[] apiWord = api_word_str.getBytes(StandardCharsets.UTF_8);
			System.out.println("#2. WebAPI byte array =" + Arrays.toString(apiWord));
			// ---
			byte[] hashContains = copyBuffer(password_bytes_unicode, apiWord);
			// ---
			System.out.print("#3. byte array of password + WebAPI: ");
			printByteResult(hashContains);
			// ---
			byte[] final_hash = md.digest(hashContains);
			System.out.print("#4. MD5 of password + WebAPI byte array: ");
			printByteResult(final_hash);
			// ---
			byte[] final_hash_plus_rand = copyBuffer(final_hash, randCode);
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
	public static byte[] copyBuffer(byte[] ar1, byte[] ar2) {
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
			logger.error(e.toString());
			e.printStackTrace();
		} catch (KeyManagementException e) {
			logger.error(e.toString());
			e.printStackTrace();
		}

	}

	// +------------------------------------------------------------------+
	// | Call authentication function |
	// +------------------------------------------------------------------+
	public static void main(String[] args) {

//		String serverinfo = "MT5A";
//		HttpUtils httpUtils = new HttpUtils(serverinfo);
//		if (httpUtils.sendAuth(serverinfo)) {
//			logger.info("auth success");
//			try {
//				sendGet(serverinfo, "/api/time/server");
//				sendGet(serverinfo, "/api/test/access");
//				
//				//for(int i = 0 ; i < 10; i++) {
//					Thread.sleep(5000);
//					sendGet(serverinfo, "/api/test/access");
//				//}
//			
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//		else
//			logger.error("auth failed");

		String respond = "error";
		String serverinfo = "MT5A";
		HttpUtils httpClient = new HttpUtils(serverinfo);

		if (httpClient.sendAuth(serverinfo))
			System.out.println("auth success");
		else {
			System.out.println("auth failed");
			return;
		}

		System.out.println("\n/get_logins request");
		respond = httpClient.sendGet("/api/client/user/get_logins?client=2320");
		System.out.println(respond);

		respond = httpClient.sendGet("/api/time/server");
		System.out.println(respond);

		System.out.println("end of main");
	}

	/**
	 * �뙆�씪�쓣 諛붿씠�듃 諛곗뿴濡� 蹂��솚 泥섎━�븿.
	 * 
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
	 * �엫�떆 鍮꾨�踰덊샇 �깮�꽦
	 * 
	 * @param length 鍮꾨�踰덊샇 湲몄씠
	 * @return �닽�옄�� 臾몄옄濡� 援ъ꽦�맂 �엫�떆 鍮꾨�踰덊샇臾몄옄�뿴
	 */
	public static String getRandomPassword(int length) {
		char[] charaters = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
				's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
		StringBuilder sb = new StringBuilder("");
		Random rn = new Random();
		for (int i = 0; i < length; i++) {
			sb.append(charaters[rn.nextInt(charaters.length)]);
		}
		return sb.toString();
	}

	/**
	 * post 諛⑹떇�쑝濡� parameter 諛� json �몢媛�吏�瑜� 紐⑤몢 �꽆湲곕뒗 寃껋쓣 �젣怨�.
	 * 
	 * @param path      webapi 寃쎈줈
	 * @param parameter post濡� �꽆湲곕뒗 �뙆�씪硫뷀꽣媛�
	 * @param payload   json�삎�깭濡� �꽆湲곕뒗 �뙆�씪硫뷀꽣媛�
	 * @param charset   臾몄옄�뀑 (湲곕낯 UTF-8 : �꽌踰꾪솚寃쎌뿉 �뵲�씪�꽌 �떎瑜닿쾶 �몴�쁽)
	 * @return 寃곌낵媛�
	 */
	public static String sendPostWithPayload(String serverinfo, String path, String parameter, String payload,
			String charset) throws Exception {
		// TODO Auto-generated method stub
		if (serverinfo != null && serverinfo.equals("MT5A")) {
			M_SERVER = MT5A_SERVER;
			M_LOGIN = MT5A_LOGIN;
			M_MANAGERPW = MT5A_MANAGERPW;
			M_VERSION = MT5A_VERSION;
			M_TYPE = MT5A_TYPE;
			M_AGENT = MT5A_AGENT;
		} else {
			M_SERVER = MT5B_SERVER;
			M_LOGIN = MT5B_LOGIN;
			M_MANAGERPW = MT5B_MANAGERPW;
			M_VERSION = MT5B_VERSION;
			M_TYPE = MT5B_TYPE;
			M_AGENT = MT5B_AGENT;
		}

		String actionurl = M_SERVER + path;
		logger.info("urlinfo: " + actionurl);
		logger.info("parameter: " + parameter);
		URL url = null;
		HttpsURLConnection conn = null;
		String responsestr = "";
		BufferedReader rd = null;
		try {
			url = new URL(actionurl);
			conn = (HttpsURLConnection) url.openConnection();
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

			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), charset));
			} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(), charset));
			}
			StringBuilder response = new StringBuilder();
			String line;
			while ((line = rd.readLine()) != null) {
				response.append(line);
			}

			responsestr = response.toString();
			rd.close();
			conn.disconnect();
			logger.info(responsestr);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rd != null)
					rd.close();
			} catch (Exception e) {
			}
			try {
				if (conn != null)
					conn.disconnect();
			} catch (Exception e) {
			}
		}

		return responsestr;

	}

	/**
	 * 2021-11-21 sha-384 encrypt 泥섎━
	 * 
	 * @param input
	 * @return
	 */
	public static String encryptThisString(String input) {
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
	 * Match2pay Crypto Deposit Create Request �슂泥��빐�꽌 �쓳�떟媛믪쓣 諛쏅뒗�떎.
	 * 
	 * @throws NoSuchAlgorithmException
	 */

	// +--------------------------------------------------------------+
	// | �왨궿분뿌롋눺둔싻먁� SSL 極�龜 龜�곍왈압뿌뚍론압꽥겆싻먁� 戟筠畇棘勻筠�筠戟戟�뗋� �곍둘��궿먈꾉먁분겉궿압� |
	// +--------------------------------------------------------------+
	private static final TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {
		@Override
		public void checkClientTrusted(java.security.cert.X509Certificate[] chain, String authType)
				throws CertificateException {
		}

		@Override
		public void checkServerTrusted(java.security.cert.X509Certificate[] chain, String authType)
				throws CertificateException {
		}

		@Override
		public java.security.cert.X509Certificate[] getAcceptedIssuers() {
			return new java.security.cert.X509Certificate[] {};
		}
	} };
	private static final SSLContext trustAllSslContext;

	static {
		try {
			trustAllSslContext = SSLContext.getInstance("SSL");
			trustAllSslContext.init(null, trustAllCerts, new java.security.SecureRandom());
		} catch (NoSuchAlgorithmException | KeyManagementException e) {
			throw new RuntimeException(e);
		}
	}

	private static final SSLSocketFactory trustAllSslSocketFactory = trustAllSslContext.getSocketFactory();

	public static OkHttpClient trustAllSslClient(OkHttpClient client) {
		System.out.println("Using the trustAllSslClient is highly discouraged and should not be used in Production!");
		OkHttpClient.Builder builder = client.newBuilder();
		builder.sslSocketFactory(trustAllSslSocketFactory, (X509TrustManager) trustAllCerts[0]);
		builder.hostnameVerifier(new HostnameVerifier() {
			@Override
			public boolean verify(String hostname, SSLSession session) {
				return true;
			}
		});
		return builder.build();
	}

}

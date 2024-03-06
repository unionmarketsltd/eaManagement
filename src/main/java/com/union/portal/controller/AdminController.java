package com.union.portal.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.MediaType;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
// file import apache.poi
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Random;
import java.util.regex.Pattern;

import javax.mail.Quota.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
// file upload apache.poi
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.union.portal.common.APIProtectionHandler;
import com.union.portal.common.HttpUtils;
import com.union.portal.common.Pagination;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.forum_and_cat_name;
import com.union.portal.domain.scroll_topic_info;
import com.union.portal.domain.t_forum;
import com.union.portal.domain.t_forum_category;
import com.union.portal.domain.t_forum_comment;
import com.union.portal.domain.t_forum_topic;
import com.union.portal.domain.t_forum_topic_file;
import com.union.portal.domain.t_forum_topiccount;
import com.union.portal.domain.t_mt5_account_list;
import com.union.portal.domain.t_mt5_accountlist;
import com.union.portal.domain.t_kr_account_list;
import com.union.portal.domain.t_kr_account_history;
import com.union.portal.domain.t_kr_account_forum_list;
import com.union.portal.domain.t_top_latest_news;
import com.union.portal.domain.topic_comment_list;
import com.union.portal.domain.topic_comment_user_like;
import com.union.portal.domain.topic_search_result;
import com.union.portal.domain.topic_subcomment_list;
import com.union.portal.domain.t_user;
import com.union.portal.domain.topic_comment_likes;
import com.union.portal.service.AdminService;
import com.union.portal.service.ForumService;
import com.union.portal.service.UploadService;

import lombok.AllArgsConstructor;
import com.union.portal.domain.calculator;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final boolean ISONESERVER = true;

	private static final Pattern GET_NUMBER = Pattern.compile("[0-9]+");

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	private static String defaultpath = "/admin/";

	// private static String serverinfo = "MT5Genie";

	private static String serverinfo = "MT5B";

	private FileSystemResource uploadFilePath;

	@Autowired
	SessionLocaleResolver localeResolver;

	@Autowired
	AdminService adminservices;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		int pagenumber = 1;
		int rowperpage = 30;
		String page = request.getParameter("page");
		if (page != null && page != "") {
			pagenumber = Integer.parseInt(page);
			if (pagenumber < 1) {
				pagenumber = 1;
			}

		}

		List<t_user> clientlist = adminservices.getclientlist(String.valueOf(rowperpage), String.valueOf(pagenumber));
		model.addAttribute("clientlist", clientlist);
		int totalpage = adminservices.getclientlisttotalPage(rowperpage);
		model.addAttribute("pagination", Pagination.createPaginationModule(request, pagenumber, totalpage));

		returnURL = "/index";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = { "/api/toggleban" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getscrolltopicinfo(HttpServletRequest request, Model model) {

		ModelAndView mav = new ModelAndView("jsonView");
		String id = request.getParameter("id");
		String ban = request.getParameter("ban");
		String responsestr = "";
		logger.info(id);
		logger.info(ban);
		if(APIProtectionHandler.isloginAdmin(request))
		{
			
		
		adminservices.updateclientlist(ban, id);

		
		}
		mav.addObject("result", APIProtectionHandler.ApiProtectionAdmin(request,responsestr));
		return mav;
	}

	@RequestMapping(value = { "/api/toggleadmin" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView apitoggleadmin(HttpServletRequest request, Model model) {

		ModelAndView mav = new ModelAndView("jsonView");
		String id = request.getParameter("id");
		String ban = request.getParameter("ban");

		logger.info(id);
		logger.info(ban);

		

		String responsestr = "";
		if(APIProtectionHandler.isloginAdmin(request))
		{
		adminservices.updatetoggleadmin(ban, id);
			
		}
		mav.addObject("result", APIProtectionHandler.ApiProtectionAdmin(request,responsestr));
		return mav;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model) {
		logger.info("Welcome logout.");
		String redirect = request.getParameter("redirect");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		HttpSession session = request.getSession(false);
		if (session != null)
			session.invalidate();
		// request.getRequestDispatcher("/main.jsp").forward(request,response);
		logger.info("redirect" + redirect);
		if (redirect != null) {
			return "redirect:" + defaultpath + "login?redirect=" + redirect;
		} else {
			return "redirect:" + defaultpath + "login";
		}

	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String slash(Model model) {
		logger.info("Welcome home! slash.");

		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";

		returnURL = "/login";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome home! Login.");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		returnURL = "/login";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/loginByGoogle", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ModelAndView loginConfirm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();

		logger.info("welcome login by google" + serverinfo);
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		String token = request.getParameter("token");
		JSONObject UserGoogleLoginCredential = new JSONObject(decodeJwtResponse(token));

		String email = UserGoogleLoginCredential.getString("email");

		int isadmin = adminservices.getisadmin(email);

		if (isadmin == 1) {
			session.setAttribute("s_GEmail", email);
			session.setAttribute("s_IsAdmin", "1");
			responsestr = defaultpath + "index";
			logger.info((String) session.getAttribute("s_GName"));
		} else {
			responsestr = defaultpath + "login";
		}

		logger.info(responsestr);
		mav.addObject("result", responsestr);
		return mav;
	}

	public static String decodeJwtResponse(String token) {
		String base64Url = token.split("\\.")[1];
		String base64 = base64Url.replace("-", "+").replace("_", "/");
		String jsonPayload = new String(Base64.getDecoder().decode(base64));
		jsonPayload = Pattern.compile("\\p{C}").matcher(jsonPayload).replaceAll("");
		System.out.println(jsonPayload);
		return jsonPayload;
	}

	public static String convertImageToBase64(String imageUrl) throws IOException {
		URL url = new URL(imageUrl);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("GET");

		try (InputStream inputStream = connection.getInputStream()) {
			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
			byte[] buffer = new byte[1024];
			int bytesRead;

			while ((bytesRead = inputStream.read(buffer)) != -1) {
				outputStream.write(buffer, 0, bytesRead);
			}

			byte[] imageBytes = outputStream.toByteArray();
			return "data:image/jpeg;base64, " + Base64.getEncoder().encodeToString(imageBytes);
		} finally {
			connection.disconnect();
		}
	}

	@RequestMapping(value = "/forumsetting", method = RequestMethod.GET)
	public String forumsetting(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";

		int pagenumber = 1;
		int rowperpage = 30;
		String page = request.getParameter("page");
		if (page != null && page != "") {
			pagenumber = Integer.parseInt(page);
			if (pagenumber < 1) {
				pagenumber = 1;
			}

		}

		List<t_forum> forumlist = adminservices.getforumlist(String.valueOf(rowperpage), String.valueOf(pagenumber));
		model.addAttribute("forumlist", forumlist);
		int totalpage = adminservices.getforumlisttotalPage(rowperpage);
		model.addAttribute("pagination", Pagination.createPaginationModule(request, pagenumber, totalpage));

		returnURL = "/forumsetting";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/forumedit", method = RequestMethod.GET)
	public String forumedit(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String id = request.getParameter("id");

		String returnURL = "";
		t_forum forumdetailbyid = adminservices.getforumdetailbyid(id);

		model.addAttribute("forumdetailbyid", forumdetailbyid);
		returnURL = "/forumedit";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = { "/api/editforumdetail" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView apieditforumdetail(HttpServletRequest request, Model model) {

		ModelAndView mav = new ModelAndView("jsonView");
		
		if(APIProtectionHandler.isloginAdmin(request))
		{
		
		String title = request.getParameter("title");
		String desc = request.getParameter("desc");
		String logo = request.getParameter("logo");
		String id = request.getParameter("id");
		adminservices.updateupdateforumdetail(title, desc, logo, id);
		}
		String responsestr = "";

		mav.addObject("result", APIProtectionHandler.ApiProtectionAdmin(request,responsestr));
		
		
		return mav;
	}

	@RequestMapping(value = { "/api/deleteforum" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView apideleteforum(HttpServletRequest request, Model model) {

		ModelAndView mav = new ModelAndView("jsonView");
		if(APIProtectionHandler.isloginAdmin(request))
		{
		
		String id = request.getParameter("id");
		adminservices.updatedeleteforum(id);
		}
		String responsestr = "";

		mav.addObject("result", APIProtectionHandler.ApiProtectionAdmin(request,responsestr));
		return mav;
	}

	@RequestMapping(value = "/categorysetting", method = RequestMethod.GET)
	public String categorysetting(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";

		int pagenumber = 1;
		int rowperpage = 30;
		String page = request.getParameter("page");
		if (page != null && page != "") {
			pagenumber = Integer.parseInt(page);
			if (pagenumber < 1) {
				pagenumber = 1;
			}

		}

		List<t_forum_category> categorylist = adminservices.getcategorylist(String.valueOf(rowperpage),
				String.valueOf(pagenumber));
		model.addAttribute("categorylist", categorylist);
		int totalpage = adminservices.getcategorylisttotalPage(rowperpage);
		model.addAttribute("pagination", Pagination.createPaginationModule(request, pagenumber, totalpage));

		returnURL = "/categorysetting";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/categoryedit", method = RequestMethod.GET)
	public String categoryedit(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String id = request.getParameter("id");

		t_forum_category categorydetails = adminservices.getcategorydetails(id);

		model.addAttribute("categorydetails", categorydetails);

		String returnURL = "";

		returnURL = "/categoryedit";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = { "/api/editcategorydetail" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView editcategorydetail(HttpServletRequest request, Model model) {

		ModelAndView mav = new ModelAndView("jsonView");
		if(APIProtectionHandler.isloginAdmin(request))
		{
		
		String title = request.getParameter("title");
		String desc = request.getParameter("desc");
		String id = request.getParameter("id");
		adminservices.updateeditcategorydetails(title, desc, id);
		}
		String responsestr = "";

		mav.addObject("result", APIProtectionHandler.ApiProtectionAdmin(request,responsestr));
		return mav;
	}

	@RequestMapping(value = { "/api/deletecategory" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView deletecategory(HttpServletRequest request, Model model) {

		ModelAndView mav = new ModelAndView("jsonView");
		if(APIProtectionHandler.isloginAdmin(request))
		{
		
		String id = request.getParameter("id");
		adminservices.updatedeletecategory(id);
		}
		String responsestr = "";

		mav.addObject("result", APIProtectionHandler.ApiProtectionAdmin(request,responsestr));
		return mav;
	}

	@RequestMapping(value = "/topicsetting", method = RequestMethod.GET)
	public String topicsetting(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";

		int pagenumber = 1;
		int rowperpage = 30;
		String page = request.getParameter("page");
		if (page != null && page != "") {
			pagenumber = Integer.parseInt(page);
			if (pagenumber < 1) {
				pagenumber = 1;
			}

		}

		String keyword = request.getParameter("keyword");
		if (keyword != null && keyword != "") {
			List<t_forum_topic> searchtopic = adminservices.getsearchtopic(String.valueOf(rowperpage),
					String.valueOf(pagenumber), keyword);
			model.addAttribute("topiclist", searchtopic);
			int totalpage = adminservices.getsearchtopictotalPage(rowperpage, keyword);
			model.addAttribute("pagination", Pagination.createPaginationModule(request, pagenumber, totalpage));
			model.addAttribute("tabletype", "Search result");

		} else {
			List<t_forum_topic> topiclist = adminservices.gettopiclist(String.valueOf(rowperpage),
					String.valueOf(pagenumber));
			model.addAttribute("topiclist", topiclist);
			int totalpage = adminservices.getttopiclisttotalPage(rowperpage);
			model.addAttribute("pagination", Pagination.createPaginationModule(request, pagenumber, totalpage));
			model.addAttribute("tabletype", "All");

		}

		model.addAttribute("keyword", keyword);
		returnURL = "/topicsetting";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = { "/api/deletetopic" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView deletetopic(HttpServletRequest request, Model model) {
		ModelAndView mav = new ModelAndView("jsonView");
		if(APIProtectionHandler.isloginAdmin(request))
		{
		
		String id = request.getParameter("id");

		adminservices.updatedeletetopic(id);
		}
		String responsestr = "";

		mav.addObject("result", APIProtectionHandler.ApiProtectionAdmin(request,responsestr));
		return mav;
	}

	@RequestMapping(value = "/commentsetting", method = RequestMethod.GET)
	public String commentsetting(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		String keyword = request.getParameter("keyword");
		if (keyword != null && keyword != "") {
			List<t_forum_comment> searchcomment = adminservices.getsearchcomment(keyword);

			model.addAttribute("searchcomment", searchcomment);
			model.addAttribute("showtable", "");
			logger.info("test");
		} else {
			model.addAttribute("showtable", "none");
			logger.info("test");
		}
		model.addAttribute("keyword", keyword);
		returnURL = "/commentsetting";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = { "/api/deletecomment" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView deletecomment(HttpServletRequest request, Model model) {
		ModelAndView mav = new ModelAndView("jsonView");
		if(APIProtectionHandler.isloginAdmin(request))
		{
		
		String id = request.getParameter("id");
		adminservices.updatedeletecomment(id);
		}
		String responsestr = "";
		
		mav.addObject("result", APIProtectionHandler.ApiProtectionAdmin(request,responsestr));
		return mav;
	}

	
	
	@RequestMapping(value = "/DealsUpload", method = RequestMethod.GET)
	public String DealsUpload(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";

		List<t_kr_account_forum_list> acclist = null;
		acclist = adminservices.getaccountforumlist();
		model.addAttribute("nowform", acclist);

		returnURL = "/DealsUpload";

		return defaultpath + returnURL;
	}
	
	
	@PostMapping(value = { "/api/posthistorydata" }, consumes = { "application/json" }, produces = {
			"application/json" })
		public ModelAndView api_createnewtopic(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONArray JSONARRAY = new JSONArray(body);
		String responsestr="";
		String id = request.getParameter("id");
		logger.info(id);
		// logger.info(JSONARRAY.getJSONObject(0).getString("transactionDate"));
		
		// 10 JSONARRAY.length()	
		for( int i=0; i< JSONARRAY.length()	; i++)
		{
			String tradedate = JSONARRAY.getJSONObject(i).getString("transactionDate");
			String symbol = JSONARRAY.getJSONObject(i).getString("item");
			String type = JSONARRAY.getJSONObject(i).getString("type");
			double lots = JSONARRAY.getJSONObject(i).getDouble("volume");
		
			double closeprice = JSONARRAY.getJSONObject(i).getDouble("price");
			double openprice = JSONARRAY.getJSONObject(i).getDouble("entryPrice");
			String currency = JSONARRAY.getJSONObject(i).getString("currency");
			double profit = JSONARRAY.getJSONObject(i).getDouble("futureProfitLoss");
			String closedate = JSONARRAY.getJSONObject(i).getString("dealDateTime");
			String opendate = JSONARRAY.getJSONObject(i).getString("entryDateTime");
			
			// save into database
			adminservices.insertxlsdatafile(id, tradedate, symbol, type, lots, closeprice, openprice, currency, profit, closedate,  opendate);
			
		}
		
		
		mav.addObject("result",  responsestr);
		return mav;
		}
	
	
	
	@RequestMapping(value = { "/Clist" }, method = { RequestMethod.GET })
	public String Clist(HttpServletRequest request, Model model) {
		logger.info("Welcome Client Trading Account List! Index.");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		
		
		JSONArray list = new JSONArray();
		HttpUtils httpUtils = new HttpUtils(serverinfo);
		String responsestr = null;
		
		if (httpUtils.sendAuth(serverinfo)) { 
			
			String group = httpUtils.getSwapGroupRegisteration(serverinfo);
			String ApiPath = "/api/user/logins"; 
		// + group     /client/get_ids" /client/user/get_logins?client=" + 4012;  
			logger.info("Check Api Path - " + ApiPath);
			 
			try { 
				responsestr = httpUtils.sendGet(serverinfo, ApiPath);
				if (responsestr.indexOf("0 Done") > 0) { 
					// logger.info("API RESULT" + responsestr);
					JSONObject outputobject = new JSONObject(responsestr);
					JSONArray theAnswer = outputobject.getJSONArray("answer"); // getJSONObject
					// logger.info("NEW API RESULT - " + theAnswer);
					// JSONArray newAnswer = theAnswer.getJSONArray(result);
					String accountlist = theAnswer.toString().replace("[", "").replace("]", "");
					String newAccountlist = accountlist.toString().replace("\"", "");
					// logger.info("NEW API RESULT - " + accountlist);
					logger.info("NEW API RESULT - " + newAccountlist);
					
					
		        }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		String returnURL = "";
		returnURL = "/Clist";
		return String.valueOf(defaultpath) + returnURL ;// String.valueOf(defaultpath) + returnURL
	}
	
	
	
	@RequestMapping(value = { "/huha" }, method = { RequestMethod.GET })
	public String huha(HttpServletRequest request, Model model) {
		logger.info("Welcome Client Trading Account List! Index.");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		
		
		JSONArray list = new JSONArray();
		HttpUtils httpUtils = new HttpUtils(serverinfo);
		String responsestr = null;
		
		if (httpUtils.sendAuth(serverinfo)) { 
			
			String group = httpUtils.getSwapGroupRegisteration(serverinfo);
			String ApiPath = "/api/position/get_page?login=3785&offset=0&total=100"; 
		// + group     /client/get_ids" /client/user/get_logins?client=" + 4012;  
			logger.info("Check Api Path - " + ApiPath);
			 
			try { 
				responsestr = httpUtils.sendGet(serverinfo, ApiPath);
				if (responsestr.indexOf("0 Done") > 0) { 
					// logger.info("API RESULT" + responsestr);
					JSONObject outputobject = new JSONObject(responsestr);
					JSONArray theAnswer = outputobject.getJSONArray("answer"); // getJSONObject
					// logger.info("NEW API RESULT - " + theAnswer);
					// JSONArray newAnswer = theAnswer.getJSONArray(result);
					// String accountlist = theAnswer.toString().replace("[", "").replace("]", "");
					// String newAccountlist = accountlist.toString().replace("\"", "");
					// logger.info("NEW API RESULT - " + accountlist);
					// logger.info("NEW API RESULT - " + newAccountlist);
					
					String TEstest = "";
					for(int i=0; i<theAnswer.length(); i++) {
						String wadada = theAnswer.getJSONObject(i).getString("Position");
						TEstest = wadada+","+TEstest;
						// adminservices.insertMT5data(wadada);
					}
					logger.info(TEstest);
		        }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		String returnURL = "";
		returnURL = "/huha";
		return String.valueOf(defaultpath) + returnURL ;// String.valueOf(defaultpath) + returnURL
	}
	
	
	@RequestMapping(value = { "/trah" }, method = { RequestMethod.GET })
	public String trah(HttpServletRequest request, Model model) {
		logger.info("Welcome trah! Index.");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		
		List<t_mt5_accountlist> acclist = new ArrayList<>();
		acclist = adminservices.getmt5accountlist();
		String accountlist = acclist.toString().replace("[", "").replace("t_mt5_accountlist", "").replace("login", "").replace("=", "").replace("(", "").replace(")", "").replace(" ", "").replace("]", "");
		logger.info("info this one: "+accountlist);
		
		
		JSONArray list = new JSONArray();
		HttpUtils httpUtils = new HttpUtils(serverinfo);
		String responsestr = null;
		
		if (httpUtils.sendAuth(serverinfo)) { 
			long currentTimeMillis = System.currentTimeMillis();
			long currentSeconds = currentTimeMillis / 1000;
			
			String group = httpUtils.getSwapGroupRegisteration(serverinfo); // + Long.toString(currentSeconds)
			String ApiPath = "/api/deal/get_batch?login=" + accountlist + "&from=0&to="+ Long.toString(currentSeconds) ; // /api/position/get_page?login=82696384,82696246&offset=0&total=100"
		// + group     /client/get_ids" /client/user/get_logins?client=" + 4012;  
			// logger.info("Check Api Path - " + ApiPath);
			 
			try { 
				responsestr = httpUtils.sendGet(serverinfo, ApiPath);
				if (responsestr.indexOf("0 Done") > 0) { 
					// logger.info("API RESULT" + responsestr);
					JSONObject outputobject = new JSONObject(responsestr);
					JSONArray theAnswer = outputobject.getJSONArray("answer"); // getJSONObject
					logger.info("NEW API RESULT - " + theAnswer); // .length()
					
					for(int i=0; i<theAnswer.length(); i++) {
						int Action = theAnswer.getJSONObject(i).getInt("Action");
						String Symbol = theAnswer.getJSONObject(i).getString("Symbol");
						String PositionID = theAnswer.getJSONObject(i).getString("PositionID");
						String ExternalID = theAnswer.getJSONObject(i).getString("ExternalID");
						String Digits = theAnswer.getJSONObject(i).getString("Digits");						
						String Commission = theAnswer.getJSONObject(i).getString("Commission");
						String MarketBid = theAnswer.getJSONObject(i).getString("MarketBid");
						String Time = theAnswer.getJSONObject(i).getString("Time");						
						String RateMargin = theAnswer.getJSONObject(i).getString("RateMargin");
						String Reason = theAnswer.getJSONObject(i).getString("Reason");
						String VolumeClosed = theAnswer.getJSONObject(i).getString("VolumeClosed");
						String VolumeExt = theAnswer.getJSONObject(i).getString("VolumeExt");
						String Entry = theAnswer.getJSONObject(i).getString("Entry");
						String PriceTP = theAnswer.getJSONObject(i).getString("PriceTP");
						String TickSize = theAnswer.getJSONObject(i).getString("TickSize");
						String Gateway = theAnswer.getJSONObject(i).getString("Gateway");
						String Profit = theAnswer.getJSONObject(i).getString("Profit");
						String PricePosition = theAnswer.getJSONObject(i).getString("PricePosition");
						String VolumeClosedExt = theAnswer.getJSONObject(i).getString("VolumeClosedExt");
						String Order = theAnswer.getJSONObject(i).getString("Order");
						String PriceGateway = theAnswer.getJSONObject(i).getString("PriceGateway");
						String Comment = theAnswer.getJSONObject(i).getString("Comment");
						String ExpertID = theAnswer.getJSONObject(i).getString("ExpertID");
						String ContractSize = theAnswer.getJSONObject(i).getString("ContractSize");
						String Fee = theAnswer.getJSONObject(i).getString("Fee");
						String Login = theAnswer.getJSONObject(i).getString("Login");
						String Flags = theAnswer.getJSONObject(i).getString("Flags");
						String Deal = theAnswer.getJSONObject(i).getString("Deal");		
						String ProfitRaw = theAnswer.getJSONObject(i).getString("ProfitRaw");
						String TickValue = theAnswer.getJSONObject(i).getString("TickValue");
						String DigitsCurrency = theAnswer.getJSONObject(i).getString("DigitsCurrency");
						String Storage = theAnswer.getJSONObject(i).getString("Storage");
						String PriceSL = theAnswer.getJSONObject(i).getString("PriceSL");
						String RateProfit = theAnswer.getJSONObject(i).getString("RateProfit");
						String MarketAsk = theAnswer.getJSONObject(i).getString("MarketAsk");
						String Price = theAnswer.getJSONObject(i).getString("Price");
						String Volume = theAnswer.getJSONObject(i).getString("Volume");
						String ModifyFlags = theAnswer.getJSONObject(i).getString("ModifyFlags");
						String TimeMsc = theAnswer.getJSONObject(i).getString("TimeMsc");
						String MarketLast = theAnswer.getJSONObject(i).getString("MarketLast");
						String Value = theAnswer.getJSONObject(i).getString("Value");
						String Dealer = theAnswer.getJSONObject(i).getString("Dealer");
						// String wadada = theAnswer.getJSONObject(i).getString("Position");
						
						if(Action < 2) {
							// CHECKTHIS un-Comment below for database insertion
							// adminservices.insertMT5dataFetch(Action, Symbol, PositionID, ExternalID, Digits, Commission, MarketBid, Time, RateMargin, Reason, VolumeClosed, VolumeExt, Entry, PriceTP, TickSize, Gateway, Profit, PricePosition, VolumeClosedExt, Order, PriceGateway, Comment, ExpertID, ContractSize, Fee, Login, Flags, Deal, ProfitRaw, TickValue, DigitsCurrency, Storage, PriceSL, RateProfit, MarketAsk, Price, Volume, ModifyFlags, TimeMsc, MarketLast, Value, Dealer);
							
						}
						// adminservices.insertMT5data(wadada);
					}
		        }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		String returnURL = "";
		returnURL = "/trah";
		return String.valueOf(defaultpath) + returnURL ;// String.valueOf(defaultpath) + returnURL
	}
	
	
	
	
	@RequestMapping(value = { "/trahasd" }, method = { RequestMethod.GET })
	public String trahasd(HttpServletRequest request, Model model) {
		logger.info("Welcome trah! Index.");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		
		List<t_mt5_accountlist> acclist = new ArrayList<>();
		acclist = adminservices.getmt5accountlist();
		String accountlist = acclist.toString().replace("[", "").replace("t_mt5_accountlist", "").replace("login", "").replace("=", "").replace("(", "").replace(")", "").replace(" ", "").replace("]", "");
		logger.info("info this one: "+accountlist);
		
		
		JSONArray list = new JSONArray();
		HttpUtils httpUtils = new HttpUtils(serverinfo);
		String responsestr = null;
		
		if (httpUtils.sendAuth(serverinfo)) { 
			long currentTimeMillis = System.currentTimeMillis();
			long currentSeconds = currentTimeMillis / 1000;
			
			String group = httpUtils.getSwapGroupRegisteration(serverinfo); // + Long.toString(currentSeconds)
			String ApiPath = "/api/deal/get_batch?login=" + accountlist + "&from=0&to="+ Long.toString(currentSeconds) ; // /api/position/get_page?login=82696384,82696246&offset=0&total=100"
		// + group     /client/get_ids" /client/user/get_logins?client=" + 4012;  
			// logger.info("Check Api Path - " + ApiPath);
			 
			int j = 0;
			int batchingCounter = 1;
			String batchingConstructor = "";
			String batching = "";
			

			try { 
				responsestr = httpUtils.sendGet(serverinfo, ApiPath);
				if (responsestr.indexOf("0 Done") > 0) { 
					// logger.info("API RESULT" + responsestr);
					JSONObject outputobject = new JSONObject(responsestr);
					JSONArray theAnswer = outputobject.getJSONArray("answer"); // getJSONObject
					logger.info("NEW API RESULT - " + theAnswer); // .length()
					int arrayLength = theAnswer.length();
					
					while(j < 10) { // arrayLength
							
						int Action = theAnswer.getJSONObject(j).getInt("Action");
						
						if(batchingCounter%100==0) {
							batchingConstructor = "("+Action+")";
							batching = batching+ "," + batchingConstructor;
							
							batchingCounter = 0;
						} else {
							batchingConstructor = "("+Action+")";
							batching = batching+ "," + batchingConstructor;
						}
						
						batchingCounter++;
						j++;
					}
					logger.info(batching);
					
					for(int i=0; i<theAnswer.length(); i++) {
						int Action = theAnswer.getJSONObject(i).getInt("Action");
						String Symbol = theAnswer.getJSONObject(i).getString("Symbol");
						String PositionID = theAnswer.getJSONObject(i).getString("PositionID");
						String ExternalID = theAnswer.getJSONObject(i).getString("ExternalID");
						String Digits = theAnswer.getJSONObject(i).getString("Digits");						
						String Commission = theAnswer.getJSONObject(i).getString("Commission");
						String MarketBid = theAnswer.getJSONObject(i).getString("MarketBid");
						String Time = theAnswer.getJSONObject(i).getString("Time");						
						String RateMargin = theAnswer.getJSONObject(i).getString("RateMargin");
						String Reason = theAnswer.getJSONObject(i).getString("Reason");
						String VolumeClosed = theAnswer.getJSONObject(i).getString("VolumeClosed");
						String VolumeExt = theAnswer.getJSONObject(i).getString("VolumeExt");
						String Entry = theAnswer.getJSONObject(i).getString("Entry");
						String PriceTP = theAnswer.getJSONObject(i).getString("PriceTP");
						String TickSize = theAnswer.getJSONObject(i).getString("TickSize");
						String Gateway = theAnswer.getJSONObject(i).getString("Gateway");
						String Profit = theAnswer.getJSONObject(i).getString("Profit");
						String PricePosition = theAnswer.getJSONObject(i).getString("PricePosition");
						String VolumeClosedExt = theAnswer.getJSONObject(i).getString("VolumeClosedExt");
						String Order = theAnswer.getJSONObject(i).getString("Order");
						String PriceGateway = theAnswer.getJSONObject(i).getString("PriceGateway");
						String Comment = theAnswer.getJSONObject(i).getString("Comment");
						String ExpertID = theAnswer.getJSONObject(i).getString("ExpertID");
						String ContractSize = theAnswer.getJSONObject(i).getString("ContractSize");
						String Fee = theAnswer.getJSONObject(i).getString("Fee");
						String Login = theAnswer.getJSONObject(i).getString("Login");
						String Flags = theAnswer.getJSONObject(i).getString("Flags");
						String Deal = theAnswer.getJSONObject(i).getString("Deal");		
						String ProfitRaw = theAnswer.getJSONObject(i).getString("ProfitRaw");
						String TickValue = theAnswer.getJSONObject(i).getString("TickValue");
						String DigitsCurrency = theAnswer.getJSONObject(i).getString("DigitsCurrency");
						String Storage = theAnswer.getJSONObject(i).getString("Storage");
						String PriceSL = theAnswer.getJSONObject(i).getString("PriceSL");
						String RateProfit = theAnswer.getJSONObject(i).getString("RateProfit");
						String MarketAsk = theAnswer.getJSONObject(i).getString("MarketAsk");
						String Price = theAnswer.getJSONObject(i).getString("Price");
						String Volume = theAnswer.getJSONObject(i).getString("Volume");
						String ModifyFlags = theAnswer.getJSONObject(i).getString("ModifyFlags");
						String TimeMsc = theAnswer.getJSONObject(i).getString("TimeMsc");
						String MarketLast = theAnswer.getJSONObject(i).getString("MarketLast");
						String Value = theAnswer.getJSONObject(i).getString("Value");
						String Dealer = theAnswer.getJSONObject(i).getString("Dealer");
						// String wadada = theAnswer.getJSONObject(i).getString("Position");
						
						if(Action < 2) {
							// adminservices.insertMT5dataFetch(Action, Symbol, PositionID, ExternalID, Digits, Commission, MarketBid, Time, RateMargin, Reason, VolumeClosed, VolumeExt, Entry, PriceTP, TickSize, Gateway, Profit, PricePosition, VolumeClosedExt, Order, PriceGateway, Comment, ExpertID, ContractSize, Fee, Login, Flags, Deal, ProfitRaw, TickValue, DigitsCurrency, Storage, PriceSL, RateProfit, MarketAsk, Price, Volume, ModifyFlags, TimeMsc, MarketLast, Value, Dealer);
							
						}
						// adminservices.insertMT5data(wadada);
					}
		        }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		String returnURL = "";
		returnURL = "/trahasd";
		return String.valueOf(defaultpath) + returnURL ;// String.valueOf(defaultpath) + returnURL
	}
	
	// ++++++++++++++======================+++++++++++++++
}
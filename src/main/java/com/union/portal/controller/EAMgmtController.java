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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.union.portal.common.APIProtectionHandler;
import com.union.portal.common.HttpUtils;
import com.union.portal.common.Pagination;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.forum_and_cat_name;
import com.union.portal.domain.scroll_topic_info;
import com.union.portal.domain.t_eaSystem_admin_list;
import com.union.portal.domain.t_eaSystem_eaGroup_list;
import com.union.portal.domain.t_eaSystem_eaSearchAccNo_list;
import com.union.portal.domain.t_eaSystem_eaSearchName_list;
import com.union.portal.domain.t_eaSystem_eaname_list;
import com.union.portal.domain.t_eaSystem_adminlist_searchId;
import com.union.portal.domain.t_eaSystem_adminlist_searchName;
import com.union.portal.domain.t_forum;
import com.union.portal.domain.t_forum_category;
import com.union.portal.domain.t_forum_comment;
import com.union.portal.domain.t_forum_topic;
import com.union.portal.domain.t_forum_topic_file;
import com.union.portal.domain.t_forum_topiccount;
import com.union.portal.domain.t_mt5_account_list;
import com.union.portal.domain.t_mt5_accountlist;
import com.union.portal.domain.t_kr_account_list;
import com.union.portal.domain.t_mt5_account_history_list;
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
import com.union.portal.service.EAMgmtService;
import com.union.portal.service.ForumService;
import com.union.portal.service.UploadService;

import lombok.AllArgsConstructor;
import com.union.portal.domain.calculator;

/** 
 * Handles requests for the application home page.  // test test test
 */

@Controller
@RequestMapping("/eaManagement")
public class EAMgmtController {

	private static final boolean ISONESERVER = true;

	private static final Pattern GET_NUMBER = Pattern.compile("[0-9]+");

	private static final Logger logger = LoggerFactory.getLogger(EAMgmtController.class);

	private static String defaultpath = "/eaManagement/";

	// private static String serverinfo = "MT5Genie";

	private static String serverinfo = "MT5B";

	private FileSystemResource uploadFilePath;

	@Autowired
	SessionLocaleResolver localeResolver;

	@Autowired
	EAMgmtService adminservices;

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

		/*List<t_user> clientlist = adminservices.getclientlist(String.valueOf(rowperpage), String.valueOf(pagenumber));
		model.addAttribute("clientlist", clientlist);
		int totalpage = adminservices.getclientlisttotalPage(rowperpage);
		model.addAttribute("pagination", Pagination.createPaginationModule(request, pagenumber, totalpage));*/

		returnURL = "/index";

		return defaultpath + returnURL;
	}/*	*/

	

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
			return "redirect:" + defaultpath + "login2?redirect=" + redirect;
		} else {
			return "redirect:" + defaultpath + "login2";
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


	
	
	
	// ++++++++++++++======================+++++++++++++++
	// ++++++++++++++======================+++++++++++++++
	
	
	@RequestMapping(value = "/login2", method = RequestMethod.GET)
	public String login2(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome home! Login.");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		
		adminservices.updateAccFlag();
		
		
		
		returnURL = "/login2";

		return defaultpath + returnURL;
	}
	
	@PostMapping("/api/checkLogin")
	public String checkLogin(@RequestParam("ID") String useq ,@RequestParam("Email") String imail ,HttpServletRequest request) {
		
		logger.info(useq);
		// HttpSession session = request.getSession();
		// String userseq = (String) session.getAttribute("s_Seq");
		if(useq.length() >0)
		{
			// adminservices.insertAdmin(useq, imail, pword, naem, fon, adreis);
			
		}
		
	   return "redirect:"+defaultpath + "adminList";
	}
	
	@RequestMapping(value = { "/api/checkloginnew" }, method = { RequestMethod.GET }, produces = {
		"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView APIcheckloginnew(HttpServletRequest request, Model model) {
	
		ModelAndView mav = new ModelAndView("jsonView");
		
		String responsestr = "";
		
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd");
		
		int noUser = adminservices.checkLogin(email, passwd);
		
		if(noUser != 0) {
			responsestr = "Success";
			t_eaSystem_admin_list sesData = adminservices.getAdminLogin(email, passwd);
			
			HttpSession session = request.getSession();
			session.setAttribute("s_Name", String.valueOf(sesData.name));
			session.setAttribute("s_Adminseq", String.valueOf(sesData.adminseq));
			
		} else {
			responsestr="Not FOUND!";
		}
		
		
		mav.addObject("result", responsestr);
		return mav;
	}
	
	
	
	
	

	
	@RequestMapping(value = "/adminList", method = RequestMethod.GET)
	public String adminList(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome home! adminList.");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		returnURL = "adminList";
		String eaSearch = request.getParameter("search");
		String pages = request.getParameter("pages");
		int pageNo;
		if(pages == "" || pages == null) {
			pageNo = 0;
		} else {
			pageNo = Integer.parseInt(pages);
			pageNo = (pageNo -1)*20;
		}
		logger.info("where is this:"+pages);
		
		// side nav ea list
		List<t_eaSystem_eaname_list> eaNameList = adminservices.eaSystemEAnameList();
		model.addAttribute("eaNameList", eaNameList);
		
		if(eaSearch == "" || eaSearch ==null) {
			List<t_eaSystem_admin_list> eaAdminList = adminservices.eaSystemAdminList(pageNo);
			model.addAttribute("eaAdminList", eaAdminList);			
		} else {
			List<t_eaSystem_adminlist_searchName> searhnameadmin = adminservices.adminListSearchName(eaSearch);
			model.addAttribute("eaAdminList", searhnameadmin);	
		}
		
		
		// page numbering
		int totalAdmin = adminservices.pageCountAdmin();
		int forloopthis = totalAdmin / 20;
		String testingThis="";
		String isActive="";
		for(int i=0; i<=forloopthis; i++) {
			if(pageNo == i) {
				isActive = "active";
			} else {
				isActive = "";
			}
			int tempNo = i+1; 
			String tempString = "<li class='page-item"+isActive+"'><a class='page-link' href='"+returnURL+"?pages="+tempNo+"'>"+tempNo+"</a></li>";
			testingThis = testingThis+tempString;
			
		}
		
		logger.info(testingThis);
		model.addAttribute("totalAdmin", testingThis);
		

		return defaultpath + returnURL;
	}
	
	/*
	 * @RequestMapping(value = "/deleteListAccount", method = RequestMethod.GET)
	public String deleteListAccount(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome home! adminList.");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		returnURL = "/deleteListAccount";
		String del = request.getParameter("del");
		int nnumberr = Integer.parseInt(del);
		
		adminservices.deleteListAccount(nnumberr);
		

		return defaultpath + returnURL;
	}* 
	 */
	
	@RequestMapping(value = { "/api/deleteListAccount" }, method = { RequestMethod.GET }, produces = {
		"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView APIdeleteListAccount(HttpServletRequest request, Model model) {
	
		ModelAndView mav = new ModelAndView("jsonView");
		String del = request.getParameter("del");
		int nnumberr = Integer.parseInt(del);
		
		adminservices.deleteListAccount(nnumberr);
		
		//if(APIProtectionHandler.isloginAdmin(request))
		// {}
		
		String responsestr = "";
		
		mav.addObject("result", APIProtectionHandler.ApiProtectionAdmin(request,responsestr));
		return mav;
	}
	
	
	
	
	@PostMapping(value = { "/api/updateOneStaEnd" }, consumes = { "application/json" }, produces = {
		"application/json" })
	public ModelAndView api_updateOneStaEnd(HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		// JSONArray JSONARRAY = new JSONArray(body);
		String responsestr="";

		String id = request.getParameter("id");
		int nnumberr = Integer.parseInt(id);
		String startd = request.getParameter("startd");
		String endd = request.getParameter("endd");
		
		adminservices.updateAccStaEnd(nnumberr, startd, endd);
		
		
		mav.addObject("result",  responsestr);
		return mav;
	}
	
	@PostMapping(value = { "/api/posthistorydata" }, consumes = { "application/json" }, produces = {
		"application/json" })
	public ModelAndView api_posthistoryData(@RequestBody String body, HttpServletRequest request) throws SQLException {
	ModelAndView mav = new ModelAndView("jsonView");
	JSONArray JSONARRAY = new JSONArray(body);
	String responsestr="";
	
	String startd = request.getParameter("startd");
	String endd = request.getParameter("endd");
	
	
	
	// 10 JSONARRAY.length()	
	for( int i=0; i< JSONARRAY.length()	; i++)
	{
		int nnumberr = JSONARRAY.getInt(i);
		// logger.info(nnumberr);
		adminservices.updateAccStaEnd(nnumberr, startd, endd);
	}
	
	
	mav.addObject("result",  responsestr);
	return mav;
	}
	
	
	
	
	@RequestMapping(value = "/eaAccountList", method = RequestMethod.GET, produces = {
	"application/json;charset=UTF-8" })
	public String eaAccountList(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome home! eaAccountList.");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		returnURL = "/eaAccountList";
		
		String eaGroup = request.getParameter("group");
		String eaSearch = request.getParameter("eaSearch");
		String pages = request.getParameter("pages");
		int pageNo;
		if(pages == "" || pages == null) {
			pageNo = 0;
		} else {
			pageNo = Integer.parseInt(pages);
			pageNo = (pageNo -1)*50;
		}
		
		// used for sidemenu
		List<t_eaSystem_eaname_list> eaNameList = adminservices.eaSystemEAnameList();
		model.addAttribute("eaNameList", eaNameList);
		
		
		if(eaSearch == "" || eaSearch ==null) {
			List<t_eaSystem_eaGroup_list> getEAGroupList = adminservices.eaSystemEAGroupList(eaGroup, pageNo);
			model.addAttribute("getEAGroupList", getEAGroupList);			
		} else {
			List<t_eaSystem_eaSearchName_list> searchByName = new ArrayList<>();
			searchByName = adminservices.eaSystemEASearchNameList(eaSearch);
			
			
			boolean ans = searchByName.isEmpty();
			if(!ans) {
				model.addAttribute("getEAGroupList", searchByName);
			} else {
				if(isInteger(eaSearch)) {
					int nnumberr = Integer.parseInt(eaSearch); // here check
					List<t_eaSystem_eaSearchAccNo_list> searchAccNo = new ArrayList<>();
					searchAccNo = adminservices.eaSysSearchAccNoList(nnumberr);
					
					boolean ans1 = searchAccNo.isEmpty();
					if(!ans1) {
						model.addAttribute("getEAGroupList", searchAccNo);
					} else {
						return defaultpath + returnURL;
					}
				} else {
					return defaultpath + returnURL;
				}
			}
		}
		
		// page numbering
		int totalNumbering = adminservices.countEAGroupList(eaGroup);
		int forloopthis = totalNumbering / 50;
		String testingThis="";
		String isActive="";
		for(int i=0; i<=forloopthis; i++) {
			if(pageNo == i) {
				isActive = "active";
			} else {
				isActive = "";
			}
			int tempNo = i+1; 
			String tempString = "<li class='page-item"+isActive+"'><a class='page-link' href='/portal/eaManagement"+returnURL+"?group="+eaGroup+"&pages="+tempNo+"'>"+tempNo+"</a></li>";
			testingThis = testingThis+tempString;
			
		}
		model.addAttribute("totalAdmin", testingThis);

		return defaultpath + returnURL;
	}
	
	
	public static boolean isInteger(String str) { // function to check if value is int or not
        
		if (str == null) {
            return false;
        }
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		logger.info("Welcome home! main.");
		String returnURL = "";

		
		List<t_eaSystem_eaname_list> eaNameList = adminservices.eaSystemEAnameList();
		model.addAttribute("eaNameList", eaNameList);
		
		returnURL = "/main";

		return defaultpath + returnURL;
	}

	
	@RequestMapping(value = "/template", method = RequestMethod.GET)
	public String template(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		logger.info("Welcome home! adminList.");
		String returnURL = "";
		List<t_eaSystem_eaname_list> eaNameList = adminservices.eaSystemEAnameList();
		model.addAttribute("eaNameList", eaNameList);
		
		
		
		returnURL = "/template";

		return defaultpath + returnURL;
	}
	
	
	@PostMapping("/api/createnewadmintest")
	public String addnewtopic(@RequestParam("ID") String useq ,@RequestParam("Email") String imail ,@RequestParam("Password") String pword ,
			@RequestParam("Name") String naem ,@RequestParam("Phone") String fon ,@RequestParam("Address") String adreis ,HttpServletRequest request) {
		
		
		
		logger.info(useq);
		// HttpSession session = request.getSession();
		// String userseq = (String) session.getAttribute("s_Seq");
		if(useq.length() >0)
		{
			adminservices.insertAdmin(useq, imail, pword, naem, fon, adreis);
			
		}
		
	   return "redirect:"+defaultpath + "adminList";
	}
	
	
	@PostMapping(value = { "/api/createnewadminasd" }, consumes = { "application/json" }, produces = {
		"application/json" })
	public ModelAndView api_createnewtopicasd(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONObject jsonbodyobj = new JSONObject(body);
		logger.info("Welcome createnewtopic: ");
		String responsestr = "";
		// HttpSession session = request.getSession();
		
		String useq = jsonbodyobj.getString("ID");
		String imail = jsonbodyobj.getString("Email");
		String pword = jsonbodyobj.getString("Password");
		String naem = jsonbodyobj.getString("Name");
		String fon = jsonbodyobj.getString("Phone");
		String adreis = jsonbodyobj.getString("Address");
		
		// adminservices.insertAdmin(useq, imail, pword, naem, fon, adreis);
		
		logger.info(useq+" - "+imail+" - "+pword+" - "+naem+" - "+fon+" - "+adreis);
		
		
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}
	
	
	@RequestMapping(value = { "/api/getAccountInfoOne" }, method = { RequestMethod.GET }, produces = {
	"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getAccountInfoOne(HttpServletRequest request, Model model) {
		logger.info("Get getprofitchartdatanewasd  ........" + this.serverinfo);
		String id = request.getParameter("id");
		int theid = Integer.parseInt(id);
		
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		String beforeds = "";
		
		// Create ObjectMapper instance
        ObjectMapper mapper = new ObjectMapper();

		t_eaSystem_eaSearchName_list accFetchRes = adminservices.getAccountInfo(theid);
		if (accFetchRes != null) {
			beforeds = accFetchRes.toString().replace("t_eaSystem_eaSearchName_list", "");
			String jsonStr = beforeds.substring(1, beforeds.length() - 1);

	        // Convert JSON string to JsonNode
			JSONObject trythis = new JSONObject(accFetchRes);
			responsestr = trythis.toString();
		} else {
			responsestr = "No search result";
		}
		
		
		mav.addObject("result", responsestr);
		return mav;
	}
	
	
	
	
	// ++++++++++++++======================+++++++++++++++
}
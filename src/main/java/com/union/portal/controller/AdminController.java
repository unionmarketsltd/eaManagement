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
		List<t_user> clientlist = adminservices.getclientlist();

		model.addAttribute("clientlist", clientlist);
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

		logger.info(id);
		logger.info(ban);

		adminservices.updateclientlist(ban, id);

		String responsestr = "";

		mav.addObject("result", responsestr);
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
		List<t_forum> forumlist = adminservices.getforumlist();

		model.addAttribute("forumlist", forumlist);
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
		String title = request.getParameter("title");
		String desc = request.getParameter("desc");
		String logo = request.getParameter("logo");
		String id = request.getParameter("id");
		adminservices.updateupdateforumdetail(title, desc, logo, id);

		String responsestr = "";

		mav.addObject("result", responsestr);
		return mav;
	}

	@RequestMapping(value = { "/api/deleteforum" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView apideleteforum(HttpServletRequest request, Model model) {

		ModelAndView mav = new ModelAndView("jsonView");

		String id = request.getParameter("id");
		adminservices.updatedeleteforum(id);

		String responsestr = "";

		mav.addObject("result", responsestr);
		return mav;
	}

	@RequestMapping(value = "/categorysetting", method = RequestMethod.GET)
	public String categorysetting(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		List<t_forum_category> categorylist = adminservices.getcategorylist();

		model.addAttribute("categorylist", categorylist);
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
		String title = request.getParameter("title");
		String desc = request.getParameter("desc");
		String id = request.getParameter("id");
		adminservices.updateeditcategorydetails(title, desc, id);

		String responsestr = "";

		mav.addObject("result", responsestr);
		return mav;
	}

	@RequestMapping(value = { "/api/deletecategory" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView deletecategory(HttpServletRequest request, Model model) {

		ModelAndView mav = new ModelAndView("jsonView");

		String id = request.getParameter("id");
		adminservices.updatedeletecategory(id);

		String responsestr = "";

		mav.addObject("result", responsestr);
		return mav;
	}

	@RequestMapping(value = "/topicsetting", method = RequestMethod.GET)
	public String topicsetting(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		
		
		
		String keyword = request.getParameter("keyword");
		if (keyword != null && keyword != "") {
			List<t_forum_topic> searchtopic = adminservices.getsearchtopic(keyword); 

			 model.addAttribute("topiclist", searchtopic);
			model.addAttribute("tabletype", "Search result");
			logger.info("test");
		} else {
			List<t_forum_topic> topiclist = adminservices.gettopiclist();

			model.addAttribute("topiclist", topiclist);
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

		String id = request.getParameter("id");

		adminservices.updatedeletetopic(id);

		String responsestr = "";

		mav.addObject("result", responsestr);
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

		String id = request.getParameter("id");
		adminservices.updatedeletecomment(id);

		String responsestr = "";

		mav.addObject("result", responsestr);
		return mav;
	}

}
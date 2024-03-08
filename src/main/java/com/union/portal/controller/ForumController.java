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
import java.nio.charset.StandardCharsets;
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
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.forum_and_cat_name;
import com.union.portal.domain.piechart;
import com.union.portal.domain.scroll_topic_info;
import com.union.portal.domain.t_forum;
import com.union.portal.domain.t_forum_category;
import com.union.portal.domain.t_forum_topic;
import com.union.portal.domain.t_forum_topic_file;
import com.union.portal.domain.t_forum_topiccount;
import com.union.portal.domain.t_mt5_account_list;
import com.union.portal.domain.t_kr_account_list;
import com.union.portal.domain.t_kr_profit_rate;
import com.union.portal.domain.t_kr_account_history;
import com.union.portal.domain.t_kr_account_forum_list;
import com.union.portal.domain.t_top_latest_news;
import com.union.portal.domain.topic_comment_list;
import com.union.portal.domain.topic_comment_user_like;
import com.union.portal.domain.topic_search_result;
import com.union.portal.domain.topic_subcomment_list;
import com.union.portal.domain.t_mt5_account_history_list;
import com.union.portal.domain.t_user;
import com.union.portal.domain.topic_comment_likes;
import com.union.portal.service.ForumService;
import lombok.AllArgsConstructor;
import com.union.portal.domain.calculator;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping("/forum")
public class ForumController {

	private static final boolean ISONESERVER = true;

	private static final Pattern GET_NUMBER = Pattern.compile("[0-9]+");

	private static final Logger logger = LoggerFactory.getLogger(ForumController.class);

	private static String defaultpath = "/forum/";

	// private static String serverinfo = "MT5Genie";

	private static String serverinfo = "MT5B";

	private FileSystemResource uploadFilePath;

	@Autowired
	SessionLocaleResolver localeResolver;

	@Autowired
	ForumService forumservices;

	public void top(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();
		List<t_forum> top_listforum = null;
		List<t_forum_category> top_listforumcat = null;
		List<t_top_latest_news> ttln = null;
		List<t_mt5_account_list> tmal = null;

		ttln = forumservices.gettopmenulatesttopic();

		for (t_top_latest_news news : ttln) {
			if (news.thumbnail == null || news.thumbnail.length() < 3) {
				Random rand = new Random();

				// Generate a random number from 1 to 5
				int randomNumber = rand.nextInt(5) + 1;
				news.setThumbnail(String.valueOf(randomNumber));
			}
		}

		model.addAttribute("top_listlatesttopic", ttln);

		top_listforum = forumservices.getforumlist();
		top_listforumcat = forumservices.getforumcategorylist();
		t_user tu = forumservices.getuserinfo((String) session.getAttribute("s_GEmail"));
		model.addAttribute("top_forumlist", top_listforum);
		model.addAttribute("top_forumcatlist", top_listforumcat);

		tmal = forumservices.getmt5accountlist();
		model.addAttribute("top_tmal", tmal);

		if (tu != null) {
			model.addAttribute("top_name", tu.getName());
			model.addAttribute("top_photo", tu.getGoogle_image_url());
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

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String slash1(Model model) {
		logger.info("Welcome home! slash1.");

		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";

		returnURL = "/login";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model, HttpServletRequest request) {
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		top(model, request);
		List<t_forum> listforum = null;
		List<t_forum_category> listforumcat = null;
		List<t_forum_topiccount> listforumtopiccount = null;
		List<t_mt5_account_list> acclist = null;
		List<t_kr_account_list> kracclist = null;

		kracclist = forumservices.getKRaccountlist();
		acclist = forumservices.getmt5accountlist();
		listforum = forumservices.getforumlist();
		listforumcat = forumservices.getforumcategorylist();
		listforumtopiccount = forumservices.getforumtopiccountlist();
		List<t_kr_profit_rate> kraccountprofitratelist = forumservices.getkraccountprofitratelist(); 

		 model.addAttribute("kraccountprofitratelist", kraccountprofitratelist);

		model.addAttribute("acclist", acclist);
		model.addAttribute("kracclist", kracclist);
		model.addAttribute("forumlist", listforum);
		model.addAttribute("forumcatlist", listforumcat);
		model.addAttribute("listforumtopiccount", listforumtopiccount);

		returnURL = "/index";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Model model, HttpServletRequest request) {

		top(model, request);

		String returnURL = "";
		returnURL = "/contact";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/ban", method = RequestMethod.GET)
	public String ban(Model model, HttpServletRequest request) {

		top(model, request);

		String returnURL = "";
		returnURL = "/ban";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		logger.info("Welcome index ");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		top(model, request);
		List<t_forum> listforum = null;
		List<t_forum_category> listforumcat = null;
		List<t_forum_topiccount> listforumtopiccount = null;

		listforum = forumservices.getforumlist();
		listforumcat = forumservices.getforumcategorylist();
		listforumtopiccount = forumservices.getforumtopiccountlist();
		model.addAttribute("forumlist", listforum);
		model.addAttribute("forumcatlist", listforumcat);
		model.addAttribute("listforumtopiccount", listforumtopiccount);
		returnURL = "/main";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome home! Login.");
		top(model, request);
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		returnURL = "/login";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/checktnc", method = RequestMethod.GET)
	public String checktnc(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome checktnc.");

		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		returnURL = "/checktnc";
		HttpSession session = request.getSession();
		top(model, request);
		logger.info((String) session.getAttribute("s_GName"));

		model.addAttribute("name", (String) session.getAttribute("s_GName"));
		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome category.");
		String id = request.getParameter("id");
		String page = request.getParameter("page");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		top(model, request);
		t_forum_category tfc = null;
		tfc = forumservices.getforumcategoryinfo(id);
		int pagenumber = 0;
		if (page != null && page != "") {
			pagenumber = Integer.parseInt(page) - 1;
			if (pagenumber < 0) {
				pagenumber = 0;
			}

		}

		List<t_forum_topic> tft = null;
		tft = forumservices.getforumcategorytopiclist(id, pagenumber * 10);

		for (t_forum_topic topic : tft) {
			topic.last_update_date_string = topic.last_update_date.toLocalDateTime()
					.format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss a"));
		}

		model.addAttribute("topiclist", tft);

		model.addAttribute("name", tfc.name);
		model.addAttribute("createby", tfc.create_by_name);
		model.addAttribute("createdate", tfc.create_date);
		model.addAttribute("desc", tfc.description);
		model.addAttribute("post", tfc.post_number);
		model.addAttribute("comment", tfc.comment_number);
		model.addAttribute("id", tfc.id);

		int totalpage = forumservices.getforumcategorytotalPage(id);

		model.addAttribute("maxpage", totalpage);

		model.addAttribute("currentpage", pagenumber + 1);

		model.addAttribute("lang", vLocal);
		String returnURL = "";

		/*
		 * HttpSession session = request.getSession();
		 * logger.info((String)session.getAttribute("s_GName"));
		 * 
		 * model.addAttribute("name",(String)session.getAttribute("s_GName") );
		 */
		forum_and_cat_name fncn = null;
		fncn = forumservices.getcategorynameandforumname(id);

		model.addAttribute("forumid", fncn.forumid);
		model.addAttribute("categoryid", fncn.catid);
		model.addAttribute("forumname", fncn.forumname);
		model.addAttribute("categoryname", fncn.categoryname);
		returnURL = "/category";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome mypage.");
		HttpSession session = request.getSession();
		top(model, request);
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		t_user tu = forumservices.getuserinfo((String) session.getAttribute("s_GEmail"));

		List<t_forum_topic> mtl = forumservices.getmytopiclist((String) session.getAttribute("s_GEmail"));

		List<t_forum_topic> mctp = forumservices.getmycommentedtopiclist((String) session.getAttribute("s_GEmail"));

		List<t_forum_topic> mll = forumservices.getmylikedtopiclist((String) session.getAttribute("s_GEmail"));

		model.addAttribute("topiclist", mtl);
		model.addAttribute("commentedtopiclist", mctp);
		model.addAttribute("likedtopiclist", mll);
		model.addAttribute("userinfo", tu);

		String returnURL = "";
		returnURL = "/mypage";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome search.");
		top(model, request);
		String keyword = request.getParameter("keyword");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();

		List<topic_search_result> tsr = null;
		tsr = forumservices.getsearchresult(keyword);

		model.addAttribute("searchfor", "Keyword: " + keyword);

		model.addAttribute("resultlist", tsr);

		model.addAttribute("lang", vLocal);
		String returnURL = "";

		returnURL = "/search";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/topic", method = RequestMethod.GET)
	public String topic(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome topic.");
		top(model, request);
		String id = request.getParameter("id");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		HttpSession session = request.getSession();
		t_forum_category tfc = null;
		tfc = forumservices.getforumcategoryinfo(id);

		t_forum_topic tft = null;
		tft = forumservices.getforumtopicinfo(id);
		int isallowedit = forumservices.isautorizedtoedittopic(id, (String) session.getAttribute("s_GEmail"));
		forumservices.updatetopicview(id);
		model.addAttribute("topiclist", tft);
		model.addAttribute("topicinfo", tft);

		List<t_forum_topic_file> tftf = forumservices.gettopicfilelist(id);
		int isuserlike = forumservices.isuserlikethistopic(id, (String) session.getAttribute("s_GEmail"));
		model.addAttribute("filelist", tftf);
		model.addAttribute("isallowedit", isallowedit);
		model.addAttribute("isuserlike", isuserlike);
		model.addAttribute("topicinfo", tft);

		model.addAttribute("lang", vLocal);
		String returnURL = "";

		returnURL = "/topic";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/topiccomment", method = RequestMethod.GET)
	public String topiccomment(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome topiccomment.");
		top(model, request);
		String id = request.getParameter("id");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();

		List<topic_comment_list> tcl = null;
		tcl = forumservices.getforumtopiccommentlist(id);
		HttpSession session = request.getSession();
		int isuserlike = forumservices.isuserlikethistopic(id, (String) session.getAttribute("s_GEmail"));

		List<topic_comment_user_like> tcul = null;

		tcul = forumservices.userliketopiccommentlist(id, (String) session.getAttribute("s_GEmail"));
		// int isallowedit = forumservices.isautorizedtoedittopic(id, (String)
		// session.getAttribute("s_GEmail"));

		List<topic_comment_likes> tclike = null;
		tclike = forumservices.getcommentlikecount(id);

		// model.addAttribute("isallowedit", isallowedit);
		model.addAttribute("isuserlike", isuserlike);
		model.addAttribute("topiccommentlikeslist", tclike);
		model.addAttribute("tcullist", tcul);
		model.addAttribute("commentlist", tcl);
		model.addAttribute("lang", vLocal);
		String returnURL = "";

		returnURL = "/iframecomment";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/createtopic", method = RequestMethod.GET)
	public String createtopic(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome createtopic.");
		top(model, request);
		String categoryid = request.getParameter("cat");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();

		t_forum_category tfc = null;
		tfc = forumservices.getforumcategoryinfo(categoryid);

		model.addAttribute("name", tfc.name);
		model.addAttribute("createby", tfc.create_by);
		model.addAttribute("createdate", tfc.create_date);
		model.addAttribute("desc", tfc.description);
		model.addAttribute("post", tfc.post_number);
		model.addAttribute("comment", tfc.comment_number);

		model.addAttribute("lang", vLocal);
		String returnURL = "";

		forum_and_cat_name fncn = null;
		fncn = forumservices.getcategorynameandforumname(categoryid);

		model.addAttribute("forumid", fncn.forumid);
		model.addAttribute("categoryid", fncn.catid);
		model.addAttribute("forumname", fncn.forumname);
		model.addAttribute("categoryname", fncn.categoryname);
		returnURL = "/createtopic";

		return defaultpath + returnURL;
	}

	public static String decodeJwtResponse(String token) {
		String base64Url = token.split("\\.")[1];
		String base64 = base64Url.replace("-", "+").replace("_", "/");
		String jsonPayload = new String(Base64.getDecoder().decode(base64));
		jsonPayload = Pattern.compile("\\p{C}").matcher(jsonPayload).replaceAll("");
		System.out.println(jsonPayload);
		return jsonPayload;
	}

	public static String decodeJwtResponse1(String token) {
		String base64Url = token.split("\\.")[1];
		String base64 = base64Url.replace("-", "+").replace("_", "/");
		byte[] decodedBytes = Base64.getDecoder().decode(base64);
		String jsonPayload = new String(decodedBytes, StandardCharsets.UTF_8);

		// Remove control characters while retaining Korean characters
		jsonPayload = jsonPayload.replaceAll("[\\p{Cntrl}&&[^\\r\\n\\t]]|[\\p{C}]", "");

		System.out.println(jsonPayload);
		return jsonPayload;
	}

	@RequestMapping(value = "/edittopic", method = RequestMethod.GET)
	public String edittopic(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome edittopic.");
		top(model, request);
		String id = request.getParameter("id");

		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		String returnURL = "";
		HttpSession session = request.getSession();
		if (forumservices.isautorizedtoedittopic(id, (String) session.getAttribute("s_GEmail")) == 1) {

			t_forum_topic tft = null;
			tft = forumservices.getforumtopicinfo(id);
			tft.content = tft.content.replace("\"", "\\\"");

			model.addAttribute("tft", tft);
			List<t_forum_topic_file> tftf = forumservices.gettopicfilelist(id);

			model.addAttribute("filelist", tftf);
			model.addAttribute("lang", vLocal);

			returnURL = defaultpath + "/edittopic";

		} else {
			returnURL = "redirect:" + defaultpath + "/topic?id=" + id;
		}

		return returnURL;
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

	@RequestMapping(value = "/loginByGoogle", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ModelAndView loginConfirm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();

		logger.info("welcome login by google" + serverinfo);
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		String token = request.getParameter("token");
		JSONObject UserGoogleLoginCredential = new JSONObject(decodeJwtResponse1(token));

		String email = UserGoogleLoginCredential.getString("email");
		String fullname = UserGoogleLoginCredential.getString("name");
		String imageurl = UserGoogleLoginCredential.getString("picture");
		String googleid = UserGoogleLoginCredential.getString("sub");
		String outputimageurl = "";

		try {

			outputimageurl = convertImageToBase64(imageurl);
		} catch (IOException e) {
			outputimageurl = imageurl;
		}

		boolean isnewuser = forumservices.isnewuser(email);

		if (!isnewuser) {
			int checkisban = forumservices.getcheckisban(email);
			if (checkisban == 0) {
				t_user tu = forumservices.getuserinfo(email);

				session.setAttribute("s_GEmail", tu.getEmail());
				session.setAttribute("s_GName", tu.getName());
				session.setAttribute("s_GImgUrl", tu.getGoogle_image_url());
				session.setAttribute("s_GID", tu.getGoogle_id());
				session.setAttribute("s_isLogin", String.valueOf("1"));
				responsestr = defaultpath + "index";
				logger.info((String) session.getAttribute("s_GName"));
			} else {
				responsestr = defaultpath + "ban";
			}
		} else {

			session.setAttribute("s_GEmail", String.valueOf(email));
			session.setAttribute("s_GName", String.valueOf(fullname));
			session.setAttribute("s_GImgUrl", String.valueOf(outputimageurl));
			session.setAttribute("s_GID", String.valueOf(googleid));
			session.setAttribute("s_isLogin", String.valueOf("0"));
			logger.info((String) session.getAttribute("s_GName"));
			responsestr = defaultpath + "checktnc";

		}

		logger.info(responsestr);

		mav.addObject("result", responsestr);
		return mav;
	}

	@RequestMapping(value = "/agreedtnc", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ModelAndView agreedtnc(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		logger.info("welcome agreedtnc" + serverinfo);
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		String email = (String) session.getAttribute("s_GEmail");
		String name = (String) session.getAttribute("s_GName");
		String imgurl = (String) session.getAttribute("s_GImgUrl");
		String gid = (String) session.getAttribute("s_GID");
		String islogin = (String) session.getAttribute("s_isLogin");
		if (email != null) {

			boolean isnewuser = forumservices.isnewuser(email);

			if (isnewuser) {

				forumservices.insertnewuser(email, gid, name, imgurl, 0);
				session.setAttribute("s_GEmail", String.valueOf(email));
				session.setAttribute("s_GName", String.valueOf(name));
				session.setAttribute("s_GImgUrl", String.valueOf(imgurl));
				session.setAttribute("s_GID", String.valueOf(gid));
				session.setAttribute("s_isLogin", String.valueOf("1"));
				responsestr = defaultpath + "index";
				logger.info((String) session.getAttribute("s_GName"));
			} else {

				session.setAttribute("s_isLogin", String.valueOf("1"));

				responsestr = defaultpath + "index";
			}

		} else {
			responsestr = defaultpath + "login";
		}

		logger.info(responsestr);
		mav.addObject("result", responsestr);
		return mav;
	}

	@PostMapping(value = { "/api/createnewtopic" }, consumes = { "application/json" }, produces = {
			"application/json" })
	public ModelAndView api_createnewtopic(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONObject jsonbodyobj = new JSONObject(body);
		logger.info("Welcome createnewtopic: ");
		String responsestr = "";
		HttpSession session = request.getSession();

		String cat = jsonbodyobj.getString("cat");
		String topic = jsonbodyobj.getString("topic");
		String content = jsonbodyobj.getString("content");
		String desc = jsonbodyobj.getString("desc");
		String thumbnail = jsonbodyobj.getString("thumbnail");

		logger.info(cat);
		logger.info(topic);
		logger.info(content);
		if (APIProtectionHandler.islogin(request)) {
			forumservices.insertnewtopic(cat, topic, desc, content, thumbnail,
					(String) session.getAttribute("s_GEmail"));

			int id = forumservices.gettopicidby(cat, topic, desc, content, thumbnail,
					(String) session.getAttribute("s_GEmail"));
			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/category?id=" + cat);
			jobj.put("id", id);
			responsestr = jobj.toString();
		} else {
			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/error");
			jobj.put("id", -1);
			responsestr = jobj.toString();

		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}

	@PostMapping(value = { "/api/edittopic" }, consumes = { "application/json" }, produces = { "application/json" })
	public ModelAndView api_edittopic(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONObject jsonbodyobj = new JSONObject(body);
		logger.info("Welcome edittopic: ");
		String responsestr = "";
		HttpSession session = request.getSession();

		String id = jsonbodyobj.getString("id");
		String topic = jsonbodyobj.getString("topic");
		String content = jsonbodyobj.getString("content");
		String desc = jsonbodyobj.getString("desc");
		String thumbnail = jsonbodyobj.getString("thumbnail");
		logger.info(id);
		logger.info(topic);
		logger.info(content);
		if (APIProtectionHandler.islogin(request)) {
			forumservices.updatetopic(topic, desc, content, id, thumbnail, (String) session.getAttribute("s_GEmail"));
			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/topic?id=" + id);
			responsestr = jobj.toString();
		} else {
			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/error");
			responsestr = jobj.toString();

		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}

	@PostMapping(value = { "/api/deletetopic" }, consumes = { "application/json" }, produces = { "application/json" })
	public ModelAndView api_deletetopic(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONObject jsonbodyobj = new JSONObject(body);
		logger.info("Welcome deletetopic: ");
		String responsestr = "";
		HttpSession session = request.getSession();

		String id = jsonbodyobj.getString("id");
		String cid = jsonbodyobj.getString("cid");
		int isallowedit = forumservices.isautorizedtoedittopic(id, (String) session.getAttribute("s_GEmail"));

		if (APIProtectionHandler.islogin(request)) {
			if (isallowedit == 1) {
				forumservices.deletetopic(id, (String) session.getAttribute("s_GEmail"));
				JSONObject jobj = new JSONObject();
				jobj.put("redirect", "/category?id=" + cid);
				responsestr = jobj.toString();
			}

		} else {
			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/error");
			responsestr = jobj.toString();

		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}

	@PostMapping(value = { "/api/deletefile" }, consumes = { "application/json" }, produces = { "application/json" })
	public ModelAndView api_deletefile(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONObject jsonbodyobj = new JSONObject(body);
		logger.info("Welcome deletefile: ");
		String responsestr = "";
		HttpSession session = request.getSession();

		String id = jsonbodyobj.getString("id");
		int isallowedit = forumservices.isautorizedtoedittopic(id, (String) session.getAttribute("s_GEmail"));

		if (APIProtectionHandler.islogin(request)) {
			if (isallowedit == 1) {
				forumservices.deletefile(id, (String) session.getAttribute("s_GEmail"));
				JSONObject jobj = new JSONObject();
				jobj.put("answer", "ok");
				responsestr = jobj.toString();
			}

		} else {
			JSONObject jobj = new JSONObject();
			jobj.put("answer", "fail");
			responsestr = jobj.toString();

		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}

	@PostMapping(value = { "/api/userliketopic" }, consumes = { "application/json" }, produces = { "application/json" })
	public ModelAndView api_userliketopic(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONObject jsonbodyobj = new JSONObject(body);
		logger.info("Welcome userliketopic: ");
		String responsestr = "";
		HttpSession session = request.getSession();

		String tid = jsonbodyobj.getString("id");
		String yesno = jsonbodyobj.getString("yesno");

		if (APIProtectionHandler.islogin(request)) {

			if (yesno.indexOf("Y") >= 0) {

				int islike = forumservices.isuserlikethistopic(tid, (String) session.getAttribute("s_GEmail"));
				int islikerecordexist = forumservices.islikerecordexist(tid, (String) session.getAttribute("s_GEmail"));
				if (islike == 0) {

					if (islikerecordexist == 0) {

						forumservices.userliketopic(tid, (String) session.getAttribute("s_GEmail"));
					} else {
						forumservices.userlikeliketopic(tid, (String) session.getAttribute("s_GEmail"));
					}

				}

			} else {
				forumservices.userunliketopic(tid, (String) session.getAttribute("s_GEmail"));
			}

			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/topic?id=" + tid);
			responsestr = jobj.toString();
		} else {
			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/error");
			responsestr = jobj.toString();

		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}

	@PostMapping(value = { "/api/userlikecomment" }, consumes = { "application/json" }, produces = {
			"application/json" })
	public ModelAndView userlikecomment(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONObject jsonbodyobj = new JSONObject(body);
		logger.info("Welcome userliketopic: ");
		String responsestr = "";
		HttpSession session = request.getSession();

		String tid = jsonbodyobj.getString("id");
		String yesno = jsonbodyobj.getString("yesno");
		String topicid = jsonbodyobj.getString("tid");

		if (APIProtectionHandler.islogin(request)) {

			if (yesno.indexOf("Y") >= 0) {

				int islike = forumservices.isuserlikethiscomment(tid, (String) session.getAttribute("s_GEmail"));
				if (islike == 0) {

					forumservices.userlikecomment(tid, (String) session.getAttribute("s_GEmail"));
				} else {
					forumservices.userlikelikecomment(tid, (String) session.getAttribute("s_GEmail"));
				}

			} else {
				forumservices.userunlikecomment(tid, (String) session.getAttribute("s_GEmail"));
			}

			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/topic?id=" + topicid);
			responsestr = jobj.toString();
		} else {
			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/error");
			responsestr = jobj.toString();

		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}

	@RequestMapping(value = { "/api/getscrolltopicinfo" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getscrolltopicinfo(HttpServletRequest request, Model model) {

		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";

		List<scroll_topic_info> sti = forumservices.getscrolltopicinfo();
		List<scroll_topic_info> display = null;
		for (scroll_topic_info topicInfo : sti) {
			topicInfo.title = "<a href=\"topic?id=" + topicInfo.id + "\" class=\"link\">" + topicInfo.title + " ("
					+ topicInfo.name + " " + topicInfo.create_date
					+ ") </a><span class=\"separator\"><span class=\"separator-bar\">/</span><span class=\"separator-bar\">/</span></span>";

		}

		try {
			ObjectMapper objectMapper = new ObjectMapper();
			responsestr = objectMapper.writeValueAsString(sti);

			// Print the JSON
			System.out.println(responsestr);
		} catch (Exception e) {
			e.printStackTrace();
		}

		mav.addObject("result", responsestr);
		return mav;
	}

	@PostMapping(value = { "/api/createnewreply" }, consumes = { "application/json" }, produces = {
			"application/json" })
	public ModelAndView api_createnewreply(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONObject jsonbodyobj = new JSONObject(body);
		logger.info("Welcome createnewreply: ");
		String responsestr = "";
		HttpSession session = request.getSession();

		String tid = jsonbodyobj.getString("tid");
		String pid = jsonbodyobj.getString("pid");
		String depth = jsonbodyobj.getString("depth");
		String cmd = jsonbodyobj.getString("cmd");

		logger.info(tid);
		logger.info(pid);
		logger.info(depth);
		logger.info(cmd);

		if (APIProtectionHandler.islogin(request)) {

			if (Integer.parseInt(pid) < 0) {
				forumservices.insertnewcommentfortopic(depth, tid, cmd, (String) session.getAttribute("s_GEmail"));
			} else {
				forumservices.insertnewcomment(pid, depth, tid, cmd, (String) session.getAttribute("s_GEmail"));
			}

			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/topic?id=" + tid);
			responsestr = jobj.toString();
		} else {
			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/error");
			responsestr = jobj.toString();

		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
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

	private static final String TOMCAT_HOME_PROPERTY = "catalina.home";
	private static final String TOMCAT_HOME_PATH = System.getProperty(TOMCAT_HOME_PROPERTY);
	private static final String PIZZA_IMAGES = "FORUM_TOPIC_FILE";
	private static final String PIZZA_IMAGES_PATH = TOMCAT_HOME_PATH + File.separator + PIZZA_IMAGES;
	private static final File PIZZA_IMAGES_DIR = new File(PIZZA_IMAGES_PATH);
	private static final String PIZZA_IMAGES_DIR_ABSOLUTE_PATH = PIZZA_IMAGES_DIR.getAbsolutePath() + File.separator;
	private static final String FAILED_UPLOAD_MESSAGE = "You failed to upload [%s] because the file because %s";
	private static final String SUCCESS_UPLOAD_MESSAGE = "You successfully uploaded file = [%s]";

	private void createPizzaImagesDirIfNeeded() {
		if (!PIZZA_IMAGES_DIR.exists()) {
			PIZZA_IMAGES_DIR.mkdirs();
		}
	}

	private static final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

	public static String generateRandomString(int length) {
		Random random = new Random();
		StringBuilder sb = new StringBuilder(length);

		for (int i = 0; i < length; i++) {
			int randomIndex = random.nextInt(CHARACTERS.length());
			char randomChar = CHARACTERS.charAt(randomIndex);
			sb.append(randomChar);
		}

		return sb.toString();
	}

	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	private String uploadmultiplefile(@RequestParam("file") List<MultipartFile> allfile,
			@RequestParam("id") String topic_id, HttpServletRequest request) {

		createPizzaImagesDirIfNeeded();

		if (APIProtectionHandler.islogin(request)) {
			try {
				HttpSession session = request.getSession();
				for (MultipartFile file : allfile) {

					String filename = topic_id + "_" + generateRandomString(10) + "_" + file.getOriginalFilename();
					File files = new File(PIZZA_IMAGES_DIR_ABSOLUTE_PATH + filename);
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(files));
					stream.write(file.getBytes());
					stream.close();

					forumservices.recordtopicfiledetail(topic_id, file.getOriginalFilename(), filename,
							(String) session.getAttribute("s_GEmail"));

				}
				return "redirect:" + defaultpath + "topic?id=" + topic_id;
			} catch (Exception e) {
				return "redirect:" + defaultpath + "error?msg=failuploadfile";
			}
		} else {
			return "redirect:" + defaultpath + "index";
		}
	}

	@RequestMapping(value = "/file/{filename}.{extension}")
	@ResponseBody
	public ResponseEntity<byte[]> getImage(@PathVariable(value = "filename") String filename,
			@PathVariable(value = "extension") String ext) throws IOException {
		createPizzaImagesDirIfNeeded();

		File serverFile = new File(PIZZA_IMAGES_DIR_ABSOLUTE_PATH + filename + "." + ext);
		byte[] fileContent = Files.readAllBytes(serverFile.toPath());

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		headers.setContentDispositionFormData("attachment", filename + "." + ext);

		return new ResponseEntity<>(fileContent, headers, HttpStatus.OK);

	}

	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////
	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////
	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////
	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////
	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////
	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////
	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////
	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////
	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////
	/////////////////////////////////////////// MT5 Code
	/////////////////////////////////////////// Here/////////////////////////////////////////////////////////////

	@RequestMapping(value = "/viewMt5Account", method = RequestMethod.GET)
	public String viewMt5Account(Model model, HttpServletRequest request) {
		String returnURL = "";
		String id = request.getParameter("id");
		top(model, request);
		
		if (forumservices.isallowviewaccount(id)) {
			t_mt5_account_list account = forumservices.getmt5accountname(id);

			String responsestr = "";
			HttpUtils httpUtils = new HttpUtils(this.serverinfo);
			HttpSession session = request.getSession();
			if (httpUtils.sendAuth(this.serverinfo)) {
				String path = "/api/user/get?login=" + "3301";
				try {
					responsestr = httpUtils.sendGet(this.serverinfo, path);

					JSONObject accountinfo = new JSONObject(responsestr);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			model.addAttribute("name", account.name);
			model.addAttribute("id", id);
			model.addAttribute("duration", account.api_call_interval_second);
			returnURL = "/viewmt5account";

		} else {
			returnURL = "/unautorized";
		}

		return defaultpath + returnURL;
	}

	@RequestMapping(value = { "/getAccountInfo" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getAccountInfo(HttpServletRequest request, Model model) {
		logger.info("Get getAccountInfo ........" + this.serverinfo);
		String id = request.getParameter("id");

		ModelAndView mav = new ModelAndView("jsonView");

		String responsestr = "";

		if (forumservices.isallowviewaccount(id)) {

			HttpUtils httpUtils = new HttpUtils(this.serverinfo);
			HttpSession session = request.getSession();
			if (httpUtils.sendAuth(this.serverinfo)) {
				String path = "/api/user/get?login=" + id;
				try {
					responsestr = httpUtils.sendGet(this.serverinfo, path);
					responsestr.indexOf("0 Done");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} else {
			responsestr = "unautorized";
		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}

	@RequestMapping(value = { "/getAccountDetail" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getAccountDetail(HttpServletRequest request, Model model) {
		logger.info("Get getAccountDetail ........" + this.serverinfo);
		String id = request.getParameter("id");
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		if (forumservices.isallowviewaccount(id)) {
			HttpUtils httpUtils = new HttpUtils(this.serverinfo);
			HttpSession session = request.getSession();
			if (httpUtils.sendAuth(this.serverinfo)) {
				String path = "/api/user/account/get?login=" + id;
				try {
					responsestr = httpUtils.sendGet(this.serverinfo, path);
					responsestr.indexOf("0 Done");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		} else {
			responsestr = "unautorized";
		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}

	@RequestMapping(value = { "/getAccountPositions" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getAccountPosition(HttpServletRequest request, Model model) {
		logger.info("Get getAccountPosition ........" + this.serverinfo);
		String id = request.getParameter("id");
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";

		if (forumservices.isallowviewaccount(id)) {
			HttpUtils httpUtils = new HttpUtils(this.serverinfo);
			HttpSession session = request.getSession();
			if (httpUtils.sendAuth(this.serverinfo)) {
				String path = "/api/position/get_page?login=" + id + "&offset=0&total=100";
				try {
					responsestr = httpUtils.sendGet(this.serverinfo, path);
					responsestr.indexOf("0 Done");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		} else {
			responsestr = "unautorized";
		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}

	@RequestMapping(value = { "/getHistory" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView get100History(HttpServletRequest request, Model model) {
		logger.info("Get get100History ........" + this.serverinfo);
		String id = request.getParameter("id");
		String page = request.getParameter("page");

		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		if (forumservices.isallowviewaccount(id)) {
			HttpUtils httpUtils = new HttpUtils(this.serverinfo);
			HttpSession session = request.getSession();
			if (httpUtils.sendAuth(this.serverinfo)) {
				long currentTimeMillis = System.currentTimeMillis();

				// Convert milliseconds to seconds
				long currentSeconds = currentTimeMillis / 1000;
				String path = "/api/deal/get_total?login=" + id + "&from=0&to=" + Long.toString(currentSeconds);
				try {
					responsestr = httpUtils.sendGet(this.serverinfo, path);

					JSONObject totalobj = new JSONObject(responsestr);
					String totalrow = totalobj.getJSONObject("answer").getString("total");
					try {
						int row = Integer.parseInt(totalrow);
						path = "/api/deal/get_page?login=" + id + "&from=0&to=" + Long.toString(currentSeconds)
								+ "&offset=" + (row - (50 * Integer.parseInt(page))) + "&total=50";
						try {
							responsestr = httpUtils.sendGet(this.serverinfo, path);
							responsestr.indexOf("0 Done");
						} catch (Exception e) {
							e.printStackTrace();
						}
					}

					catch (NumberFormatException e) {

					}
					responsestr.indexOf("0 Done");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		} else {
			responsestr = "unautorized";
		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}
	
	
	
	
	@RequestMapping(value = { "/getKRAccountHistory" }, method = { RequestMethod.GET }, produces = {
	"application/json;charset=UTF-8" })
@ResponseBody
public ModelAndView getKRAccountHistory(HttpServletRequest request, Model model) {
logger.info("Get getKRAccountHistory ........" + this.serverinfo);
String id = request.getParameter("id");
String page = request.getParameter("page");

ModelAndView mav = new ModelAndView("jsonView");
String responsestr = "";

int offset = (Integer.parseInt(page)-1) *30;
responsestr= forumservices.getkraccounthistory(id,"30",String.valueOf(offset)); 


mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
return mav;
}
	
	

	@RequestMapping(value = { "/getHistorytotalPage" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getHistorytotalPage(HttpServletRequest request, Model model) {
		logger.info("Get getHistorytotalPage ........" + this.serverinfo);
		String id = request.getParameter("id");
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		int totalpage = 0;
		if (forumservices.isallowviewaccount(id)) {
			HttpUtils httpUtils = new HttpUtils(this.serverinfo);
			HttpSession session = request.getSession();
			if (httpUtils.sendAuth(this.serverinfo)) {
				long currentTimeMillis = System.currentTimeMillis();

				// Convert milliseconds to seconds
				long currentSeconds = currentTimeMillis / 1000;
				String path = "/api/deal/get_total?login=" + id + "&from=0&to=" + Long.toString(currentSeconds);
				try {
					responsestr = httpUtils.sendGet(this.serverinfo, path);

					JSONObject totalobj = new JSONObject(responsestr);
					String totalrow = totalobj.getJSONObject("answer").getString("total");
					totalpage = Integer.parseInt(totalrow) / 50;

					responsestr.indexOf("0 Done");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		} else {
			responsestr = "unautorized";
		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, String.valueOf(totalpage)));
		return mav;
	}

	@RequestMapping(value = { "/getKRAccountHistorytotalPage" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getKRAccountHistorytotalPage(HttpServletRequest request, Model model) {
		logger.info("Get getHistorytotalPage ........" + this.serverinfo);
		String id = request.getParameter("id");
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		int totalpage = 0;
		

			totalpage = forumservices.getkraccounthistorytotalpage(id);

		
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, String.valueOf(totalpage)));
		return mav;
	}

	@RequestMapping(value = { "/getprofitchartdata" }, method = { RequestMethod.GET }, produces = {
			"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getprofitchartdata(HttpServletRequest request, Model model) {
		logger.info("Get getprofitchartdata ........" + this.serverinfo);
		String id = request.getParameter("id");
		
		
		
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		if (forumservices.isallowviewaccount(id)) {
			HttpUtils httpUtils = new HttpUtils(this.serverinfo);
			HttpSession session = request.getSession();
			if (httpUtils.sendAuth(this.serverinfo)) {
				long currentTimeMillis = System.currentTimeMillis();

				try {
					long currentSeconds = currentTimeMillis / 1000;
					String path = "/api/deal/get_batch?login=" + id + "&from=0&to=" + Long.toString(currentSeconds);
					;
					try {
						responsestr = httpUtils.sendGet(this.serverinfo, path);
						String wada = 	responsestr;
						JSONObject returnobj = new JSONObject(responsestr);

						JSONArray jarray = returnobj.getJSONArray("answer");

						JSONArray outputarray = new JSONArray();
						Double outputprofit = (double) 0;
						for (int i = 0; i < jarray.length(); i++) {

							JSONObject element = jarray.getJSONObject(i);

							int type = Integer.parseInt(element.getString("Action"));

							if (type < 2) {
								Double profit = Double.parseDouble(element.getString("Profit"))
										+ Double.parseDouble(element.getString("Storage"))
										+ Double.parseDouble(element.getString("Commission"));
								// logger.info(String.valueOf(profit));
								outputprofit = outputprofit + profit;

								outputarray.put(outputprofit);
							}

							// Do something with the element
						}

						responsestr = outputarray.toString();// outputarray jarray
						logger.info("CHECK CHECK - "+responsestr);
					} catch (Exception e) {
						e.printStackTrace();
					}

					responsestr.indexOf("0 Done");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		} else {
			responsestr = "unautorized";
		}
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
		return mav;
	}
	
	
	// ============================== mt5 API to database ==========================
	
	@RequestMapping(value = { "/getprofitchartdatanewasd" }, method = { RequestMethod.GET }, produces = {
	"application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView getprofitchartdatanewasd(HttpServletRequest request, Model model) {
	logger.info("Get getprofitchartdatanewasd  ........" + this.serverinfo);
	String id = request.getParameter("id");
	// String id="237688";
	
	
	ModelAndView mav = new ModelAndView("jsonView");
	String responsestr = "";
	
	
	List<t_mt5_account_history_list> fetchData = null;
	 fetchData = forumservices.getKRaccountHistorylist(id);
	 String newfetchData = fetchData.toString().replace("=", "").replace("totalProfit", "").replace(")", "").replace("(", "").replace("t_mt5_account_history_list", "").replace("null", "0.0"); // .replace("t_mt5_account_history_list", "").replace("", "").replace('=', ':').replace("(", "{").replace(")", "}")

	 
	/**/if (forumservices.isallowviewaccount(id)) {
		
		
		HttpUtils httpUtils = new HttpUtils(this.serverinfo);
		HttpSession session = request.getSession();
		/*
		if (httpUtils.sendAuth(this.serverinfo)) {
			long currentTimeMillis = System.currentTimeMillis();
	
			try {
				long currentSeconds = currentTimeMillis / 1000;
				String path = "/api/deal/get_batch?login=" + id + "&from=0&to=" + Long.toString(currentSeconds);
				;
				try {
					responsestr = httpUtils.sendGet(this.serverinfo, path);
	
					JSONObject returnobj = new JSONObject(responsestr);
	
					JSONArray jarray = returnobj.getJSONArray("answer");
	
					JSONArray outputarray = new JSONArray();
					Double outputprofit = (double) 0;
					for (int i = 0; i < jarray.length(); i++) {
	
						JSONObject element = jarray.getJSONObject(i);
	
						int type = Integer.parseInt(element.getString("Action"));
	
						if (type < 2) {
							Double profit = Double.parseDouble(element.getString("Profit"))
									+ Double.parseDouble(element.getString("Storage"))
									+ Double.parseDouble(element.getString("Commission"));
							logger.info(String.valueOf(profit));
							outputprofit = outputprofit + profit;
	
							outputarray.put(outputprofit);
						}
	
						// Do something with the element
					}
	
					// responsestr = outputarray.toString();
	
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}*/
		responsestr = newfetchData.toString();
		responsestr.indexOf("0 Done");
	
	} else {
		responsestr = "unautorized";
	}
	mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
	return mav;
	}
	
	// ===========================================================================
	
	
	@RequestMapping(value = { "/getKRprofitchartdata" }, method = { RequestMethod.GET }, produces = {
	"application/json;charset=UTF-8" })
@ResponseBody
public ModelAndView getKRprofitchartdata(HttpServletRequest request, Model model) {
logger.info("Get getKRprofitchartdata ........" + this.serverinfo);
String id = request.getParameter("id");

ModelAndView mav = new ModelAndView("jsonView");
String responsestr = "";

	String krprofitchartdata = forumservices.getkrprofitchartdata(id); 

	responsestr = krprofitchartdata;


mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr));
return mav;
}

	

	@RequestMapping(value = "/MT5AccountList", method = RequestMethod.GET)
	public String MT5AccountList(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome MT5AccountList.");
		HttpSession session = request.getSession();
		top(model, request);
		 
		
		List<t_mt5_account_list> acclist = null;

		acclist = forumservices.getmt5accountlist();
		String vLocal = LocaleContextHolder.getLocale().getLanguage();

		String returnURL = "";
		returnURL = "/MT5AccountList";

		model.addAttribute("acclist", acclist);
		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/StrategyMt5Account", method = RequestMethod.GET)
	public String StrategyMt5Account(Model model, HttpServletRequest request) {
		String returnURL = "";
		String id = request.getParameter("id");
		top(model, request);
		if (forumservices.isallowviewaccount(id)) {
			t_mt5_account_list account = forumservices.getmt5accountname(id);

			String responsestr = "";
			HttpUtils httpUtils = new HttpUtils(this.serverinfo);
			HttpSession session = request.getSession();
			if (httpUtils.sendAuth(this.serverinfo)) {
				String path = "/api/user/get?login=" + "3301";
				try {
					responsestr = httpUtils.sendGet(this.serverinfo, path);

					JSONObject accountinfo = new JSONObject(responsestr);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			model.addAttribute("name", account.name);
			model.addAttribute("content", account.content);
			model.addAttribute("id", id);
			model.addAttribute("duration", account.api_call_interval_second);
			returnURL = "/StrategyMt5Account";

		} else {
			returnURL = "/unautorized";
		}

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/KRAccountList", method = RequestMethod.GET)
	public String KRAccountList(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome MT5AccountList.");
		HttpSession session = request.getSession();
		top(model, request);

		List<t_kr_account_list> acclist = null;

		acclist = forumservices.getKRaccountlist();
		
		List<t_kr_profit_rate> kraccountprofitratelist = forumservices.getkraccountprofitratelist(); 

		 model.addAttribute("kraccountprofitratelist", kraccountprofitratelist);
		String vLocal = LocaleContextHolder.getLocale().getLanguage();

		String returnURL = "";
		returnURL = "/KRAccountList";

		model.addAttribute("acclist", acclist);
		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/StrategyKRAccount", method = RequestMethod.GET)
	public String StrategyKRAccount(Model model, HttpServletRequest request) {
		String returnURL = "";
		String accountid = request.getParameter("accountid");
		top(model, request);
		if (forumservices.isallowviewkraccount(accountid)) {
			t_kr_account_list account = forumservices.getKRaccountname(accountid);

			model.addAttribute("name", account.name);
			model.addAttribute("content", account.content);
			model.addAttribute("description", account.description);
			model.addAttribute("startdate", account.startdate);
			model.addAttribute("profitrate", account.profitrate);
			model.addAttribute("location", account.location);
			model.addAttribute("leverage", account.leverage);
			model.addAttribute("grade", account.grade);
			model.addAttribute("lastupdate", account.lastupdate);
			model.addAttribute("strategytype", account.strategytype);
			model.addAttribute("duration", account.api_call_interval_second);
			returnURL = "/StrategyKRAccount";

		} else {
			returnURL = "/unautorized";
		}

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/viewKRAccount", method = RequestMethod.GET)
	public String viewKRAccount(Model model, HttpServletRequest request) {
		logger.info("viewKRAccount ......................");
		String returnURL = "";
		String accountid = request.getParameter("accountid");
		top(model, request);
		if (forumservices.isallowviewkraccount(accountid)) {
			
			t_kr_account_list account = forumservices.getKRaccountname(accountid);
			calculator cal = forumservices.getKRaccountCalculator(accountid);
			
			 List<piechart> profitbysymbol = forumservices.getprofitbysymbol(accountid); 
			 List<calculator> daily = forumservices.getDailyProfitList(accountid); 
			 List<calculator> monthly = forumservices.getMonthlyProfitList(accountid);
			 
			 int plusDayCnt = 1;
			 int minusDayCnt = 1;
			 int maxPlusDayCnt = 0;
			 int maxMinusDayCnt = 0;
			 
			 int nowPlus = 1;
			 int nowMinus = 1;
			 
			 double dailyProfitRate = 0.0;
			 double beforeDailyProfit = 0.0;
			 double maxDailyProfit = 0.0;
			 double minDailyProfit = 0.0;
			 String maxDailyProfitDay = "";
			 String minDailyProfitDay = "";
			 double maxDailyProfitRate = 0.0;
			 double minDailyProfitRate = 0.0;
			 double daysProfitRate = 0.0;
			 double daysAverageProfit = 0.0;
			 

			 int plusMonthCnt = 1;
			 int minusMonthCnt = 1;
			 int maxPlusMonthCnt = 0;
			 int maxMinusMonthCnt = 0;
			 
			 int nowMonthPlus = 1;
			 int nowMonthMinus = 1;
			 double monthlyProfitRate = 0.0;
			 double beforeMonthlyProfit = 0.0;
			 double maxMonthlyProfit = 0.0;
			 double minMonthlyProfit = 0.0;
			 String maxMonthlyProfitDay = "";
			 String minMonthlyProfitDay = "";
			 double maxMonthlyProfitRate = 0.0;
			 double minMonthlyProfitRate = 0.0;
			 double monthsProfitRate = 0.0;
			 double monthsAverageProfit = 0.0;
			 
//////Daily
			 for (calculator lst : daily) {
				 if(lst.getDailyprofit()>0) {
					 plusDayCnt++;
				 }else {
					 minusDayCnt++;
				 }

				 if(lst.getDailyprofit()>0 && beforeDailyProfit>0) {
					 nowPlus++;
					 if(nowPlus>maxPlusDayCnt) {
						 maxPlusDayCnt = nowPlus;
					 }
				 }else {
					 nowPlus=0;
				 }
				 if(lst.getDailyprofit()<0 && beforeDailyProfit<0){
					 nowMinus++;
					 if(nowMinus>maxMinusDayCnt) {
						 maxMinusDayCnt = nowMinus;
					 }
				 }else {
					 nowMinus=0;
				 }

				 if(lst.getDailyprofit()>maxDailyProfit) {
					 maxDailyProfit = lst.getDailyprofit();
					 maxDailyProfitDay = lst.getDay();
				 }
				 if(lst.getDailyprofit()<minDailyProfit) {
					 minDailyProfit = lst.getDailyprofit();
					 minDailyProfitDay = lst.getDay();
				 }
				 beforeDailyProfit = lst.getDailyprofit();
					logger.info("cal.maxDailyProfit."+maxDailyProfit);
					logger.info("cal.minDailyProfit."+minDailyProfit);
					logger.info("cal.maxPlusDayCnt."+maxPlusDayCnt);
					logger.info("cal.maxMinusDayCnt."+maxMinusDayCnt);
					logger.info("cal.lst.getDailyprofit()."+lst.getDailyprofit());
			 }
			 dailyProfitRate = ((double)plusDayCnt/(double)cal.tradedatecnt) * 100;
			 

				logger.info("cal.tradedatecnt."+cal.tradedatecnt);
				logger.info("dailyProfitRate."+dailyProfitRate);
				logger.info("fundamount."+cal.fundamount);

				maxDailyProfitRate = maxDailyProfit*cal.usdrate/(double)cal.fundamount * 100;
				minDailyProfitRate = minDailyProfit*cal.usdrate/(double)cal.fundamount * 100;
				
				daysProfitRate = cal.profitrate / cal.tradedatecnt;
				daysAverageProfit = cal.profit / cal.tradedatecnt;
///// Monthly
				int monthCnt = 0;
				 for (calculator mlst : monthly) {
					 monthCnt++;
					 if(mlst.getMonthlyprofit()>0) {
						 plusMonthCnt++;
					 }else {
						 minusMonthCnt++;
					 }

					 if(mlst.getMonthlyprofit()>0 && beforeMonthlyProfit>0) {
						 nowMonthPlus++;
						 if(nowMonthPlus>maxPlusMonthCnt) {
							 maxPlusMonthCnt = nowMonthPlus;
						 }
					 }else {
						 nowMonthPlus=0;
					 }
					 if(mlst.getMonthlyprofit()<0 && beforeMonthlyProfit<0){
						 nowMonthMinus++;
						 if(nowMonthMinus>maxMinusMonthCnt) {
							 maxMinusMonthCnt = nowMonthMinus;
						 }
					 }else {
						 nowMonthMinus=0;
					 }

					 if(mlst.getMonthlyprofit()>maxMonthlyProfit) {
						 maxMonthlyProfit = mlst.getMonthlyprofit();
						 maxMonthlyProfitDay = mlst.getMonth();
					 }
					 if(mlst.getMonthlyprofit()<minMonthlyProfit) {
						 minMonthlyProfit = mlst.getMonthlyprofit();
						 minMonthlyProfitDay = mlst.getMonth();
					 }
					 beforeMonthlyProfit = mlst.getMonthlyprofit();
					 
				 }
				 monthlyProfitRate = ((double)plusMonthCnt/(double)monthCnt) * 100;

					maxMonthlyProfitRate = maxMonthlyProfit*cal.usdrate/(double)cal.fundamount * 100;
					minMonthlyProfitRate = minMonthlyProfit*cal.usdrate/(double)cal.fundamount * 100;
					
					monthsProfitRate = cal.profitrate / monthCnt;
					monthsAverageProfit = cal.profit / monthCnt;	
			//Daily			
			model.addAttribute("profitbysymbol", profitbysymbol);
			model.addAttribute("account", account);
			model.addAttribute("cal", cal);
			model.addAttribute("plusDayCnt", plusDayCnt);
			model.addAttribute("minusDayCnt", minusDayCnt);
			model.addAttribute("maxPlusDayCnt", maxPlusDayCnt+1);
			model.addAttribute("maxMinusDayCnt", maxMinusDayCnt+1);
			model.addAttribute("dailyProfitRate", dailyProfitRate);
			model.addAttribute("maxDailyProfit", maxDailyProfit);
			model.addAttribute("minDailyProfit", minDailyProfit);
			model.addAttribute("maxDailyProfitDay", maxDailyProfitDay);
			model.addAttribute("minDailyProfitDay", minDailyProfitDay);
			model.addAttribute("maxDailyProfitRate", maxDailyProfitRate);
			model.addAttribute("minDailyProfitRate", minDailyProfitRate);
			model.addAttribute("daysProfitRate", daysProfitRate);
			model.addAttribute("daysAverageProfit", daysAverageProfit);
			//Monthly
			model.addAttribute("monthCnt", monthCnt);
			model.addAttribute("plusMonthCnt", plusMonthCnt);
			model.addAttribute("minusMonthCnt", minusMonthCnt);
			model.addAttribute("maxPlusMonthCnt", maxPlusMonthCnt+1);
			model.addAttribute("maxMinusMonthCnt", maxMinusMonthCnt+1);
			model.addAttribute("monthlyProfitRate", monthlyProfitRate);
			model.addAttribute("maxMonthlyProfit", maxMonthlyProfit);
			model.addAttribute("minMonthlyProfit", minMonthlyProfit);
			model.addAttribute("maxMonthlyProfitDay", maxMonthlyProfitDay);
			model.addAttribute("minMonthlyProfitDay", minMonthlyProfitDay);
			model.addAttribute("maxMonthlyProfitRate", maxMonthlyProfitRate);
			model.addAttribute("minMonthlyProfitRate", minMonthlyProfitRate);
			model.addAttribute("monthsProfitRate", monthsProfitRate);
			model.addAttribute("monthsAverageProfit", monthsAverageProfit);

			List<t_kr_account_history> kraccountprofitchartdata = forumservices.getkraccountprofitchartdata(accountid);

			model.addAttribute("kraccountprofitchartdata", kraccountprofitchartdata);

			returnURL = "/viewKRaccount";

		} else {
			returnURL = "/unautorized";
		}
		return defaultpath + returnURL;
	}
}
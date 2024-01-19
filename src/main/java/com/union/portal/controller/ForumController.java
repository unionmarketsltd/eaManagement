package com.union.portal.controller;

import java.sql.SQLException;
import java.util.Base64;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.union.portal.common.APIProtectionHandler;
import com.union.portal.common.HttpUtils;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.forum_and_cat_name;
import com.union.portal.domain.t_forum;
import com.union.portal.domain.t_forum_category;
import com.union.portal.domain.t_forum_topic;
import com.union.portal.domain.t_forum_topiccount;
import com.union.portal.domain.topic_comment_list;
import com.union.portal.domain.topic_subcomment_list;
import com.union.portal.service.ForumService;
import lombok.AllArgsConstructor;

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
		HttpSession session = request.getSession();

		logger.info("Welcome index ");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";

		List<t_forum> listforum = null;
		List<t_forum_category> listforumcat = null;
		List<t_forum_topiccount> listforumtopiccount = null;

		listforum = forumservices.getforumlist();
		listforumcat = forumservices.getforumcategorylist();
		listforumtopiccount = forumservices.getforumtopiccountlist();
		model.addAttribute("forumlist", listforum);
		model.addAttribute("forumcatlist", listforumcat);
		model.addAttribute("listforumtopiccount", listforumtopiccount);
		returnURL = "/index";

		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) throws SQLException {
		logger.info("Welcome home! Login.");

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
		logger.info((String) session.getAttribute("s_GName"));

		model.addAttribute("name", (String) session.getAttribute("s_GName"));
		return defaultpath + returnURL;
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome category.");
		String id = request.getParameter("id");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		
		t_forum_category tfc = null;
		tfc = forumservices.getforumcategoryinfo(id);
		
		
		List<t_forum_topic> tft = null;
		tft = forumservices.getforumcategorytopiclist(id);
		model.addAttribute("topiclist", tft);
		
		model.addAttribute("name", tfc.name);
		model.addAttribute("createby", tfc.create_by);
		model.addAttribute("createdate", tfc.create_date);
		model.addAttribute("desc", tfc.description);
		model.addAttribute("post", tfc.post_number);
		model.addAttribute("comment", tfc.comment_number);
		
		
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
	
	
	
	
	@RequestMapping(value = "/topic", method = RequestMethod.GET)
	public String topic(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome topic.");
		String id = request.getParameter("id");
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		
		t_forum_category tfc = null;
		tfc = forumservices.getforumcategoryinfo(id);
		
		
		t_forum_topic tft = null;
		tft = forumservices.getforumtopicinfo(id);
		
		
		List<topic_comment_list> tcl = null;
		tcl = forumservices.getforumtopiccommentlist(id);
		
		
		
		
		
		model.addAttribute("topiclist", tft);
		
		model.addAttribute("topicinfo", tft);
		
		model.addAttribute("commentlist", tcl);
		
		model.addAttribute("lang", vLocal);
		String returnURL = "";
		
	
		returnURL = "/topic";
		
		return defaultpath + returnURL;
	}
	
	
	
	
	
	@RequestMapping(value = "/createtopic", method = RequestMethod.GET)
	public String createtopic(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome createtopic.");
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
		String fullname = UserGoogleLoginCredential.getString("name");
		String imageurl = UserGoogleLoginCredential.getString("picture");
		String googleid = UserGoogleLoginCredential.getString("sub");

		boolean isnewuser = forumservices.isnewuser(email);

		if (!isnewuser) {

			session.setAttribute("s_GEmail", String.valueOf(email));
			session.setAttribute("s_GName", String.valueOf(fullname));
			session.setAttribute("s_GImgUrl", String.valueOf(imageurl));
			session.setAttribute("s_GID", String.valueOf(googleid));
			session.setAttribute("s_isLogin", String.valueOf("1"));
			responsestr = defaultpath + "index";
			logger.info((String) session.getAttribute("s_GName"));
		} else {
			session.setAttribute("s_GEmail", String.valueOf(email));
			session.setAttribute("s_GName", String.valueOf(fullname));
			session.setAttribute("s_GImgUrl", String.valueOf(imageurl));
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
	
	
	
	
	@PostMapping(value = { "/api/createnewtopic" }, consumes = { "application/json" }, produces = { "application/json" })
	public ModelAndView api_createnewtopic(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONObject jsonbodyobj = new JSONObject(body);
		logger.info("Welcome getFundHistory: ");
		String responsestr = "";
		HttpSession session = request.getSession();
		
		
		String cat = jsonbodyobj.getString("cat");
		String topic = jsonbodyobj.getString("topic");
		String content = jsonbodyobj.getString("content");
		String desc = jsonbodyobj.getString("desc");
		
		logger.info(cat);
		logger.info(topic);
		logger.info(content);
		if(APIProtectionHandler.islogin(request))
		{
			forumservices.insertnewtopic(cat,topic,desc,content,(String) session.getAttribute("s_GEmail"));
			JSONObject jobj = new JSONObject();
			jobj.put("redirect", "/category?id="+cat);
			responsestr = jobj.toString();
		}
		else
		{
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

		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		HttpSession session = request.getSession(false);
		if (session != null)
			session.invalidate();
		// request.getRequestDispatcher("/index.jsp").forward(request,response);
		return "redirect:" + defaultpath + "login";
	}

}
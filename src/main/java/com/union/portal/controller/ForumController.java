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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.union.portal.common.APIProtectionHandler;
import com.union.portal.common.HttpUtils;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.t_forum;
import com.union.portal.domain.t_forum_category;
import com.union.portal.domain.t_forum_topiccount;
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
		logger.info((String)session.getAttribute("s_GName"));
		
		model.addAttribute("name",(String)session.getAttribute("s_GName") );
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
	public ModelAndView loginConfirm(HttpServletRequest request,  Model model) {
		 HttpSession session = request.getSession();
		logger.info("welcome login by google" + serverinfo);
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		String token = request.getParameter("token");
		JSONObject UserGoogleLoginCredential = new JSONObject(decodeJwtResponse(token));
		
		String email = UserGoogleLoginCredential.getString("email");
		String fullname = UserGoogleLoginCredential.getString("name");
		String imageurl = UserGoogleLoginCredential.getString("picture");
		String googleid  =UserGoogleLoginCredential.getString("sub");
		
		 boolean isnewuser = forumservices.isnewuser(email);
		 
		 if(!isnewuser)
		 {
			 
			
				session.setAttribute("s_GEmail", String.valueOf(email));
				session.setAttribute("s_GName", String.valueOf(fullname));
				session.setAttribute("s_GImgUrl", String.valueOf(imageurl));
				session.setAttribute("s_GID", String.valueOf(googleid));
				session.setAttribute("s_isLogin", String.valueOf("1"));
				responsestr = defaultpath + "index";
				logger.info((String)session.getAttribute("s_GName"));
		 }
		 else
		 {
			 session.setAttribute("s_GEmail", String.valueOf(email));
				session.setAttribute("s_GName", String.valueOf(fullname));
				session.setAttribute("s_GImgUrl", String.valueOf(imageurl));
				session.setAttribute("s_GID", String.valueOf(googleid));
				session.setAttribute("s_isLogin", String.valueOf("0"));
				logger.info((String)session.getAttribute("s_GName"));
			 responsestr = defaultpath +"checktnc";
		 }
		 
		 
		 
		
		logger.info(responsestr);
		mav.addObject("result",  responsestr);
		return mav;
	}
	
	
	
	@RequestMapping(value = "/agreedtnc", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ModelAndView agreedtnc(HttpServletRequest request,  Model model) {
		 HttpSession session = request.getSession();
		logger.info("welcome agreedtnc" + serverinfo);
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";
		String email = (String)session.getAttribute("s_GEmail");
		String name = (String)session.getAttribute("s_GName");
		String imgurl = (String)session.getAttribute("s_GImgUrl");
		String gid = (String)session.getAttribute("s_GID");
		String islogin = (String)session.getAttribute("s_isLogin");
if(email != null)
{
	

		 boolean isnewuser = forumservices.isnewuser(email);
		 
		 if(isnewuser)
		 {
			 
			forumservices.insertnewuser(email,gid,name,imgurl,0);
				session.setAttribute("s_GEmail", String.valueOf(email));
				session.setAttribute("s_GName", String.valueOf(name));
				session.setAttribute("s_GImgUrl", String.valueOf(imgurl));
				session.setAttribute("s_GID", String.valueOf(gid));
				session.setAttribute("s_isLogin", String.valueOf("1"));
				responsestr = defaultpath + "index";
				logger.info((String)session.getAttribute("s_GName"));
		 }
		 else
		 {
			
				session.setAttribute("s_isLogin", String.valueOf("1"));
				
			 responsestr = defaultpath +"index";
		 }
		 
}
else
{
	responsestr = defaultpath +"login";
}
		 
		
		logger.info(responsestr);
		mav.addObject("result",  responsestr);
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
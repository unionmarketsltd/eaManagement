package com.union.portal.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.union.portal.service.FundClientService;

import lombok.AllArgsConstructor;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping("/fundclient")
public class FundClientController {

	private static final boolean ISONESERVER = true;

	private static final Pattern GET_NUMBER = Pattern.compile("[0-9]+");

	private static final Logger logger = LoggerFactory.getLogger(FundClientController.class);

	private static String defaultpath = "/fundclient/";

	// private static String serverinfo = "MT5Genie";

	private static String serverinfo = "MT5B";

	private FileSystemResource uploadFilePath;

	@Autowired
	SessionLocaleResolver localeResolver;

	@Autowired
	FundClientService fundclientservice;

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

		String userseq = (String) session.getAttribute("s_Seq");

		logger.info("Welcome index " + userseq);
		String vLocal = LocaleContextHolder.getLocale().getLanguage();
		model.addAttribute("lang", vLocal);
		String returnURL = "";

		List<FundClient_loginhistory> fcl = null;
		fcl = fundclientservice.getloginhistory((String) session.getAttribute("s_Login"));
		model.addAttribute("loginhistorylist", fcl);
		model.addAttribute("email", (String) session.getAttribute("s_Login"));

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

	@RequestMapping(value = "/loginConfirm", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ModelAndView loginConfirm(HttpServletRequest request, @RequestParam("email") String email,
			@RequestParam("password") String password, Model model) {

		logger.info("welcome login db" + serverinfo);
		ModelAndView mav = new ModelAndView("jsonView");
		String responsestr = "";

		int issuccess = fundclientservice.loginverification(email, password);

		if (issuccess > 0) {

			HttpSession session = request.getSession();
			session.setAttribute("s_Login", String.valueOf(email));
			session.setAttribute("s_Name", String.valueOf(email));
			responsestr = "SUCCESS";

		} else {
			responsestr = "Invalid password.";
		}

		logger.info(responsestr);
		mav.addObject("result", APIProtectionHandler.ApiProtection(request, responsestr, Boolean.valueOf(false)));
		return mav;
	}

}
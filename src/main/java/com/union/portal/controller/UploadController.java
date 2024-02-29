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
import java.sql.Connection;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.util.Base64;
import java.util.List;
import java.util.Random;
import java.util.regex.Pattern;
// excel upload
import java.util.Iterator;
import java.io.*;
import java.sql.*;

import javax.mail.Quota.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
// file upload apache.poi
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.union.portal.common.APIProtectionHandler;
import com.union.portal.common.HttpUtils;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.forum_and_cat_name;
import com.union.portal.domain.scroll_topic_info;
import com.union.portal.domain.t_forum;
import com.union.portal.domain.t_forum_category;
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
import com.union.portal.service.ForumService;
import com.union.portal.service.UploadService;

import lombok.AllArgsConstructor;
import com.union.portal.domain.calculator;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping("/upload")
public class UploadController {

	private static final boolean ISONESERVER = true;

	private static final Pattern GET_NUMBER = Pattern.compile("[0-9]+");

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);

	private static String defaultpath = "/upload/";

	// private static String serverinfo = "MT5Genie";

	private static String serverinfo = "MT5B";

	private FileSystemResource uploadFilePath;

	@Autowired
	SessionLocaleResolver localeResolver;

	@Autowired
	UploadService uploadservice;

	@PostMapping(value = { "/api/posthistorydata" }, consumes = { "application/json" }, produces = {
			"application/json" })
	public ModelAndView api_createnewtopic(@RequestBody String body, HttpServletRequest request) throws SQLException {
		ModelAndView mav = new ModelAndView("jsonView");
		JSONArray JSONARRAY = new JSONArray(body);
		String responsestr="";
		// logger.info(JSONARRAY.getJSONObject(0).getString("transactionDate"));
		
		for( int i=0; i<JSONARRAY.length(); i++)
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

			
			
			uploadservice.insertxlsdata(tradedate, symbol, type, lots, closeprice, openprice, currency, profit, closedate,  opendate);
			
			// logger.info(UploadService.insertxlsdata(  tradedate,  symbol,  type,  lots,  closeprice,  openprice,  currency,  profit,  closedate,  opendate));
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		mav.addObject("result",  responsestr);
		return mav;
	}

	@RequestMapping(value = "/uploadExcel", method = RequestMethod.POST)
	public String uploadExcelFile(@RequestParam("file") MultipartFile file) {
		try {
			InputStream inputStream = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(inputStream);
			Sheet sheet = workbook.getSheetAt(0);
			Iterator<Row> rowIterator = sheet.iterator();

			
			// Assuming your database table has three columns: ID, Name, and Age
			/*
			 * String sql = "INSERT INTO your_table_name (ID, Name, Age) VALUES (?, ?, ?)";
			 * Connection connection = DriverManager.getConnection("your_database_url",
			 * "username", "password"); PreparedStatement statement =
			 * connection.prepareStatement(sql);
			 * 
			 * while (rowIterator.hasNext()) { Row row = rowIterator.next(); int id = (int)
			 * row.getCell(0).getNumericCellValue(); String name =
			 * row.getCell(1).getStringCellValue(); int age = (int)
			 * row.getCell(2).getNumericCellValue();
			 * 
			 * statement.setInt(1, id); statement.setString(2, name); statement.setInt(3,
			 * age); statement.executeUpdate(); }
			 * 
			 * statement.close(); connection.close(); workbook.close(); inputStream.close();
			 */
		} catch (IOException e) {
			e.printStackTrace();
		}

		String returnURL = "";
		returnURL = "/uploadxls";

		// model.addAttribute("acclist", acclist);
		return defaultpath + returnURL;
	}

	@PostMapping("/upload")
	public String uploadFile(@RequestParam("file") MultipartFile file) {
		if (file.isEmpty()) {
			// Handle empty file
			return defaultpath + "/uploadXLS";
		}

		

		try (InputStream inputStream = file.getInputStream()) {
			Workbook workbook = WorkbookFactory.create(inputStream);
			Sheet sheet = workbook.getSheetAt(0); // Assuming the first sheet

			String sql = "INSERT INTO your_table_name (column1, column2, column3) VALUES (?, ?, ?)";

			logger.info(sql);
			/*
			 * for (Row row : sheet) { if (row.getRowNum() == 0) { continue; // Skip header
			 * row }
			 * 
			 * jdbcTemplate.update(sql, row.getCell(0).getStringCellValue(),
			 * row.getCell(1).getStringCellValue(), row.getCell(2).getStringCellValue()); }
			 */

			workbook.close();
		} catch (IOException e) {
			e.printStackTrace();
			// Handle file processing or database error
			return defaultpath + "/uploadXLS";
		}

		return defaultpath + "/uploadXLS";
	}

	@RequestMapping(value = "/uploadXLS", method = RequestMethod.GET)
	public String uploadxls(Model model, HttpServletRequest request) throws SQLException {
		logger.info("Welcome uploadxls.");
		HttpSession session = request.getSession();

		String vLocal = LocaleContextHolder.getLocale().getLanguage();

		List<t_kr_account_forum_list> acclist = null;
		acclist = uploadservice.getaccountforumlist();
		model.addAttribute("nowform", acclist);

		String returnURL = "";
		returnURL = "/uploadxls";

		// model.addAttribute("acclist", acclist);
		return defaultpath + returnURL;
	}
}
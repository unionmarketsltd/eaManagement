package com.union.portal.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.union.portal.domain.FundClient_client;
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
import com.union.portal.domain.t_kr_account_forum_list;
import com.union.portal.domain.t_kr_account_history;
import com.union.portal.domain.t_top_latest_news;
import com.union.portal.domain.t_user;
import com.union.portal.domain.topic_comment_likes;
import com.union.portal.domain.topic_comment_list;
import com.union.portal.domain.topic_comment_user_like;
import com.union.portal.domain.topic_search_result;
import com.union.portal.domain.topic_subcomment_list;
// import com.union.portal.mapper.t_kr_account_forum_list;
import com.union.portal.domain.calculator;

public interface AdminService {
	public List<t_kr_account_forum_list> getaccountforumlist();
	// String id
	public void insertxlsdatafile(String id, String tradedate, String symbol, String type, double lots, double closeprice, double openprice, String currency, double profit, String closedate, String opendate);
	public void insertMT5data(String testss);
	public void insertMT5dataFetch(int Action, String Symbol, String PositionID, String ExternalID, String Digits,String Commission, String MarketBid, String Time, String RateMargin, String Reason,String VolumeClosed, String VolumeExt, String Entry, String PriceTP, String TickSize, String Gateway, String Profit, String PricePosition, String VolumeClosedExt, String Order, String PriceGateway, String Comment, String ExpertID, String ContractSize, String Fee, String Login, String Flags, String Deal, String ProfitRaw, String TickValue, String DigitsCurrency, String Storage, String PriceSL, String RateProfit, String MarketAsk, String Price,  String Volume, String ModifyFlags, String TimeMsc, String MarketLast, String Value, String Dealer);
	public List<t_mt5_accountlist> getmt5accountlist();
	
	public List<t_user> getclientlist(String row, String page);
	public int getclientlisttotalPage(int row);
	 public void updateclientlist(String isadmin,String id); 
	 

	 public int getisadmin(String email); 
	 

	 public List<t_forum> getforumlist(String row, String page); 
	 
	 public t_forum getforumdetailbyid(String id); 
	 
	 public void updateupdateforumdetail(String name,String description,String logo,String id); 
	 
	 public void updatedeleteforum(String id); 
	 
	 public List<t_forum_category> getcategorylist(String row, String page); 
	 public t_forum_category getcategorydetails(String id); 
	 

	 public void updateeditcategorydetails(String name,String description,String id); 
	 
	 public void updatedeletecategory(String id); 
	 public List<t_forum_topic> gettopiclist(String row, String page);
	 

	 public void updatedeletetopic(String id); 
	 
	 public List<t_forum_comment> getsearchcomment(String keyword); 
	 
	 public void updatedeletecomment(String id); 
	 
	
	 
	 public int getcategorylisttotalPage(int row);
	 public List<t_forum_topic> getsearchtopic(String row, String page, String keyword); 
	 
	 public int getttopiclisttotalPage( int row);
		public int getsearchtopictotalPage( int row,String keyword);
		public int getforumlisttotalPage( int row);
		
		 public void updatetoggleadmin(String isadmin,String id); 
		 

}

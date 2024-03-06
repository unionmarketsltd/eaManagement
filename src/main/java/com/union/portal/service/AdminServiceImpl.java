package com.union.portal.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

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
import com.union.portal.domain.t_kr_account_list;
import com.union.portal.domain.t_mt5_account_list;
import com.union.portal.domain.t_mt5_accountlist;
import com.union.portal.domain.t_kr_account_list;
import com.union.portal.domain.t_kr_account_history;
import com.union.portal.domain.t_kr_account_forum_list;
import com.union.portal.domain.t_top_latest_news;
import com.union.portal.domain.t_user;
import com.union.portal.domain.topic_comment_likes;
import com.union.portal.domain.topic_comment_list;
import com.union.portal.domain.topic_comment_user_like;
import com.union.portal.domain.topic_search_result;
import com.union.portal.domain.topic_subcomment_list;
import com.union.portal.mapper.AdminMapper;
import com.union.portal.mapper.ForumMapper;
import com.union.portal.mapper.UploadMapper;
import com.union.portal.domain.calculator;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;

	@Override
	public List<t_kr_account_forum_list> getaccountforumlist() {
		// TODO Auto-generated method stub
		return mapper.getaccountforumlist();
	}
	
	@Override
	public void insertxlsdatafile(String id, String tradedate, String symbol, String type, double lots, double closeprice, double openprice, String currency, double profit, String closedate, String opendate)
	// String id, 
	{
		
		mapper.insertxlsdatafile(id, tradedate,  symbol,  type,  lots,  closeprice,  openprice,  currency,  profit,  closedate,  opendate);
		// id,
	}
	
	@Override
	public List<t_mt5_accountlist> getmt5accountlist() {

		return mapper.getmt5accountlist();

	}
	
	@Override
	public void insertMT5data(String testss)
	// String id, 
	{
		mapper.insertMT5data(testss);
		// id,
	}
	
	@Override   
	public void insertMT5dataFetch(int Action, String Symbol, String PositionID, String ExternalID, String Digits,String Commission, String MarketBid, String Time, String RateMargin, String Reason,String VolumeClosed, String VolumeExt, String Entry, String PriceTP, String TickSize, String Gateway, String Profit, String PricePosition, String VolumeClosedExt, String Order, String PriceGateway, String Comment, String ExpertID, String ContractSize, String Fee, String Login, String Flags, String Deal, String ProfitRaw, String TickValue, String DigitsCurrency, String Storage, String PriceSL, String RateProfit, String MarketAsk, String Price,  String Volume, String ModifyFlags, String TimeMsc, String MarketLast, String Value, String Dealer)
	{// Check this one please
		mapper.insertMT5dataFetch(Action, Symbol, PositionID, ExternalID, Digits, Commission, MarketBid, Time, RateMargin, Reason, VolumeClosed, VolumeExt, Entry, PriceTP, TickSize, Gateway, Profit, PricePosition, VolumeClosedExt, Order, PriceGateway, Comment, ExpertID, ContractSize, Fee, Login, Flags, Deal, ProfitRaw, TickValue, DigitsCurrency, Storage, PriceSL, RateProfit, MarketAsk, Price, Volume, ModifyFlags, TimeMsc, MarketLast, Value, Dealer);
	}
	@Override
	public List<t_user> getclientlist(String row, String page) {
		int number = 0;
		try {
			if((Integer.parseInt(page)) ==0 || (Integer.parseInt(page)) <0)
					{
				 number = 0;
					}
			else
			{
				 number = Integer.parseInt(row) * (Integer.parseInt(page) - 1);
			}
			
			
			page = String.valueOf(number);
		} catch (NumberFormatException e) {
			System.out.println("Invalid input: " + row + " is not a valid integer");
		}

		return mapper.getclientlist(Integer.parseInt(row), Integer.parseInt(page));

	}

	@Override
	public int getclientlisttotalPage(int row) {

		return mapper.getclientlisttotalPage(row);

	}

	@Override
	public void updateclientlist(String isadmin, String id) {

		mapper.updateclientlist(isadmin, id);

	}

	@Override
	public int getisadmin(String email) {

		return mapper.getisadmin(email);

	}

	

	@Override
	public t_forum getforumdetailbyid(String id) {

		return mapper.getforumdetailbyid(id);

	}

	@Override
	public void updateupdateforumdetail(String name, String description, String logo, String id) {

		mapper.updateupdateforumdetail(name, description, logo, id);

	}

	@Override
	public void updatedeleteforum(String id) {

		mapper.updatedeleteforum(id);

	}

	

	@Override
	public t_forum_category getcategorydetails(String id) {

		return mapper.getcategorydetails(id);

	}

	@Override
	public void updateeditcategorydetails(String name, String description, String id) {

		mapper.updateeditcategorydetails(name, description, id);

	}

	@Override
	public void updatedeletecategory(String id) {

		mapper.updatedeletecategory(id);

	}

	
	@Override
	public List<t_forum_topic> gettopiclist(String row, String page) {
		int number = 0;
		try {
			if((Integer.parseInt(page)) ==0 || (Integer.parseInt(page)) <0)
					{
				 number = 0;
					}
			else
			{
				 number = Integer.parseInt(row) * (Integer.parseInt(page) - 1);
			}
			
			
			page = String.valueOf(number);
		} catch (NumberFormatException e) {
			System.out.println("Invalid input: " + row + " is not a valid integer");
		}

		return mapper.gettopiclist(Integer.parseInt(row), Integer.parseInt(page));

	}
	
	
	
	

	@Override
	public void updatedeletetopic(String id) {

		mapper.updatedeletetopic(id);

	}

	@Override
	public List<t_forum_comment> getsearchcomment(String keyword) {

		return mapper.getsearchcomment(keyword);

	}

	@Override
	public void updatedeletecomment(String id) {

		mapper.updatedeletecomment(id);

	}

	

	@Override
	public int getttopiclisttotalPage(int row) {
		// TODO Auto-generated method stub
		return mapper.getttopiclisttotalPage(row);
	}

	@Override
	public int getsearchtopictotalPage(int row, String keyword) {
		// TODO Auto-generated method stub
		return mapper.getsearchtopictotalPage(row , keyword);
	}

	@Override
	public List<t_forum_topic> getsearchtopic(String row, String page, String keyword) {
		int number = 0;
		try {
			if((Integer.parseInt(page)) ==0 || (Integer.parseInt(page)) <0)
					{
				 number = 0;
					}
			else
			{
				 number = Integer.parseInt(row) * (Integer.parseInt(page) - 1);
			}
			
			
			page = String.valueOf(number);
		} catch (NumberFormatException e) {
			System.out.println("Invalid input: " + row + " is not a valid integer");
		}

		return mapper.getsearchtopic(Integer.parseInt(row), Integer.parseInt(page), keyword);
	}

	@Override
	public List<t_forum_category> getcategorylist(String row, String page) {
		int number = 0;
		try {
			if((Integer.parseInt(page)) ==0 || (Integer.parseInt(page)) <0)
					{
				 number = 0;
					}
			else
			{
				 number = Integer.parseInt(row) * (Integer.parseInt(page) - 1);
			}
			
			
			page = String.valueOf(number);
		} catch (NumberFormatException e) {
			System.out.println("Invalid input: " + row + " is not a valid integer");
		}

		 return mapper.getcategorylist(Integer.parseInt(row), Integer.parseInt(page));
	}

	@Override
	public int getcategorylisttotalPage(int row) {
		// TODO Auto-generated method stub
		return mapper.getcategorylisttotalPage(row);
	}

	@Override
	public List<t_forum> getforumlist(String row, String page) {
		int number = 0;
		try {
			if((Integer.parseInt(page)) ==0 || (Integer.parseInt(page)) <0)
					{
				 number = 0;
					}
			else
			{
				 number = Integer.parseInt(row) * (Integer.parseInt(page) - 1);
			}
			
			
			page = String.valueOf(number);
		} catch (NumberFormatException e) {
			System.out.println("Invalid input: " + row + " is not a valid integer");
		}

		 return mapper.getforumlist(Integer.parseInt(row), Integer.parseInt(page));
	}

	@Override
	public int getforumlisttotalPage(int row) {
		// TODO Auto-generated method stub
		return mapper.getforumlisttotalPage(row);
	}
	
	 @Override 
	 public void updatetoggleadmin(String isadmin,String id){
	 
	  mapper.updatetoggleadmin(isadmin,id);
	 
	}
}

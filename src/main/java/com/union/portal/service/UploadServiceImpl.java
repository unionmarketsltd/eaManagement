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
import com.union.portal.domain.t_forum_topic;
import com.union.portal.domain.t_forum_topic_file;
import com.union.portal.domain.t_forum_topiccount;
import com.union.portal.domain.t_kr_account_list;
import com.union.portal.domain.t_mt5_account_list;
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
import com.union.portal.mapper.ForumMapper;
import com.union.portal.mapper.UploadMapper;
import com.union.portal.domain.calculator;


import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class UploadServiceImpl implements UploadService {
	
	private UploadMapper mapper;
	

	
	@Override
	public List<t_kr_account_forum_list> getaccountforumlist() {
		// TODO Auto-generated method stub
		return mapper.getaccountforumlist();
	} 
	
	
	@Override
	public void insertxlsdata(String tradedate, String symbol, String type, double lots, double closeprice, double openprice, String currency, double profit, String closedate, String opendate)
	{
		// String id
		mapper.insertxlsdata( tradedate,  symbol,  type,  lots,  closeprice,  openprice,  currency,  profit,  closedate,  opendate);
	}
	
	
}

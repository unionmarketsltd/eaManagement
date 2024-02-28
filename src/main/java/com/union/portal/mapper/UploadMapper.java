package com.union.portal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.union.portal.domain.FundClient_client;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.forum_and_cat_name;
import com.union.portal.domain.scroll_topic_info;
import com.union.portal.domain.t_forum;
import com.union.portal.domain.t_forum_category;
import com.union.portal.domain.t_forum_topic;
import com.union.portal.domain.t_forum_topic_file;
import com.union.portal.domain.t_forum_topiccount;
import com.union.portal.domain.t_kr_account_forum_list;
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
import com.union.portal.domain.calculator;

public interface UploadMapper {

	
	
	@Select("SELECT * FROM forum.t_kr_account_list where dbsts='A' ")
	public List<t_kr_account_forum_list> getaccountforumlist();
	
	@Select("INSERT IGNORE INTO `forum`.`t_kr_account_history` (`accountid`, `dbsts`, `tradedate`, `symbol`, `type`, `lots`, `closeprice`, `openprice`, `currency`, `profit`, `closedate`, `opendate`, `credate`)\r\n"
			+ "VALUES ('4', 'A', #{tradedate}, #{symbol}, #{type}, #{lots}, #{closeprice}, #{openprice}, #{currency}, #{profit}, #{closedate}, #{opendate}, now());")
	public void insertxlsdata(
			@Param("tradedate")String tradedate,
			@Param("symbol")String symbol,
			@Param("type")String type,
			@Param("lots")double lots,
			@Param("closeprice")double closeprice,
			@Param("openprice")double openprice,
			@Param("currency")String currency,
			@Param("profit")double profit,
			@Param("closedate")String closedate,
			@Param("opendate")String opendate);
	
	// #{accid},  // @Param("accid")String accid,
	
}

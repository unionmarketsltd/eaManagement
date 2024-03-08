package com.union.portal.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.union.portal.domain.FundClient_client;
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
import com.union.portal.domain.t_mt5_account_history_list;
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

public interface ForumService {

	boolean isnewuser(String email);

	public void insertnewuser(String email, String google_id, String name, String google_image_url, int isadmin);

	List<FundClient_loginhistory> getloginhistory(String email);

	int loginverification2(String email, String password);

	List<t_forum> getforumlist();;

	List<t_forum_category> getforumcategorylist();

	List<t_forum_topiccount> getforumtopiccountlist();

	public forum_and_cat_name getcategorynameandforumname(String categoryid);

	public t_forum_category getforumcategoryinfo(String categoryid);

	public List<t_forum_topic> getforumcategorytopiclist(String categoryid, int offset);
	
	public int getforumcategorytotalPage(String categoryid);
	
	

	public t_forum_topic getforumtopicinfo(String topicid);

	public List<topic_comment_list> getforumtopiccommentlist(String topicid);

	public List<topic_subcomment_list> getforumtopicsubcommentlist(String topicid);

	public void insertnewtopic(String category_id, String title, String description,String content,String thumbnail, String create_by);
	
	
	public void insertnewcomment( String p_id,String depth,String tid,String comment,String createby);
	public void insertnewcommentfortopic( String depth, String tid, String comment, String createby);
	
	public void updatetopicview(String tid);
	
	public List<topic_search_result> getsearchresult(String keyword);
	public List<scroll_topic_info> getscrolltopicinfo();
	
	public void userliketopic(String tid,String email);
	
	public int isuserlikethistopic(String tid,String email);
	
	public void userunliketopic(String tid,String email);
	public void userlikeliketopic(String tid,String email);
	
	
	public List<topic_comment_user_like>  userliketopiccommentlist(String tid,String email);
	
	
	public int isuserlikethiscomment(String tid,String email);
	
	
	public void userlikecomment(String tid,String email);
	
	
	public void userlikelikecomment(String tid,String email);
	
	public void userunlikecomment(String tid,String email);
	
	
	public void updatetopic(String title,String description,String content,String id,String thumbnail,String createby);
	
	
	public int isautorizedtoedittopic(String id,String email);
	
	
	public void deletetopic(String id,String createby);
	
	public t_user getuserinfo(String email);
	
	public List<t_forum_topic> getmytopiclist(String createby);
	
	
	public List<t_forum_topic> getmycommentedtopiclist(String createby);
	
	public List<t_forum_topic> getmylikedtopiclist(String createby);
	public List<topic_comment_likes> getcommentlikecount(String tid);
	
	public int islikerecordexist(String tid,String email);
	
	public List<t_top_latest_news> gettopmenulatesttopic();
	public void recordtopicfiledetail(String topic_id,String file_name,String file_path_name,String createby);
	
	
	
	public int gettopicidby( String category_id,String title,String description,String content,String thumbnail, String create_by);
	
	public List<t_forum_topic_file> gettopicfilelist(String tid);

	
	public void deletefile(String id ,String createby);
	public boolean isallowviewaccount(String login);
	public List<t_mt5_account_list> getmt5accountlist();
	public t_mt5_account_list getmt5accountname(String login);
	public List<t_kr_account_list> getKRaccountlist();
	public t_kr_account_list getKRaccountname(String accountid);
	public boolean isallowviewkraccount(String accountid);

	public calculator getKRaccountCalculator(String accountid);
	 public int getcheckisban(String email); 
	 public List<t_kr_account_history> getkraccountprofitchartdata(String id); 
	 
	 public int getkraccounthistorytotalpage(String id); 
	 

	 public String getkraccounthistory(String id,String row,String page); 
	 

	 
	 public  List<piechart> getprofitbysymbol(String accountid); 
	 
	 public String getkrprofitchartdata(String id); 

	 public List<calculator> getDailyProfitList(String accountid);
	 public List<calculator> getMonthlyProfitList(String accountid);
	 
	 
	 public List<t_mt5_account_history_list> getKRaccountHistorylist(String id);
	 
	 
	 public List<t_kr_profit_rate> getkraccountprofitratelist(); 
	 

	 // ----------------------------------------------------------
	 
}

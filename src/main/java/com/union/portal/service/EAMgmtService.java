package com.union.portal.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.union.portal.domain.FundClient_client;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.forum_and_cat_name;
import com.union.portal.domain.scroll_topic_info;
import com.union.portal.domain.t_eaSystem_admin_list;
import com.union.portal.domain.t_eaSystem_admin_searchById;
import com.union.portal.domain.t_eaSystem_admin_searchByName;
import com.union.portal.domain.t_eaSystem_adminlist_searchId;
import com.union.portal.domain.t_eaSystem_adminlist_searchName;
import com.union.portal.domain.t_eaSystem_eaGroup_list;
import com.union.portal.domain.t_eaSystem_eaSearchAccNo_list;
import com.union.portal.domain.t_eaSystem_eaSearchName_list;
import com.union.portal.domain.t_eaSystem_eaname_list;
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

public interface EAMgmtService {
	
	
	public List<t_eaSystem_admin_list> eaSystemAdminList();
	public List<t_eaSystem_adminlist_searchId> adminListSearchAccNo(int eaSearchAccNo);
	public t_eaSystem_admin_list getAdminLogin(String eemail, String epwd);
	public List<t_eaSystem_adminlist_searchName> adminListSearchName(String eaSearchName);
	public List<t_eaSystem_admin_searchByName> eaSearchAdminByName(String keyword);
	public List<t_eaSystem_admin_searchById> eaSearchAdminById(int userseq);
	public List<t_eaSystem_eaname_list> eaSystemEAnameList();
	public List<t_eaSystem_eaGroup_list> eaSystemEAGroupList(String keyword);
	public List<t_eaSystem_eaSearchAccNo_list> eaSysSearchAccNoList(int accno); // int
	public List<t_eaSystem_eaSearchName_list> eaSystemEASearchNameList(String keyword);
	public void insertAdmin(String useq, String imail, String pword, String naem, String fon, String adreis);
	public void deleteAdmin(int useq);
	public void fetchAdmin(int useq);
	public void deleteListAccount(int useq);
	public void updateAccStaEnd(int useq, String sdate, String edate);
	public int checkLogin(String email, String userseq) ;
	public t_eaSystem_admin_list getAdminInfoLogin(int userseq);
	public t_eaSystem_eaSearchName_list getAccountInfo(int accnoseq);
	
	// +++++++++++++ ============== +++++++++++++
	
		 

}

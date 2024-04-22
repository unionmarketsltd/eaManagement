package com.union.portal.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

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
import com.union.portal.mapper.EAMgmtMapper;
import com.union.portal.domain.calculator;
import com.union.portal.domain.t_eaSystem_admin_list;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class EAMgmtServiceImpl implements EAMgmtService {

	private EAMgmtMapper mapper;
	
	
	@Override
	public int checkLogin(String email ,String userseq) {
		// TODO Auto-generated method stub
		return mapper.checkLogin(email , userseq);
	}
	
	@Override
	public t_eaSystem_admin_list getAdminLogin(String eemail, String epwd) {
		return mapper.getAdminLogin(eemail, epwd);
	}
	
	
	@Override
	public t_eaSystem_admin_list getAdminInfoLogin(int userseq) {
		return mapper.getAdminInfoLogin(userseq);
	}
	
	
	@Override
	public List<t_eaSystem_admin_list> eaSystemAdminList(int pageno) {
		return mapper.eaSystemAdminList(pageno);
	}
	
	
	@Override
	public List<t_eaSystem_admin_searchByName> eaSearchAdminByName(String keyword) {
		return mapper.eaSearchAdminByName(keyword);
	}
	
	 
	@Override
	public List<t_eaSystem_admin_searchById> eaSearchAdminById(int userseq) {
		return mapper.eaSearchAdminById(userseq);
	}
	
	@Override
	public List<t_eaSystem_eaname_list> eaSystemEAnameList() {
		return mapper.eaSystemEAnameList();
	}
	
	
	@Override
	public List<t_eaSystem_eaGroup_list> eaSystemEAGroupList(String keyword, int eaOffset) {

		return mapper.eaSystemEAGroupList(keyword, eaOffset);

	}
	
	
	@Override
	public int countEAGroupList(String waGroupName) {
		return mapper.countEAGroupList(waGroupName);
	}
	
	
	
	@Override
	public List<t_eaSystem_eaSearchAccNo_list> eaSysSearchAccNoList(int accno) {
		return mapper.eaSysSearchAccNoList(accno);
	}
	
	@Override
	public List<t_eaSystem_eaSearchName_list> eaSystemEASearchNameList(String keyword) {
		return mapper.eaSystemEASearchNameList(keyword);
	}
	
	
	@Override
	public void insertAdmin(String useq, String imail, String pword, String naem, String fon, String adreis)
	{
		mapper.insertAdmin(useq, imail, pword, naem, fon, adreis);
	}
	
	
	@Override
	public void deleteAdmin(int useq)
	{
		mapper.deleteAdmin(useq);
	}
	
	@Override
	public void fetchAdmin(int useq)
	{
		mapper.fetchAdmin(useq);
	}
	
	
	@Override
	public List<t_eaSystem_adminlist_searchName> adminListSearchName(String keyword) {
		return mapper.adminListSearchName(keyword);
	}
	
	
	@Override
	public List<t_eaSystem_adminlist_searchId> adminListSearchAccNo(int keyword) {
		return mapper.adminListSearchAccNo(keyword);
	}
	
	
	@Override
	public void deleteListAccount(int useq) {
		mapper.deleteListAccount(useq);
	}
	
	
	@Override
	public void updateAccStaEnd(int useq, String sdate, String edate) {
		mapper.updateAccStaEnd(useq, sdate, edate);
	}
	
	
	@Override
	public void updateAccFlag() {
		mapper.updateAccFlag();
	}
	
	
	@Override 
	public t_eaSystem_eaSearchName_list getAccountInfo(int accnoseq) {
		return mapper.getAccountInfo(accnoseq);
	}
	
	
	@Override
	public void updateAdminInfo(int useq, String emails, String pwds, String phns , String adds) {
		mapper.updateAdminInfo(useq, emails, pwds, phns , adds);
	}
	
	
	
	// paging section
	@Override
	public int pageCountAdmin() {
		return mapper.pageCountAdmin();
	}
	
	// +++++++++++++++ ================ ++++++++++++++++
	
}

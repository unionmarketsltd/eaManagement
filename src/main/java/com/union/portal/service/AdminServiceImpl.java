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
	 public List<t_user> getclientlist(){
	 
	 return mapper.getclientlist();
	 
	}
	 
	 @Override 
	 public void updateclientlist(String isadmin,String id){
	 
	  mapper.updateclientlist(isadmin,id);
	 
	}
	 
	 @Override 
	 public int getisadmin(String email){
	 
	 return mapper.getisadmin(email);
	 
	}
	 
	 @Override 
	 public List<t_forum> getforumlist(){
	 
	 return mapper.getforumlist();
	 
	}
	 
	 @Override 
	 public t_forum getforumdetailbyid(String id){
	 
	 return mapper.getforumdetailbyid(id);
	 
	}
	 
	 @Override 
	 public void updateupdateforumdetail(String name,String description,String logo,String id){
	 
	  mapper.updateupdateforumdetail(name,description,logo,id);
	 
	}
	 
	 
	 @Override 
	 public void updatedeleteforum(String id){
	 
	  mapper.updatedeleteforum(id);
	 
	}
	 
	 
	 @Override 
	 public List<t_forum_category> getcategorylist(){
	 
	 return mapper.getcategorylist();
	 
	}
	 
	 
	 @Override 
	 public t_forum_category getcategorydetails(String id){
	 
	 return mapper.getcategorydetails(id);
	 
	}
	 
	 @Override 
	 public void updateeditcategorydetails(String name,String description,String id){
	 
	  mapper.updateeditcategorydetails(name,description,id);
	 
	}
	 
	 @Override 
	 public void updatedeletecategory(String id){
	 
	  mapper.updatedeletecategory(id);
	 
	}
	 
	 @Override 
	 public List<t_forum_topic> gettopiclist(){
	 
	 return mapper.gettopiclist();
	 
	}
}

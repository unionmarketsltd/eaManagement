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
import com.union.portal.domain.t_forum_topiccount;
import com.union.portal.domain.t_user;
import com.union.portal.domain.topic_comment_likes;
import com.union.portal.domain.topic_comment_list;
import com.union.portal.domain.topic_comment_user_like;
import com.union.portal.domain.topic_search_result;
import com.union.portal.domain.topic_subcomment_list;
import com.union.portal.mapper.ForumMapper;


import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class ForumServiceImpl implements ForumService {
	
	private ForumMapper mapper;
	
	@Override
	public boolean isnewuser(String email) {
		// TODO Auto-generated method stub
		int row = mapper.isnewuser(email);
		if(row ==0)
		{
			return true;
		}
		else
		{
			return false;
		}
		
	}
	
	@Override
	public void insertnewuser(String email,String google_id,String name,String google_image_url,int isadmin)
	{
		
		mapper.insertnewuser(email, google_id, name, google_image_url, isadmin);
		
		
		
	}
	
	
	
	@Override
	public List<FundClient_loginhistory> getloginhistory(String email) {
		// TODO Auto-generated method stub
		return mapper.getloginhistory(email );
	}
	
	@Override
	public int loginverification2(String email ,String password) {
		// TODO Auto-generated method stub
		return mapper.loginverification2(email , password);
	}

	@Override
	public List<t_forum> getforumlist() {
		// TODO Auto-generated method stub
		return mapper.getforumlist();
	}

	@Override
	public List<t_forum_category> getforumcategorylist() {
		// TODO Auto-generated method stub
		return mapper.getforumcategorylist();
	}

	@Override
	public List<t_forum_topiccount> getforumtopiccountlist() {
		// TODO Auto-generated method stub
		return mapper.getforumtopiccountlist();
	}

	@Override
	public forum_and_cat_name getcategorynameandforumname(String categoryid) {
		// TODO Auto-generated method stub
		return mapper.getcategorynameandforumname(categoryid);
	}

	@Override
	public t_forum_category getforumcategoryinfo(String categoryid) {
		// TODO Auto-generated method stub
		return mapper.getforumcategoryinfo( categoryid);
	}

	@Override
	public List<t_forum_topic> getforumcategorytopiclist(String categoryid , int offset) {
		// TODO Auto-generated method stub
		return mapper.getforumcategorytopiclist(categoryid ,offset);
	}

	@Override
	public t_forum_topic getforumtopicinfo(String topicid) {
		// TODO Auto-generated method stub
		return mapper.getforumtopicinfo(topicid);
	}

	@Override
	public List<topic_comment_list> getforumtopiccommentlist(String topicid) {
		// TODO Auto-generated method stub
		return mapper.getforumtopiccommentlist(topicid);
	}

	@Override
	public List<topic_subcomment_list> getforumtopicsubcommentlist(String topicid) {
		// TODO Auto-generated method stub
		return mapper.getforumtopicsubcommentlist(topicid);
	}

	@Override
	public void insertnewtopic(String category_id, String title, String description,String content,String thumbnail, String create_by) {
		mapper.insertnewtopic(category_id, title, description,content,thumbnail, create_by);
		
	}

	@Override
	public void insertnewcomment(String p_id, String depth, String tid, String comment, String createby) {
		
		
		
			mapper.insertnewcomment(p_id, depth, tid, comment, createby);
			
		
	
		
	}
	
	
	@Override
	public void insertnewcommentfortopic( String depth, String tid, String comment, String createby) {
		
		
		
			mapper.insertnewcommentfortopic( depth, tid, comment, createby);
			
		
	
		
	}

	@Override
	public void updatetopicview(String tid) {
		mapper.updatetopicview(tid);
		
	}

	@Override
	public List<topic_search_result> getsearchresult(String keyword) {
		// TODO Auto-generated method stub
		return mapper.getsearchresult(keyword);
	}

	@Override
	public int getforumcategorytotalPage(String categoryid) {
		// TODO Auto-generated method stub
		return mapper.getforumcategorytotalPage(categoryid);
	}

	@Override
	public List<scroll_topic_info> getscrolltopicinfo() {
		// TODO Auto-generated method stub
		return mapper.getscrolltopicinfo();
	}

	@Override
	public void userliketopic(String tid, String email) {
		mapper.userliketopic(tid, email);
		
	}

	
	public int isuserlikethistopic(String tid, String email) {
		// TODO Auto-generated method stub
		return mapper.isuserlikethistopic(tid, email);
	}

	@Override
	public void userunliketopic(String tid, String email) {
	mapper.userunliketopic(tid, email);
	
		
	}

	@Override
	public void userlikeliketopic(String tid, String email) {
		mapper.userlikeliketopic(tid, email);
		
	}

	@Override
	public List<topic_comment_user_like>  userliketopiccommentlist(String tid, String email) {
		return mapper.userliketopiccommentlist(tid, email);
		
	}

	@Override
	public int isuserlikethiscomment(String tid, String email) {
		return mapper.isuserlikethiscomment(tid, email);
				
	}

	@Override
	public void userlikecomment(String tid, String email) {
		mapper.userlikecomment(tid, email);
		
	}

	@Override
	public void userlikelikecomment(String tid, String email) {
		mapper.userlikelikecomment(tid, email);
	}

	@Override
	public void userunlikecomment(String tid, String email) {
		mapper.userunlikecomment(tid, email);
		
	}

	@Override
	public void updatetopic(String title, String description, String content, String id ,String thumbnail,String createby) {
		mapper.updatetopic(title, description, content, id, thumbnail,createby);
		
	}

	@Override
	public int isautorizedtoedittopic(String id, String email) {
		// TODO Auto-generated method stub
		return mapper.isautorizedtoedittopic(id, email);
	}

	@Override
	public void deletetopic(String id, String createby) {
		mapper.deletetopic(id, createby);
		
	}

	@Override
	public t_user getuserinfo(String email) {
		// TODO Auto-generated method stub
		return mapper.getuserinfo(email);
	}

	@Override
	public List<t_forum_topic> getmytopiclist(String createby) {
		// TODO Auto-generated method stub
		return mapper.getmytopiclist(createby);
	}

	@Override
	public List<t_forum_topic> getmycommentedtopiclist(String createby) {
		// TODO Auto-generated method stub
		return mapper.getmycommentedtopiclist(createby);
	}

	@Override
	public List<topic_comment_likes> getcommentlikecount(String tid) {
		// TODO Auto-generated method stub
		return mapper.getcommentlikecount(tid);
	}
	
	

	
}

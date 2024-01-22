package com.union.portal.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.union.portal.domain.FundClient_client;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.forum_and_cat_name;
import com.union.portal.domain.t_forum;
import com.union.portal.domain.t_forum_category;
import com.union.portal.domain.t_forum_topic;
import com.union.portal.domain.t_forum_topiccount;
import com.union.portal.domain.topic_comment_list;
import com.union.portal.domain.topic_search_result;
import com.union.portal.domain.topic_subcomment_list;

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

	public List<t_forum_topic> getforumcategorytopiclist(String categoryid);

	public t_forum_topic getforumtopicinfo(String topicid);

	public List<topic_comment_list> getforumtopiccommentlist(String topicid);

	public List<topic_subcomment_list> getforumtopicsubcommentlist(String topicid);

	public void insertnewtopic(String category_id, String title, String description,String content, String create_by);
	
	
	public void insertnewcomment( String p_id,String depth,String tid,String comment,String createby);
	public void insertnewcommentfortopic( String depth, String tid, String comment, String createby);
	
	public void updatetopicview(String tid);
	
	public List<topic_search_result> getsearchresult(String keyword);
}

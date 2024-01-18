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
import com.union.portal.domain.topic_subcomment_list;

public interface ForumService {
	
	/*String getloginID(String email, String password);
	public Fundmanager_user getUserInfoByUserseq(String userseq);
	List<Fundmanager_group> getUserGroupsByUserseq(String userseq);
	String getAgentAccountNoByUserseq(String userseq);
	String getFundAccountNoByUserseq(String userseq);*/
	/*public FundClient_client getClientDetails(String email,String userseq);
	
	public void insertRegiserUserDetail(String clientid,
			String userseq,
			String firstname,
			String middlename,
			String lastname,
			String birthday,
			String phone,
			String email,
			String password,
			String address,
			String city,
			String state,
			String postcode,
			String country,
			String idfilename,
			String idrealfilename,
			String porfilename,
			String porrealfilename,
			String emailauthkey);
	
	
	public FundClient_client getauthkeydetail(String emailauthkey);
	public void UpdateEmailAuth(int clientseq);

	public String getloginPasswordByEmail(String email);
	
	public int ValidatePassword(String email,String password, String userseq);
	public String getmanagerloginbyuserseq(String userseq);
	public int checkisemailisregistered(String email ,String userseq) ;
*/
	boolean isnewuser(String email);
	public void insertnewuser(String email,String google_id,String name,String google_image_url,int isadmin);
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
		
		
}

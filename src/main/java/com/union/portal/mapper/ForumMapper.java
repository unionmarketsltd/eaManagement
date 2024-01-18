package com.union.portal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.union.portal.domain.FundClient_client;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.domain.forum_and_cat_name;
import com.union.portal.domain.t_forum;
import com.union.portal.domain.t_forum_category;
import com.union.portal.domain.t_forum_topic;
import com.union.portal.domain.t_forum_topiccount;
import com.union.portal.domain.topic_comment_list;
import com.union.portal.domain.topic_subcomment_list;

public interface ForumMapper {

	
/*	
	@Select("SELECT * FROM fundmanager.client where email = #{email} and userseq = #{userseq};")
	public FundClient_client getClientDetails(@Param("email")String email,@Param("userseq")String userseq);
	
	

	
	
	@Insert("INSERT INTO `fundmanager`.`client`(`dbsts`,`clientid`,`userseq`,`firstname`,`middlename`,`lastname`,`birthday`,`phone`,`email`,`password`,`address`,`city`,`state`,`postcode`,`country`,`idfilename`,`idrealfilename`,`porfilename`,`porrealfilename`,`istermsofservice`,`isaml`,`isriskwarning`,`credate`,`creuser`,`emailauthkey`)"
			+ "VALUES('A',#{clientid},#{userseq},#{firstname},#{middlename},#{lastname},#{birthday},#{phone},#{email},#{password},#{address},#{city},#{state},#{postcode},#{country},#{idfilename},#{idrealfilename},#{porfilename},#{porrealfilename},'Y','Y','Y',now(),'FundClientRegisterPage',#{emailauthkey});")
	public void insertRegiserUserDetail(@Param("clientid")String clientid,
			@Param("userseq")String userseq,
			@Param("firstname")String firstname,
			@Param("middlename")String middlename,
			@Param("lastname")String lastname,
			@Param("birthday")String birthday,
			@Param("phone")String phone,
			@Param("email")String email,
			@Param("password")String password,
			@Param("address")String address,
			@Param("city")String city,
			@Param("state")String state,
			@Param("postcode")String postcode,
			@Param("country")String country,
			@Param("idfilename")String idfilename,
			@Param("idrealfilename")String idrealfilename,
			@Param("porfilename")String porfilename,
			@Param("porrealfilename")String porrealfilename,@Param("emailauthkey")String emailauthkey);
	
	
	
	@Select("SELECT clientseq,firstname,middlename,lastname FROM fundmanager.client where emailauthkey = #{emailauthkey}")
	public FundClient_client getauthkeydetail(@Param("emailauthkey")String emailauthkey);
	
	
	@Update("update fundmanager.client set isemailauth = 'Y' where clientseq = #{clientseq}")
	public void UpdateEmailAuth(@Param("clientseq")int clientseq);
	
	@Select("SELECT password FROM fundmanager.client where email = #{email}")
	public String getloginPasswordByEmail(@Param("email")String email);
	
	@Select("SELECT count(*) FROM fundmanager.client where email = #{email} and password = #{password} and userseq = #{userseq}")
	public int ValidatePassword(@Param("email")String email,@Param("password")String password,@Param("userseq")String userseq);


	@Select("SELECT managerlogin FROM fundmanager.user where userseq = #{userseq}")
	public String getmanagerloginbyuserseq(@Param("userseq")String userseq);
	
	*/
	@Select("SELECT count(*) FROM forum.t_user where email = #{email}")
	public int isnewuser(@Param("email")String email);
	
	
	@Insert("INSERT INTO `forum`.`t_user`(`email`,`google_id`,`name`,`google_image_url`,`create_date`,`last_login_date`,`isadmin`)"
			+ "VALUES(#{email},#{google_id},#{name},#{google_image_url},now(),now(),#{isadmin})")
	public void insertnewuser(@Param("email")String email,@Param("google_id")String google_id,@Param("name")String name,@Param("google_image_url")String google_image_url,@Param("isadmin")int isadmin);
	
	
	
	
	@Select("SELECT * FROM forum.t_forum")
	public List<t_forum> getforumlist();
	
	@Select("SELECT * FROM forum.t_forum_category")
	public List<t_forum_category> getforumcategorylist();
	
	@Select("SELECT t_forum.id , count(*) as topic FROM forum.t_forum inner join forum.t_forum_category on t_forum.id = t_forum_category.forum_id join forum.t_forum_topic on t_forum_category.id = t_forum_topic.category_id group by t_forum.id")
public List<t_forum_topiccount> getforumtopiccountlist();
	
	@Select("SELECT count(*) FROM testdb.t_user where email = #{email} and password = #{password}")
	public int loginverification2(@Param("email")String email,@Param("password")String password);
	
	
	@Select("SELECT *FROM testdb.t_user_login_history where email = #{email} ")
	public List<FundClient_loginhistory> getloginhistory(@Param("email")String email);
	
	
	
	@Select("select t_forum.id as forumid, t_forum_category.id as catid, t_forum.name as forumname, t_forum_category.name as categoryname from t_forum_category inner join t_forum on t_forum_category.forum_id = t_forum.id where t_forum_category.id = #{categoryid} ")
	public forum_and_cat_name getcategorynameandforumname(@Param("categoryid")String categoryid);
	
	
	
	
	@Select("SELECT t_forum_category.*, count(distinct t_forum_topic.id) as post_number, count(distinct t_forum_comment.id) as comment_number, max(distinct t_forum_comment.create_date) as last_update  FROM forum.t_forum_category join t_forum_topic on t_forum_category.id = t_forum_topic.category_id left join t_forum_comment on t_forum_comment.topic_id = t_forum_topic.id where t_forum_category.id =#{categoryid}")
	public t_forum_category getforumcategoryinfo(@Param("categoryid")String categoryid);
	
	
	
	
	@Select("SELECT distinct forum.t_forum_topic.* ,  count(forum.t_forum_comment.id) as reply , (select name from t_user where email = forum.t_forum_topic.create_by ) as create_by_name , (select id from t_user where email = forum.t_forum_topic.create_by ) as create_by_id  FROM forum.t_forum_topic left join forum.t_forum_comment on forum.t_forum_topic.id=forum.t_forum_comment.topic_id where category_id =#{categoryid} group by forum.t_forum_comment.topic_id order by pin_post desc, last_comment_date desc ,last_comment_date desc")
	public List<t_forum_topic> getforumcategorytopiclist(@Param("categoryid")String categoryid);
	
	@Select("SELECT * \r\n"
			+ ",(SELECT \r\n"
			+ "    CASE\r\n"
			+ "        WHEN DATEDIFF(now(), create_date) < 1 THEN CONCAT(TIMESTAMPDIFF(HOUR, now(), create_date), ' hours ago')\r\n"
			+ "        ELSE CONCAT(DATEDIFF(now(), create_date), ' days ago')\r\n"
			+ "    END \r\n"
			+ "FROM t_forum_topic where id = 1) as dayago\r\n"
			+ "\r\n"
			+ ",(select count(*) from t_forum_comment where create_by = forum.t_forum_topic.create_by) as author_post, (select name from t_forum_category where id = forum.t_forum_topic.category_id) as category_name,(select name from t_user where email = forum.t_forum_topic.create_by) as create_by_name,(select id from t_user where email = forum.t_forum_topic.create_by) as create_by_id, (select count(*) from t_forum_comment where topic_id = forum.t_forum_topic.id) as reply from forum.t_forum_topic where id =#{topicid}")
	public t_forum_topic getforumtopicinfo(@Param("topicid")String topicid);
	
	
	
	@Select("SELECT *,(SELECT CASE WHEN DATEDIFF(now(), create_date) < 1 THEN CONCAT(TIMESTAMPDIFF(HOUR, now(), create_date), ' hours ago') ELSE CONCAT(DATEDIFF(now(), create_date), ' days ago') END ) as dayago, (select count(*) from t_forum_comment where  forum.t_forum_comment.create_by =create_by ) as userpost,(select name from t_user where email = forum.t_forum_comment.create_by) as postownername FROM forum.t_forum_comment where topic_id =#{topicid} order by id asc;")
	public List<topic_comment_list> getforumtopiccommentlist(@Param("topicid")String topicid);
	
	
	@Select("SELECT * ,(SELECT CASE WHEN DATEDIFF(now(), create_date) < 1 THEN CONCAT(TIMESTAMPDIFF(HOUR, now(), create_date), ' hours ago') ELSE CONCAT(DATEDIFF(now(), create_date), ' days ago') END ) as dayago, (select count(*) from t_forum_comment where  forum.t_forum_sub_comment.create_by =create_by ) as userpost,(select name from t_user where email = forum.t_forum_sub_comment.create_by) as postownername FROM forum.t_forum_sub_comment where topic_id =#{topicid} order by id asc;")
	public List<topic_subcomment_list> getforumtopicsubcommentlist(@Param("topicid")String topicid);
	
	
	
}

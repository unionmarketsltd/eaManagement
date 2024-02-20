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

public interface AdminMapper {

	@Select("SELECT * FROM forum.t_kr_account_list where dbsts='A' ")
	public List<t_kr_account_forum_list> getaccountforumlist();

	@Select("INSERT INTO `forum`.`t_kr_account_history`\r\n" + "(`accountid`,\r\n" + "`dbsts`,\r\n" + "`tradedate`,\r\n"
			+ "`symbol`,\r\n" + "`type`,\r\n" + "`lots`,\r\n" + "`closeprice`,\r\n" + "`openprice`,\r\n"
			+ "`currency`,\r\n" + "`profit`,\r\n" + "`closedate`,\r\n" + "`opendate`,\r\n" + "`credate`)\r\n"
			+ "VALUES\r\n" + "(#{accid},\r\n" + "A,\r\n" + ",\r\n" + ",\r\n" + ",\r\n" + ",\r\n" + ",\r\n" + ",\r\n"
			+ ",\r\n" + ",\r\n" + ",\r\n" + ",\r\n" + ");")
	public void insertxlsdata(@Param("accid") String accid, @Param("email") String email);

	@Select("SELECT * FROM forum.t_user;")
	public List<t_user> getclientlist();

	@Update("UPDATE `forum`.`t_user` SET `isban` = #{isadmin} WHERE `id` = #{id};")
	public void updateclientlist(@Param("isadmin") String isadmin, @Param("id") String id);

	@Select("SELECT isadmin from forum.t_user where email = #{email}")
	public int getisadmin(@Param("email") String email);

	@Select("SELECT * FROM `forum`.`t_forum` where dbsts ='A';")
	public List<t_forum> getforumlist();
	@Select("SELECT * FROM `forum`.`t_forum` where id=#{id} and dbsts ='A';")
	 public t_forum getforumdetailbyid(@Param("id") String id); 
	 
	@Update("UPDATE `forum`.`t_forum` SET `name` = #{name}, `description` = #{description}, `logo` =#{logo} WHERE `id` = #{id};")
	 public void updateupdateforumdetail(@Param("name") String name,@Param("description") String description,@Param("logo") String logo,@Param("id") String id); 
	 
	@Update("UPDATE `forum`.`t_forum` SET `dbsts` = 'D' WHERE `id` = #{id};")
	 public void updatedeleteforum(@Param("id") String id); 
	 
	
	@Select("SELECT *,(select name from t_forum where id = forum_id) as forum_name FROM forum.t_forum_category where dbsts = 'A';")
	 public List<t_forum_category> getcategorylist(); 
	 

	 @Select("SELECT *,(select name from t_forum where id = forum_id) as forum_name FROM forum.t_forum_category where id = #{id} and dbsts = 'A';")
	 public t_forum_category getcategorydetails(@Param("id") String id); 
	 
	 @Update("UPDATE `forum`.`t_forum_category` SET `name` = #{name}, `description` =#{description} WHERE `id` = #{id} ;")
	 public void updateeditcategorydetails(@Param("name") String name,@Param("description") String description,@Param("id") String id); 
	 
	 @Update("UPDATE `forum`.`t_forum_category` SET `dbsts` = 'D' WHERE `id` = #{id} ;")
	 public void updatedeletecategory(@Param("id") String id); 
	 
	 @Select("SELECT id,title,description, (select name from t_forum_category where id= category_id) as category_name, create_by,create_date  FROM forum.t_forum_topic where dbsts='A';")
	 public List<t_forum_topic> gettopiclist(); 
	 

}
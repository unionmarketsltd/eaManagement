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
import com.union.portal.domain.t_mt5_account_list;
import com.union.portal.domain.t_top_latest_news;
import com.union.portal.domain.t_user;
import com.union.portal.domain.topic_comment_likes;
import com.union.portal.domain.topic_comment_list;
import com.union.portal.domain.topic_comment_user_like;
import com.union.portal.domain.topic_search_result;
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
	
	
	
	
	@Select("SELECT * FROM forum.t_forum where dbsts='A' ")
	public List<t_forum> getforumlist();
	
	@Select("SELECT * FROM forum.t_forum_category where dbsts='A' ")
	public List<t_forum_category> getforumcategorylist();
	
	@Select("SELECT \r\n"
			+ "    t_forum.id,\r\n"
			+ "    COUNT(DISTINCT t_forum_category.id) AS cat,\r\n"
			+ "    COALESCE(COUNT(DISTINCT t_forum_topic.id), 0) AS topic\r\n"
			+ "FROM t_forum\r\n"
			+ "LEFT JOIN t_forum_category ON t_forum.id = t_forum_category.forum_id\r\n"
			+ "LEFT JOIN t_forum_topic ON t_forum_category.id = t_forum_topic.category_id\r\n"
			+ "GROUP BY t_forum.id;\r\n"
			+ "")
public List<t_forum_topiccount> getforumtopiccountlist();
	
	@Select("SELECT count(*) FROM testdb.t_user where email = #{email} and password = #{password}")
	public int loginverification2(@Param("email")String email,@Param("password")String password);
	
	
	@Select("SELECT *FROM testdb.t_user_login_history where email = #{email} ")
	public List<FundClient_loginhistory> getloginhistory(@Param("email")String email);
	
	
	
	@Select("select t_forum.id as forumid, t_forum_category.id as catid, t_forum.name as forumname, t_forum_category.name as categoryname from t_forum_category inner join t_forum on t_forum_category.forum_id = t_forum.id where t_forum_category.id = #{categoryid} ")
	public forum_and_cat_name getcategorynameandforumname(@Param("categoryid")String categoryid);
	
	
	
	
	@Select("SELECT t_forum_category.*,(select name from t_user where email = t_forum_category.create_by) as create_by_name ,count(distinct t_forum_topic.id) as post_number, count(distinct t_forum_comment.id) as comment_number, max(distinct t_forum_comment.create_date) as last_update  FROM forum.t_forum_category join t_forum_topic on t_forum_category.id = t_forum_topic.category_id left join t_forum_comment on t_forum_comment.topic_id = t_forum_topic.id where t_forum_category.id =#{categoryid}")
	public t_forum_category getforumcategoryinfo(@Param("categoryid")String categoryid);
	
	
	
	
	@Select("SELECT id,category_id,title,description,views,create_date,create_by,last_update_date,pin_post,thumbnail , \r\n"
			+ "(select count(*) from t_forum_topic_user_like where topic = forum.t_forum_topic.id and status =1) as likes,\r\n"
			+ "			(select count(*) from t_forum_comment where t_forum_comment.topic_id = forum.t_forum_topic.id  ) as reply,\r\n"
			+ "			(select name from t_user where email = create_by ) as create_by_name , \r\n"
			+ "			(select google_image_url from t_user where email = create_by ) as create_by_img , \r\n"
			+ "			 (select id from t_user where email = create_by ) as create_by_id  \r\n"
			+ "			 FROM forum.t_forum_topic \r\n"
			+ "			 where category_id =#{categoryid} and dbsts='A' order by pin_post desc, last_comment_date desc ,last_comment_date desc LIMIT 10 OFFSET #{offset}")
	public List<t_forum_topic> getforumcategorytopiclist(@Param("categoryid")String categoryid, @Param("offset")int offset);
	
	
	@Select("SELECT CEIL(count(*) /10) as totalpage\r\n"
			+ "FROM \r\n"
			+ "    forum.t_forum_topic\r\n"
			+ "WHERE \r\n"
			+ "    category_id = #{categoryid} and dbsts='A' \r\n"
			+ "ORDER BY \r\n"
			+ "    pin_post DESC, last_comment_date DESC, last_comment_date DESC\r\n"
			+ "")
	public int getforumcategorytotalPage(@Param("categoryid")String categoryid);
	
	
	@Select("SELECT id, category_id, title, description, (select replace(content , '\\n','')) as content,views,likes,create_date,create_by,last_update_date, last_comment_date,pin_post,thumbnail\r\n"
			+ "			,(SELECT \r\n"
			+ "			    CASE\r\n"
			+ "			        WHEN DATEDIFF(now(), create_date) < 1 THEN CONCAT(TIMESTAMPDIFF(HOUR, now(), create_date), ' hours ago')\r\n"
			+ "			        ELSE CONCAT(DATEDIFF(now(), create_date), ' days ago')\r\n"
			+ "			    END \r\n"
			+ "			FROM t_forum_topic\r\n"
			+ "			 where id = 1) as dayago\r\n"
			+ "			\r\n"
			+ "			,\r\n"
			+ "			 (select count(*)\r\n"
			+ "			 from t_forum_comment\r\n"
			+ "			 where create_by = forum.t_forum_topic.create_by) as author_post, \r\n"
			+ "			 (select name\r\n"
			+ "			 from t_forum_category\r\n"
			+ "			 where id = forum.t_forum_topic.category_id) as category_name,\r\n"
			+ "			 \r\n"
			+ "			 (select name\r\n"
			+ "			 from t_user\r\n"
			+ "			 where email = forum.t_forum_topic.create_by) as create_by_name,\r\n"
			+ "			 (select google_image_url\r\n"
			+ "			 from t_user\r\n"
			+ "			 where email = forum.t_forum_topic.create_by) as create_by_img,\r\n"
			+ "			 (select id\r\n"
			+ "			 from t_user\r\n"
			+ "			 where email = forum.t_forum_topic.create_by) as create_by_id, \r\n"
			+ "			 (select count(*)\r\n"
			+ "			 from forum.t_forum_topic_user_like\r\n"
			+ "			 where topic = forum.t_forum_topic.id and  `status` = 1) as totallikes, \r\n"
			+ "			 (select count(*)\r\n"
			+ "			 from t_forum_comment\r\n"
			+ "			 where topic_id = forum.t_forum_topic.id) as reply\r\n"
			+ "			 from forum.t_forum_topic\r\n"
			+ "			 where id =#{topicid}")
	public t_forum_topic getforumtopicinfo(@Param("topicid")String topicid);
	
	
	
//	@Select("SELECT *,(SELECT CASE WHEN DATEDIFF(now(), create_date) < 1 THEN CONCAT(TIMESTAMPDIFF(HOUR, now(), create_date), ' hours ago') ELSE CONCAT(DATEDIFF(now(), create_date), ' days ago') END ) as dayago, (select count(*) from t_forum_comment where  forum.t_forum_comment.create_by =create_by ) as userpost,(select name from t_user where email = forum.t_forum_comment.create_by) as postownername ,(select google_image_url from t_user where email = forum.t_forum_comment.create_by) as create_by_img FROM forum.t_forum_comment where topic_id =#{topicid} order by id asc;")
	//public List<topic_comment_list> getforumtopiccommentlist(@Param("topicid")String topicid);
	
	
	
	@Select("WITH RECURSIVE CTS AS (\r\n"
			+ "    SELECT  id ,topic_id,create_by,create_date,likes\r\n"
			+ "           ,comment\r\n"
			+ "           ,p_id\r\n"
			+ "           ,depth\r\n"
			+ "           ,CAST(id as CHAR(100)) lvl\r\n"
			+ "    FROM t_forum_comment\r\n"
			+ "    WHERE p_id IS NULL and dbsts = 'A' and topic_id = #{topicid}\r\n"
			+ "    UNION ALL\r\n"
			+ "    SELECT  b.id ,b.topic_id\r\n"
			+ "			,b.create_by,b.create_date, b.likes\r\n"
			+ "           ,b.comment\r\n"
			+ "           ,b.p_id\r\n"
			+ "           ,b.depth\r\n"
			+ "           ,CONCAT(c.lvl, \",\", b.id) lvl\r\n"
			+ "    FROM t_forum_comment b\r\n"
			+ "    INNER JOIN CTS c\r\n"
			+ "    ON b.p_id = c.id\r\n"
			+ ")\r\n"
			+ "SELECT id,topic_id\r\n"
			+ ",create_by,create_date, (SELECT CASE WHEN DATEDIFF(now(), create_date) < 1 THEN CONCAT(TIMESTAMPDIFF(HOUR, now(), create_date), ' hours ago') ELSE CONCAT(DATEDIFF(now(), create_date), ' days ago') END ) as dayago,\r\n"
			+ "(select count(*) from t_forum_comment where  forum.t_forum_comment.create_by =create_by ) as userpost,\r\n"
			+ "(select name from t_user where email = create_by) as postownername ,\r\n"
			+ "(select google_image_url from t_user where email = create_by) as create_by_img,\r\n"
			+ "likes as `like`\r\n"
			+ "      ,CONCAT(REPEAT(\"          \", depth), \"ㄴ\", comment) as comment\r\n"
			+ "      ,p_id\r\n"
			+ "      ,depth\r\n"
			+ "      ,lvl\r\n"
			+ "from cts\r\n"
			+ "ORDER BY lvl")
	public List<topic_comment_list> getforumtopiccommentlist(@Param("topicid")String topicid);
	
	
	@Select("SELECT * ,(SELECT CASE WHEN DATEDIFF(now(), create_date) < 1 THEN CONCAT(TIMESTAMPDIFF(HOUR, now(), create_date), ' hours ago') ELSE CONCAT(DATEDIFF(now(), create_date), ' days ago') END ) as dayago, (select count(*) from t_forum_comment where  forum.t_forum_sub_comment.create_by =create_by ) as userpost,(select name from t_user where email = forum.t_forum_sub_comment.create_by) as postownername,(select google_image_url from t_user where email = forum.t_forum_sub_comment.create_by) as create_by_img FROM forum.t_forum_sub_comment where topic_id =#{topicid} order by id asc;")
	public List<topic_subcomment_list> getforumtopicsubcommentlist(@Param("topicid")String topicid);
	
	@Insert("INSERT INTO `forum`.`t_forum_topic`(`thumbnail`,`category_id`,`title`,`description`,`content`,`views`,`likes`,`create_date`,`create_by`,`last_update_date`,`last_comment_date`,`pin_post`)\r\n"
			+ "VALUES(#{thumbnail},#{category_id},#{title},#{description},#{content},0,0,now(),#{create_by},now(),now(),0);")
	public void insertnewtopic( @Param("category_id")String category_id,@Param("title")String title,@Param("description")String description,@Param("content")String content,@Param("thumbnail")String thumbnail, @Param("create_by")String create_by);
	
	
	
	
	@Insert("INSERT INTO `forum`.`t_forum_comment`\r\n"
			+ "(`p_id`,`depth`,`dbsts`,`topic_id`,`comment`,`create_by`,`create_date`,`likes`)\r\n"
			+ "VALUES(#{pid},#{depth},'A',#{tid},#{comment},#{createby},now(),0)")
	public void insertnewcomment( @Param("pid")String p_id,@Param("depth")String depth,@Param("tid")String tid,@Param("comment")String comment,@Param("createby")String createby);
	
	
	
	@Insert("INSERT INTO `forum`.`t_forum_comment`\r\n"
			+ "(`depth`,`dbsts`,`topic_id`,`comment`,`create_by`,`create_date`,`likes`)\r\n"
			+ "VALUES(#{depth},'A',#{tid},#{comment},#{createby},now(),0)")
	public void insertnewcommentfortopic( @Param("depth")String depth,@Param("tid")String tid,@Param("comment")String comment,@Param("createby")String createby);
	
	
	@Update("UPDATE `forum`.`t_forum_topic` SET views = views + 1 where id= #{tid}")
	public void updatetopicview(@Param("tid")String tid);
	
	
	
	@Select("SELECT id, (select name from t_forum_category where id = category_id) as category_name, title,description,views,likes,create_date, (select name from t_user where email = create_by) as create_by from t_forum_topic where LOWER(title) like LOWER(CONCAT('%', #{keyword}, '%')) or\r\n"
			+ "LOWER(description) like LOWER(CONCAT('%', #{keyword}, '%')) or \r\n"
			+ "LOWER(content) like LOWER(CONCAT('%', #{keyword}, '%')) order by last_update_date desc;\r\n"
			+ "")
	public List<topic_search_result> getsearchresult(@Param("keyword")String keyword);
	
	
	
	@Select("select id,title,(select name from t_user where email = create_by) as name , create_date from t_forum_topic order by create_date desc limit 5\r\n"
			+ "")
	public List<scroll_topic_info> getscrolltopicinfo();
	
	@Select("INSERT INTO `forum`.`t_forum_topic_user_like`\r\n"
			+ "	(`topic`,\r\n"
			+ "	`email`,\r\n"
			+ "	`status`,\r\n"
			+ "	`create_date`)\r\n"
			+ "	VALUES\r\n"
			+ "	(#{tid},\r\n"
			+ "	#{email},\r\n"
			+ "	1,\r\n"
			+ "	now()) ;")
	public void userliketopic(@Param("tid")String tid,@Param("email")String email);
	
	

	@Select("SELECT count(*) as ilike FROM forum.t_forum_topic_user_like where email=#{email} and topic = #{tid} and dbsts = 'A' and `status` =1;")
	public int isuserlikethistopic(@Param("tid")String tid,@Param("email")String email);
	
	
	@Select("SELECT count(*) as ilike FROM forum.t_forum_topic_user_like where email=#{email} and topic = #{tid} and dbsts = 'A';")
	public int islikerecordexist(@Param("tid")String tid,@Param("email")String email);
	
	
	@Select("UPDATE forum.t_forum_topic_user_like\r\n"
			+ "SET status = 0\r\n"
			+ "WHERE email = #{email} and topic = #{tid};")
	public void userunliketopic(@Param("tid")String tid,@Param("email")String email);
	
	@Select("UPDATE forum.t_forum_topic_user_like\r\n"
			+ "SET status = 1\r\n"
			+ "WHERE email = #{email} and topic = #{tid};")
	public void userlikeliketopic(@Param("tid")String tid,@Param("email")String email);
	
	
	@Select("SELECT\r\n"
			+ "    a.comment_id AS cid,\r\n"
			+ "    a.status AS stat\r\n"
			+ "FROM\r\n"
			+ "    forum.t_forum_comment_user_like a\r\n"
			+ "JOIN\r\n"
			+ "    forum.t_forum_comment b ON a.comment_id = b.id\r\n"
			+ "WHERE\r\n"
			+ "    a.email = #{email} AND\r\n"
			+ "    b.topic_id = #{tid}\r\n"
			+ "\r\n"
			+ "UNION\r\n"
			+ "\r\n"
			+ "SELECT\r\n"
			+ "    id AS cid,\r\n"
			+ "    0 AS stat\r\n"
			+ "FROM\r\n"
			+ "    forum.t_forum_comment\r\n"
			+ "WHERE\r\n"
			+ "    topic_id = #{tid} AND\r\n"
			+ "    id NOT IN (SELECT comment_id FROM forum.t_forum_comment_user_like WHERE email = #{email});\r\n"
			+ "")
	public List<topic_comment_user_like> userliketopiccommentlist(@Param("tid")String tid,@Param("email")String email);
	
	
	
	
	
	@Select("SELECT count(*) as ilike FROM forum.t_forum_comment_user_like where email=#{email} and comment_id = #{tid} and dbsts = 'A';")
	public int isuserlikethiscomment(@Param("tid")String tid,@Param("email")String email);
	
	
	@Select("INSERT INTO `forum`.`t_forum_comment_user_like`\r\n"
			+ "	(`comment_id`,\r\n"
			+ "	`email`,\r\n"
			+ "	`status`,\r\n"
			+ "	`create_date`)\r\n"
			+ "	VALUES\r\n"
			+ "	(#{tid},\r\n"
			+ "	#{email},\r\n"
			+ "	1,\r\n"
			+ "	now());")
	public void userlikecomment(@Param("tid")String tid,@Param("email")String email);
	
	
	
	@Select("UPDATE forum.t_forum_comment_user_like\r\n"
			+ "SET status = 1\r\n"
			+ "WHERE email = #{email} and comment_id = #{tid};")
	public void userlikelikecomment(@Param("tid")String tid,@Param("email")String email);
	
	@Select("UPDATE forum.t_forum_comment_user_like\r\n"
			+ "SET status = 0\r\n"
			+ "WHERE email = #{email} and comment_id = #{tid};")
	public void userunlikecomment(@Param("tid")String tid,@Param("email")String email);
	
	
	
	@Insert("UPDATE `forum`.`t_forum_topic`\r\n"
			+ "SET\r\n"
			+ "`title` = #{title},\r\n"
			+ "`thumbnail` = #{thumbnail},\r\n"
			+ "`description` = #{description},\r\n"
			+ "`content` = #{content},\r\n"
			+ "`last_update_date` = now()\r\n"
			+ "WHERE `id` = #{id} and `create_by` = #{createby};")
	public void updatetopic(@Param("title")String title,@Param("description")String description,@Param("content")String content,@Param("id")String id,@Param("thumbnail")String thumbnail,@Param("createby")String createby);

	@Select("select count(*) as count from `forum`.`t_forum_topic` WHERE `id` =#{id} and create_by =#{email};")
	public int isautorizedtoedittopic(@Param("id")String id,@Param("email")String email);
	
	
	@Update("UPDATE `forum`.`t_forum_topic`\r\n"
			+ "SET\r\n"
			+ "`dbsts` = 'D'\r\n"
			+ "WHERE `id` = #{id} and `create_by` = #{createby};")
	public void deletetopic(@Param("id")String id,@Param("createby")String createby);

	
	@Select("select * from `forum`.`t_user` WHERE `email` =#{email};")
	public t_user getuserinfo(@Param("email")String email);


	
	@Select("SELECT id,category_id,title,description,views ,pin_post, (select count(*) from t_forum_topic_user_like where topic = forum.t_forum_topic.id and status =1) as likes,\r\n"
			+ "\r\n"
			+ " (select count(*) from t_forum_comment where topic_id = forum.t_forum_topic.id) as reply\r\n"
			+ "\r\n"
			+ "\r\n"
			+ " FROM forum.t_forum_topic where create_by = #{createby} and dbsts = 'A' order by id desc;")
	public List<t_forum_topic> getmytopiclist(@Param("createby")String createby);
	
	
	
	@Select(" SELECT distinct b.id,b.category_id,b.title,b.description,b.views, (select count(*) from t_forum_topic_user_like where topic = b.id and status =1) as likes,\r\n"
			+ "\r\n"
			+ " (select count(*) from t_forum_comment where topic_id = b.id) as reply FROM forum.t_forum_comment a join forum.t_forum_topic b on a.topic_id = b.id where a.create_by = #{createby} and a.dbsts = 'A' order by a.create_date desc;")
	public List<t_forum_topic> getmycommentedtopiclist(@Param("createby")String createby);
	
	@Select("SELECT id as cid , (select count(*) from t_forum_comment_user_like where comment_id = t_forum_comment.id and status =1) as likecount FROM forum.t_forum_comment where topic_id =#{tid}")
	public List<topic_comment_likes> getcommentlikecount(@Param("tid")String tid);
	
	
	
	@Select(" SELECT distinct b.id,b.category_id,b.title,b.description,b.views, (select count(*) from t_forum_topic_user_like where topic = b.id and status =1) as likes,\r\n"
			+ "\r\n"
			+ "	 (select count(*) from t_forum_comment where topic_id = b.id) as reply FROM forum.t_forum_topic_user_like a join forum.t_forum_topic b on a.topic = b.id where a.email = 'mingfung93@gmail.com' and a.dbsts = 'A' order by a.create_date desc;\r\n"
			+ "	\r\n"
			+ "		")
	public List<t_forum_topic> getmylikedtopiclist(@Param("createby")String createby);
	
	
	    
			
			@Select("SELECT\r\n"
					+ "    fid,\r\n"
					+ "    category_id,\r\n"
					+ "    category_name,\r\n"
					+ "    tid,\r\n"
					+ "    title,\r\n"
					+ "    descs,\r\n"
					+ "    createdate,\r\n"
					+ "    author,\r\n"
					+ "    thumbnail\r\n"
					+ "FROM (\r\n"
					+ "    SELECT\r\n"
					+ "        c.id AS fid,\r\n"
					+ "        b.id AS category_id,\r\n"
					+ "        b.name AS category_name,\r\n"
					+ "        a.id AS tid,\r\n"
					+ "        a.title AS title,\r\n"
					+ "        a.description AS descs,\r\n"
					+ "        a.create_date AS createdate,\r\n"
					+ "        (SELECT name FROM t_user WHERE t_user.email = a.create_by) AS author,\r\n"
					+ "        a.thumbnail AS thumbnail,\r\n"
					+ "        ROW_NUMBER() OVER (PARTITION BY b.id ORDER BY a.create_date DESC) AS row_num\r\n"
					+ "    FROM\r\n"
					+ "        t_forum_topic a \r\n"
					+ "    JOIN\r\n"
					+ "        t_forum_category b ON a.category_id = b.id\r\n"
					+ "    JOIN\r\n"
					+ "        t_forum c ON b.forum_id = c.id\r\n"
					+ "    where a.dbsts='A' \r\n"
					+ ") AS subquery\r\n"
					+ "WHERE\r\n"
					+ "    row_num <= 3\r\n"
					+ "ORDER BY\r\n"
					+ "    createdate DESC;")
	public List<t_top_latest_news> gettopmenulatesttopic();
	
	
	
	
	@Insert("INSERT INTO `forum`.`t_forum_topic_file`\r\n"
			+ "	(`topic_id`,\r\n"
			+ "	`file_name`,\r\n"
			+ "	`file_path_name`,\r\n"
			+ "	`create_by`,\r\n"
			+ "	`create_date`)\r\n"
			+ "	VALUES\r\n"
			+ "	(\r\n"
			+ "	#{topic_id},\r\n"
			+ "	#{file_name},\r\n"
			+ "	#{file_path_name},#{createby},now());")
	public void recordtopicfiledetail(@Param("topic_id")String topic_id,@Param("file_name")String file_name,@Param("file_path_name")String file_path_name,@Param("createby")String createby);

	@Select("select id as aa from t_forum_topic where  category_id  = #{category_id} and title = #{title} and description  = #{description} and content = #{content} and create_by = #{create_by} order by create_date desc limit 1 ")
	public int gettopicidby( @Param("category_id")String category_id,@Param("title")String title,@Param("description")String description,@Param("content")String content,@Param("thumbnail")String thumbnail, @Param("create_by")String create_by);
	
	@Select("select * from t_forum_topic_file where topic_id = #{tid} and dbsts='A'")
	public List<t_forum_topic_file> gettopicfilelist(@Param("tid")String tid);
	
	
	@Update("UPDATE `forum`.`t_forum_topic_file`\r\n"
			+ "SET `dbsts` = 'D'  WHERE `id` = #{id} and create_by = #{createby}  ;")
	public void deletefile(@Param("id")String id ,@Param("createby")String createby);
	
	
	
	
	@Select("SELECT count(*) FROM forum.t_mt5_account_list where login=#{login} and dbsts = 'A';")
	public int isallowviewaccount(@Param("login")String login);
	
	
	
	@Select("SELECT * FROM forum.t_mt5_account_list where  dbsts = 'A';")
	public List<t_mt5_account_list> getmt5accountlist();
	
	
	
	@Select("SELECT name FROM forum.t_mt5_account_list where login = #{login} and dbsts = 'A';")
	public String getmt5accountname(@Param("login")String login);
	
	
	
}

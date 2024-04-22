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
import com.union.portal.domain.t_kr_account_forum_list;
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
import com.union.portal.domain.calculator;

public interface EAMgmtMapper {
	
	
	@Select("SELECT count(*) FROM `system`.`admin` WHERE `email` = #{email} AND `password` = #{userseq};")
	public int checkLogin(@Param("email")String email,@Param("userseq")String userseq);	
	
	@Select("SELECT * FROM `system`.`admin` WHERE `adminseq` = #{userseq};")
	public t_eaSystem_admin_list getAdminInfoLogin(@Param("userseq")int userseq);
	
	@Select("SELECT * FROM `system`.`admin` WHERE `email` = #{eemail} AND `password` = #{epwd};")
	public t_eaSystem_admin_list getAdminLogin(@Param("eemail")String eemail, @Param("epwd")String epwd);
	
	@Select("SELECT * FROM `system`.`admin` WHERE `dbsts` = 'A' ORDER BY `adminseq` ASC LIMIT 20 OFFSET #{pageno};")
	public List<t_eaSystem_admin_list> eaSystemAdminList(@Param("pageno")int pageno);
	
	@Select("SELECT * FROM `system`.`admin` WHERE `name`=#{searchName}  ORDER BY `adminseq` ASC;")
	public List<t_eaSystem_admin_searchByName> eaSearchAdminByName(@Param("searchName")String searchName);
	
	@Select("SELECT * FROM `system`.`admin` WHERE `userseq`=#{searchId}  ORDER BY `adminseq` ASC;")
	public List<t_eaSystem_admin_searchById> eaSearchAdminById(@Param("searchId")int searchId);
	
	@Select("SELECT `eaname` FROM `system`.`accounts` GROUP BY `eaname` ORDER BY `eaname`;")
	public List<t_eaSystem_eaname_list> eaSystemEAnameList();
	
	@Select("SELECT `accountsseq`, `login`, `dbsts`, `eaname`, `version`, `broker`, `name`, `balance`, `equity`, `lastconnectdate`, `credate`, `startdate`, `enddate`,\r\n"
			+ "	CASE \r\n"
			+ "        WHEN `enddate` > CURDATE() THEN DATEDIFF(`enddate`, CURDATE())\r\n"
			+ "        ELSE 0\r\n"
			+ "    END AS `remaining_days`, \r\n"
			+ "`accounttype`, `creuser`, `flag`, `userseq` FROM `system`.`accounts` WHERE `eaname` = #{waGroupName} AND `dbsts` = 'A' LIMIT 50 OFFSET #{eaOffset};")
	public List<t_eaSystem_eaGroup_list> eaSystemEAGroupList(@Param("waGroupName")String waGroupName, @Param("eaOffset") int eaOffset);
	
	
	@Select("SELECT `accountsseq`, `login`, `dbsts`, `eaname`, `version`, `broker`, `name`, `balance`, `equity`, `lastconnectdate`, `credate`, `startdate`, `enddate`,\r\n"
			+ "	CASE \r\n"
			+ "        WHEN `enddate` > CURDATE() THEN DATEDIFF(`enddate`, CURDATE())\r\n"
			+ "        ELSE 0\r\n"
			+ "    END AS `remaining_days`, \r\n"
			+ "`accounttype`, `creuser`, `flag`, `userseq` FROM `system`.`accounts` WHERE `login` LIKE CONCAT('%', #{eaSearchAccNo}, '%') AND `dbsts` = 'A';")
	public List<t_eaSystem_eaSearchAccNo_list> eaSysSearchAccNoList(@Param("eaSearchAccNo")int eaSearchAccNo);
	
	@Select("SELECT `accountsseq`, `login`, `dbsts`, `eaname`, `version`, `broker`, `name`, `balance`, `equity`, `lastconnectdate`, `credate`, `startdate`, `enddate`,\r\n"
			+ "	CASE \r\n"
			+ "        WHEN `enddate` > CURDATE() THEN DATEDIFF(`enddate`, CURDATE())\r\n"
			+ "        ELSE 0\r\n"
			+ "    END AS `remaining_days`, \r\n"
			+ "`accounttype`, `creuser`, `flag`, `userseq` FROM `system`.`accounts` WHERE `name` LIKE LOWER(CONCAT('%', #{eaSearchName},'%')) AND `dbsts` = 'A';")
	public List<t_eaSystem_eaSearchName_list> eaSystemEASearchNameList(@Param("eaSearchName")String eaSearchName);
	
	
	@Select("INSERT INTO `system`.`admin`(`userseq`,`email`,`password`,`name`,`phone`,`addr`,`dbsts`,`credate`,`upddate`)VALUES(#{useq}, #{imail}, #{pword}, #{naem}, #{fon}, #{adreis}, 'A', now(), now());")
	public void insertAdmin(@Param("useq") String useq, @Param("imail") String imail, @Param("pword") String pword, @Param("naem") String naem, @Param("fon") String fon, @Param("adreis") String adreis);
	
	
	@Select("UPDATE `system`.`admin` SET `dbsts` = 'I' WHERE `adminseq` = #{useq};")
	public void deleteAdmin(@Param("useq") int useq);
	
	
	@Select("SELECT * FROM `system`.`admin` WHERE `adminseq` = #{useq};")
	public void fetchAdmin(@Param("useq") int useq);
	
	
	@Select("SELECT* FROM `system`.`admin` WHERE `name` LIKE CONCAT('%', #{eaSearchName}, '%');")
	public List<t_eaSystem_adminlist_searchName> adminListSearchName(@Param("eaSearchName")String eaSearchName);
	
	
	@Select("SELECT * FROM `system`.`admin` WHERE `userseq` LIKE CONCAT('%', #{eaSearchAccNo}, '%');")
	public List<t_eaSystem_adminlist_searchId> adminListSearchAccNo(@Param("eaSearchAccNo")int eaSearchAccNo);
	
	
	@Select("UPDATE `system`.`accounts` SET `dbsts` = 'D' WHERE `accountsseq` = #{useq};")
	public void deleteListAccount(@Param("useq") int useq);
	
	
	@Select("UPDATE `system`.`accounts` SET `startdate` = #{sdate}, `enddate` = #{edate} WHERE `accountsseq` = #{useq};")
	public void updateAccStaEnd(@Param("useq") int useq, @Param("sdate") String sdate, @Param("edate") String edate);
	
	
	@Select("UPDATE `system`.`accounts` SET `flag` = 'N' WHERE `enddate` < now() AND `flag` = 'Y';")
	public void updateAccFlag();
	
	
	
	@Select("SELECT `accountsseq`, `login`, `dbsts`, `eaname`, `version`, `broker`, `name`, `balance`, `equity`, `lastconnectdate`, `credate`, `startdate`, `enddate`,\r\n"
			+ "	CASE \r\n"
			+ "        WHEN `enddate` > CURDATE() THEN DATEDIFF(`enddate`, CURDATE())\r\n"
			+ "        ELSE 0\r\n"
			+ "    END AS `remaining_days`, \r\n"
			+ "`accounttype`, `creuser`, `flag`, `userseq` FROM `system`.`accounts` WHERE `accountsseq` = #{accnoseq};")
	public t_eaSystem_eaSearchName_list getAccountInfo(@Param("accnoseq")int accnoseq);
	
	
	@Select("UPDATE `system`.`admin` SET `email` = #{emails}, `password` = #{pwds}, `phone` = #{phns}, `addr` = #{adds} WHERE `adminseq` =#{useq};")
	public void updateAdminInfo(@Param("useq") int useq, @Param("emails") String emails, @Param("pwds") String pwds, @Param("phns ") String phns , @Param("adds") String adds);
	
	

	
	
	
	// paging Section
	@Select("SELECT count(*) FROM `system`.`admin` WHERE `dbsts` = 'A';")
	public int pageCountAdmin();
	
	@Select("SELECT COUNT(*) FROM `system`.`accounts` WHERE `eaname` = #{waGroupName} AND `dbsts` = 'A' ;")
	public int countEAGroupList(@Param("waGroupName")String waGroupName);
	
	
	// ++++++++++++++++ ================ ++++++++++++++++
	
	 

}

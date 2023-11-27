package com.union.portal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.union.portal.domain.FundClient_client;
import com.union.portal.domain.FundClient_loginhistory;

public interface FundClientMapper {

	
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
	@Select("SELECT count(*) FROM testdb.t_user where email = #{email} and password = #{password}")
	public int loginverification(@Param("email")String email,@Param("password")String password);
	
	
	@Select("SELECT *FROM testdb.t_user_login_history where email = #{email} ")
	public List<FundClient_loginhistory> getloginhistory(@Param("email")String email);
	
	
	
	
	
}

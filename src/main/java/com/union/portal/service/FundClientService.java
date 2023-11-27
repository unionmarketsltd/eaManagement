package com.union.portal.service;

import java.util.List;

import com.union.portal.domain.FundClient_client;
import com.union.portal.domain.FundClient_loginhistory;

public interface FundClientService {
	
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
	int loginverification(String email, String password);

	List<FundClient_loginhistory> getloginhistory(String email);

	int loginverification2(String email, String password);
}

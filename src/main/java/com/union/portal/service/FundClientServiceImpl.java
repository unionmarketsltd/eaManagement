package com.union.portal.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.union.portal.domain.FundClient_client;
import com.union.portal.domain.FundClient_loginhistory;
import com.union.portal.mapper.FundClientMapper;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class FundClientServiceImpl implements FundClientService {
	
	private FundClientMapper mapper;
	/*@Override
	public String getloginID(String email ,String password) {
		return mapper.getloginID(email, password);
	}
	@Override
	public Fundmanager_user getUserInfoByUserseq(String userseq) {
		return mapper.getUserInfoByUserseq(userseq);
	}


	@Override
	public List<Fundmanager_group> getUserGroupsByUserseq(String userseq){
		return mapper.getUserGroupsByUserseq(userseq);
		
	}
	
	@Override
	public String getFundAccountNoByUserseq(String userseq) {
		return mapper.getFundAccountNoByUserseq(userseq);
	};
	
	@Override
	public String getAgentAccountNoByUserseq(String userseq) {
		
		return mapper.getAgentAccountNoByUserseq(userseq);
		
	};*/
	/*@Override
	public FundClient_client getClientDetails(String email,String userseq){
		
		return mapper.getClientDetails(email,userseq);
	}
	
	
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
			String porrealfilename,String emailauthkey) {
		mapper.insertRegiserUserDetail(clientid, userseq, firstname, middlename, lastname, birthday, phone, email, password, address, city, state, postcode, country, idfilename, idrealfilename, porfilename, porrealfilename,emailauthkey);
	}
	public FundClient_client getauthkeydetail(String emailauthkey) {
		return mapper.getauthkeydetail(emailauthkey);
				
	}
	
	
	
	public void UpdateEmailAuth(int clientseq) {
		
		mapper.UpdateEmailAuth(clientseq);
	}


	@Override
	public String getloginPasswordByEmail(String email) {
		return mapper.getloginPasswordByEmail(email);
	}


	@Override
	public int ValidatePassword(String email, String password, String userseq) {
		// TODO Auto-generated method stub
		return mapper.ValidatePassword(email, password ,userseq);
	}


	@Override
	public String getmanagerloginbyuserseq(String userseq) {
		// TODO Auto-generated method stub
		return mapper.getmanagerloginbyuserseq(userseq);
	}*/
	@Override
	public int loginverification(String email ,String password) {
		// TODO Auto-generated method stub
		return mapper.loginverification(email , password);
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

	
}

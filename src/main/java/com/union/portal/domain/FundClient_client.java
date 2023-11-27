package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class FundClient_client{
	public int clientseq;
	public String dbsts;
	public long clientid;
	public int userseq;
	public String firstname;
	public String middlename;
	public String lastname;
	public String birthday;
	public String phone;
	public String loginid;
	public String email;
	public String password;
	public String address;
	public String city;
	public String state;
	public String postcode;
	public String country;
	public String idfilename;
	public String idrealfilename;
	public String porfilename;
	public String porrealfilename;
	public String istermsofservice;
	public String isaml;
	public String isriskwarning;
	public String isauthidcard;
	public String isauthaddrpaper;
	public String isemailauth;
	public String auth;
	public String emailauthkey;
	public double walletamt;
	public Date confirmdate;
	public long confirmadminseq;
	public Date credate;
	public String creuser;
	public Date upddate;
	public String upduser;
}

package com.union.portal.domain;

import lombok.Data;

@Data
public class t_eaSystem_admin_list { // t_mt5_account_list
	public int adminseq;
	public int userseq;
	public String email;
	public String name;
	public String password;
	public String phone;
	public String addr;
	public String dbsts;
	public String credate;
	public String upddate;
}

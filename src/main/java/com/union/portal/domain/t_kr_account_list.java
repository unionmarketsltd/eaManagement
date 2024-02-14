package com.union.portal.domain;

import lombok.Data;

@Data
public class t_kr_account_list {
	public int accountid;
	public int login;
	public String name;
	public String dbsts;
	public String description;
	public String strategytype;
	public String location;
	public String leverage;
	public String grade;
	public String content;
	public String startdate;
	public String lastupdate;
	public double profitrate;
	public String create_date;
	public int api_call_interval_second;
	public double amount;
}

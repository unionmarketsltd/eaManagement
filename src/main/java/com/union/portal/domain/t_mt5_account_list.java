package com.union.portal.domain;

import lombok.Data;

@Data
public class t_mt5_account_list { // t_mt5_account_list
	public int id;
	public int login;
	public int api_call_interval_second;
	public String name;
	public String dbsts;
	public String create_date;
	public String content;
	public String description;
	public String startdate;
	public double profitrate;
	public double userRateProfit;
}

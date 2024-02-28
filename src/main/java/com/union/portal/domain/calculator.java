package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class calculator
{
	public double profit;
	public int fundamount;
	public double profitrate;
	public double usdrate;
	public int tradedatecnt;
	public double yearexpectprofitrate;
	public double todayprofitrate;
	public double lastweekprofitrate;
	public double lastmonthprofitrate;
	public double last3monthprofitrate;
	public double lastyesrprofitrate;
	public double todayprofit;
	public double lastweekprofit;
	public double lastmonthprofit;
	public double lastyearprofit;
	public double firstdayprofitrate;
	public double profitwon;
	public String day;
	public String month;
	public double dailyprofit;
	public double monthlyprofit;
}
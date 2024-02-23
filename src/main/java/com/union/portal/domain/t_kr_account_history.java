package com.union.portal.domain;

import lombok.Data;

@Data
public class t_kr_account_history {
	public int historyid;
	public int accountid;
	public String symbol;
	public String dbsts;
	public String tradedate;
	public String type;
	public String currency;
	public double lots;
	public double closeprice;
	public double openprice;
	public double profit;
	public String closedate;
	public String opendate;
	public String create_date;
	public double cumulative_profit;
}

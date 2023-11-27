package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class FundClient_loginhistory{
	public int id;
	public String email;
	public Date login_date;
	
}

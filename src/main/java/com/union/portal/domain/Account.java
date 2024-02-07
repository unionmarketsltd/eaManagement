package com.union.portal.domain;

import lombok.Data;

@Data
public class Account {
	private Long login;
	//2021-09-06 add
	private Long reflogin;
	private Long timestamp;
	private Long certserialnumber;
	private Long rights;
	private Long clientid;
	private Long timestamptrade;

	private Double balance;
	private Double credit;
	private Double interestrate;
	private Double commissiondaily;
	private Double commissionmonthly;
	private Double balanceprevday;
	private Double balanceprevmonth;
	private Double equityprevday;
	private Double equityprevmonth;
	private Double equity;

	private String group;
	private String registration;
	private String lastaccess;
	private String lastpasschange;
	private String firstname;
	private String lastname;
	private String middlename;
	private String company;
	private String account;
	private String country;
	private String language;
	private String city;
	private String state;
	private String zipcode;
	private String address;
	private String phone;
	private String email;
	private String id;
	private String status;
	private String comment;
	private String color;
	private String phonepassword;
	
	private int leverage;
	private Long agent;
	private String tradeaccounts; 
	private String leadcampaign;
	private String leadsource;
	private String aame;
	private String mqid;
	private String lastip;
	private String apidata;
	
	//두산 추가
	private String companydepositurl; 
	//2021-08-13 choi add
	private String marginfree; 
	// 2021-08-24 choi add
	private String closestatus;
	
	private String temporarylogin;
	
	// 2022-01-17 add
	private String name;	

}

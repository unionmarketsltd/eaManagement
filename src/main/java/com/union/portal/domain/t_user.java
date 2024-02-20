package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class t_user
{
	public int id;
	public String dbsts;
	public String email;
	public String google_id;
	public String name;
	public String google_image_url;
	public java.sql.Date create_date;
	public String last_login_date;
	public byte isadmin;
	public byte isban;
}
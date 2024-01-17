package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class t_forum_category
{
	public int id;
	public int forum_id;
	public String name;
	public String description;
	public String logo_url;
	public String create_by;
	public java.sql.Date create_date;
	public int post_number;
	public int comment_number;
	public java.sql.Date last_update;
}
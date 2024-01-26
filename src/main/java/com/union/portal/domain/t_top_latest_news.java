package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class t_top_latest_news
{
	public int fid;
	public int category_id;
	public String category_name;
	public int tid;
	public String title;
	public String descs;
	public java.sql.Date createdate;
	public String author;
	public String thumbnail;
}
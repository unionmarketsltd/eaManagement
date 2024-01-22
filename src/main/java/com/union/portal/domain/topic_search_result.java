package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class topic_search_result
{
	public int id;
	public String category_name;
	public String title;
	public String description;
	public int views;
	public int likes;
	public String create_date;
	public String create_by;
	
}
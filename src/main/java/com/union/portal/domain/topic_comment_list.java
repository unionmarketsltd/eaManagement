package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class topic_comment_list
{
	public int id;
	public int topic_id;
	public String comment;
	public String create_by;
	public String create_by_img;
	public String create_date;
	public int like;
	public int userpost;
	public String postownername;
	public String dayago;
}
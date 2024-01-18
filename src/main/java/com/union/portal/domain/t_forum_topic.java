package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class t_forum_topic
{
	public int id;
	public int category_id;
	public String category_name;
	public String title;
	public String description;
	public String content;
	public int views;
	public int likes;
	public java.sql.Date create_date;
	public String create_by;
	public java.sql.Date last_update_date;
	public java.sql.Date last_comment_date;
	public byte pin_post;
	public int reply;
	public String create_by_name;
	public String create_by_img;
	public int create_by_id;
	public int author_post;
	public String dayago;
}
package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class t_forum_topic_file
{
	public int id;
	public int topic_id;
	public String dbsts;
	public String file_name;
	public String file_path_name;
	public java.sql.Date create_date;
}
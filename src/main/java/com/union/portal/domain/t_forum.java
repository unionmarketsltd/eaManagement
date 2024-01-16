package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class t_forum
{
	public int id;
	public String name;
	public String description;
	public String logo;
	public String create_by;
	public String create_date;
}
package com.union.portal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class t_forum_comment {

    private int id;
    private int p_id;
    private int  depth ;
    private String  dbsts ;
    private int  topic_id ;
    private String  comment ;
    private String  create_by ;
    private java.sql.Date  create_date ;
    private int  likes ;



}
package com.union.portal.common;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Pagination {

	public static List<String> createPaginationModule(HttpServletRequest request,int pagenumber,int totalpage) {
		
		String fullUrl = request.getRequestURL().toString();
		String Outputkeyword= "";
		 String keyword = request.getParameter("keyword");
		 if (keyword != null && !keyword.isEmpty()) {
			 Outputkeyword = "&keyword="+keyword;
	        }
 
		List<String> pagination = new ArrayList<>(5);
		if ((pagenumber) <2) {
			pagination.add(0, "");
		} else {
			pagination.add(0, "<a href=\""+fullUrl+"?page="+String.valueOf(pagenumber - 1)+Outputkeyword+"\"  class=\"page-navigation-item\">"+String.valueOf(pagenumber - 1)+"</a>");
		}


		pagination.add(1, "<a href=\""+fullUrl+"?page="+String.valueOf(pagenumber )+Outputkeyword+"\"  class=\"page-navigation-item active\">"+String.valueOf(pagenumber )+"</a>");
		
		if ((pagenumber + 1) > totalpage) {
			pagination.add(2, "");
		} else {
		
			pagination.add(2, "<a href=\""+fullUrl+"?page="+String.valueOf(pagenumber + 1)+Outputkeyword+"\"  class=\"page-navigation-item\">"+String.valueOf(pagenumber + 1)+"</a>");
			
		}

		
		pagination.add(3, "<a href=\"#\"  class=\"page-navigation-item\">...</a>");

		pagination.add(4, "<a href=\""+fullUrl+"?page="+String.valueOf(totalpage)+Outputkeyword+"\"  class=\"page-navigation-item\">"+String.valueOf(totalpage)+"</a>");
		
		
		return pagination;
	}
}

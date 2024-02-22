package com.union.portal.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class APIProtectionHandler {
  public static String ApiProtection(HttpServletRequest request, String inputString) {
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("s_GEmail") == null)
    {
      return "Unauthorized"; 
    }
    else
    {
    	return inputString;	
    }
    
  }
  
  
  
  

  
  public static boolean islogin(HttpServletRequest request) {
	    HttpSession session = request.getSession(false);
	    if (session == null || session.getAttribute("s_GEmail") == null)
	    {
	      return false;
	    }
	    else
	    {
	    	return true;	
	    }
	    
	  }
  
  public static String ApiProtectionAdmin(HttpServletRequest request, String inputString) {
	    HttpSession session = request.getSession(false);
	    if (session == null || session.getAttribute("s_GEmail") == null || session.getAttribute("s_IsAdmin") == null)
	    {
	      return "Unauthorized"; 
	    }
	    else
	    {
	    	return inputString;	
	    }
	    
	  }
  
  
  public static boolean isloginAdmin(HttpServletRequest request) {
	    HttpSession session = request.getSession(false);
	    if (session == null || session.getAttribute("s_GEmail") == null || session.getAttribute("s_IsAdmin") == null)
	    {
	      return false;
	    }
	    else
	    {
	    	return true;	
	    }
	    
	  }
  
  
}

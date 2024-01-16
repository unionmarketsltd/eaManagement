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
  

}

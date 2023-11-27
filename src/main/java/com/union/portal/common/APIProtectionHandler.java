package com.union.portal.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class APIProtectionHandler {
  public static String ApiProtection(HttpServletRequest request, String inputString, Boolean isadmin) {
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("s_Login") == null)
      return "Unauthorized"; 
 
    return inputString;
  }
  
  public static Boolean IsLogin(HttpServletRequest request) {
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("s_Login") == null)
      return Boolean.valueOf(false); 
    return Boolean.valueOf(true);
  }
}

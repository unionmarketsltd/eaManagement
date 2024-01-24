<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String s_GEmail = (String)session.getAttribute("s_GEmail");
String s_GName = (String)session.getAttribute("s_GName");
String s_GImgUrl = (String)session.getAttribute("s_GImgUrl");
String s_GID = (String)session.getAttribute("s_GID");
String s_isLogin = (String)session.getAttribute("s_isLogin");




if ( s_GEmail == null || s_isLogin != "1" ){
%>	
<script type="text/javascript">

//	var previousPageUrl = document.referrer;
	
	 document.location.href="${pageContext.request.contextPath}/forum/logout?redirect="+ window.location.href;
</script>
<%
}
%>
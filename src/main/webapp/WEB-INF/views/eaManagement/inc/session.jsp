<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String s_GEmail = (String)session.getAttribute("s_Name");
String s_IsAdmin = (String)session.getAttribute("s_Adminseq");





if ( s_GEmail == null  || s_IsAdmin == null || s_GEmail == "" || s_IsAdmin == ""){
%>	
<script type="text/javascript">

//	var previousPageUrl = document.referrer;
	
	 document.location.href="${pageContext.request.contextPath}/eaManagement/logout"; // ?redirect="+ window.location.href
</script>
<%
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String s_Login = (String)session.getAttribute("s_Login");
String s_Group = (String)session.getAttribute("s_Group");
String s_Name = (String)session.getAttribute("s_Name");
//String s_DBsessionID = (String)session.getAttribute("s_DBsessionID");


if ( s_Login == null ){
%>	
<script type="text/javascript">
	document.location.href="${pageContext.request.contextPath}/fundadmin/login";
</script>
<%
}
%>
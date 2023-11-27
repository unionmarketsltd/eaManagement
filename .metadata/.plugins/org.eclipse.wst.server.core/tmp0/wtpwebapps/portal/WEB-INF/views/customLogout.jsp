<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<h1>Custom Logout page</h1>

	<form action="${pageContext.request.contextPath}/customLogout" method="post">
	<input type="hidden" name="${ _csrf.parameterName }" value="${ _csrf.token }">
	<button>Logout</button>
	</form>
</body>
</html>
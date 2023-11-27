<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<h1>Custom Login page</h1>
	<h2>${error }</h2>
	<h2>${logout }</h2>
	<h2>
	<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')">
	<sec:authentication property="principal.username" var="user_id" />
	${ user_id } 로그인했어요
	</sec:authorize>
	</h2>
	
	<form action="${pageContext.request.contextPath}/login" method="post" name="login_form" onsubmit="return loginform();">
	<div>
		<input type="text" name="username" value="member">
	</div>
	<div>
		<input type="password" name="password" value="member">
	</div>
	<div>
		<input type="submit" />
	</div>
	<!-- //spring-security 사용하면서 추가 -->
	<%-- <input type="hidden" name="${ _csrf.parameterName }" value="${ _csrf.token }"> --%>
	<div id="google_recaptha">
	<script src='https://www.google.com/recaptcha/api.js'></script>
	<div class="g-recaptcha" data-sitekey="6LdviDQbAAAAAAdl_fK1onLoiQ_HzYnZ0_sT5Gul"></div>
	</div>
	</form>
	<script src='https://code.jquery.com/jquery-3.5.0.min.js'></script>
	<script type="text/javascript">
	function loginform() {
		var captcha = 1;
		$.ajax({
			url : '${pageContext.request.contextPath}/VerifyRecaptcha',
			type : 'post',
			async: false,
			data : {
				recaptcha : $("#g-recaptcha-response").val()
			},
			/* beforeSend : function(xhr) {
				//spring-security 사용하면서 추가
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			}, */
			success : function(data) {
				switch (data) {
				case 0:
					captcha = 0;
					//alert("자동 가입 방지 봇 통과");
					break;
				case 1:
					alert("자동 가입 방지 봇을 확인 한뒤 진행 해 주세요.");
					break;
				default:
					alert("자동 가입 방지 봇을 실행 하던 중 오류가 발생 했습니다. [Error bot Code : "+ Number(data) + "]");
					break;
				}
			}
		});
		//alert(captcha);
		if (captcha != 0) {
			return false;
		}
	}

	</script>
</body>
</html>
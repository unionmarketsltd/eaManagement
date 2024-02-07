<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Home</title>



</head>
<body>
	<%@include file="inc/top.jsp"%>
 
	<!-- BANNER WRAP -->

  <!-- BANNER SLIDER -->
  <!-- /BANNER SLIDER -->

<%@include file="inc/newsscroll.jsp"%>

<div>
<p id="accountinfo"></p>

<br>
<br>

<p id="accountinfodetail"></p>

<br>
<br>


<p id="orderlist"></p>


<br>
<br>


<p id="historylist"></p>


</div>



<script>



function GetInfo() {
	$
			.ajax({
				url : '${pageContext.request.contextPath}/forum/getAccountInfo?id=3301',
				type : 'get',
				async : false,
				data : '',
				success : function(data) {
					if (data.result.indexOf("0 Done" >= 0)) {
						console.log(data.result);
						const jobject = JSON.parse(data.result);
						console.log(jobject.retcode);
						if (jobject.retcode == "0 Done") {
							if (jobject.hasOwnProperty('answer')) {
								document.getElementById("accountinfo").innerHTML = data.result;
							}
						}

					} else {
						alert(data.result);
						
						return;
					}
				},
				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);
					return;
				}
			});
}
GetInfo();



function GetAccountInfo() {
	$
			.ajax({
				url : '${pageContext.request.contextPath}/forum/getAccountDetail?id=3301',
				type : 'get',
				async : false,
				data : '',
				success : function(data) {
					if (data.result.indexOf("0 Done" >= 0)) {
						console.log(data.result);
						const jobject = JSON.parse(data.result);
						console.log(jobject.retcode);
						if (jobject.retcode == "0 Done") {
							if (jobject.hasOwnProperty('answer')) {
								document.getElementById("accountinfodetail").innerHTML = data.result;
							}
						}

					} else {
						alert(data.result);
						
						return;
					}
				},
				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);
					return;
				}
			});
}



function getHistory() {
	$
			.ajax({
				url : '${pageContext.request.contextPath}/forum/getHistory?id=3301&page=1',
				type : 'get',
				async : false,
				data : '',
				success : function(data) {
					if (data.result.indexOf("0 Done" >= 0)) {
						console.log(data.result);
						const jobject = JSON.parse(data.result);
						console.log(jobject.retcode);
						if (jobject.retcode == "0 Done") {
							if (jobject.hasOwnProperty('answer')) {
								document.getElementById("historylist").innerHTML = data.result;
							}
						}

					} else {
						alert(data.result);
						
						return;
					}
				},
				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);
					return;
				}
			});
}getHistory();




function getAccountPositions() {
	$
			.ajax({
				url : '${pageContext.request.contextPath}/forum/getAccountPositions?id=3301',
				type : 'get',
				async : false,
				data : '',
				success : function(data) {
					if (data.result.indexOf("0 Done" >= 0)) {
						console.log(data.result);
						const jobject = JSON.parse(data.result);
						console.log(jobject.retcode);
						if (jobject.retcode == "0 Done") {
							if (jobject.hasOwnProperty('answer')) {
								document.getElementById("orderlist").innerHTML = data.result;
							}
						}

					} else {
						alert(data.result);
						
						return;
					}
				},
				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);
					return;
				}
			});
}



function myTask() {
    console.log("Task executed!");
    getAccountPositions();
    GetAccountInfo();
}
setInterval(myTask, 4000); // 4000 milliseconds = 4 seconds

</script>
  <!-- LAYOUT CONTENT 1 -->
  <!-- /LAYOUT CONTENT 1 -->
	<%@include file="inc/footer.jsp"%>
</body>
</html>
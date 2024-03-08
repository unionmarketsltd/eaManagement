<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="inc/session.jsp"%>
<html lang="en-kr">
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | My Page</title>

</head>
<body>
	<%@include file="inc/top.jsp"%>

	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">MT5 Accounts List</h2>
			<p class="banner-sections">
				<a style="color: white"
					href="${pageContext.request.contextPath}/home/index"
					class="banner-section">Home</a>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white" href="#" class="banner-section">Trade
					Account</a>

				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white" href="#" class="banner-section">FOREX
					MT5 ACCOUNTS</a>
			</p>
		</div>
		<!-- /BANNER -->
	</div>

	<%@include file="inc/newsscroll.jsp"%>



	<div class="layout-content-full grid-limit">

		<div class="section-title-wrap blue no-space">
			<h2 class="section-title medium">MT5 Account List</h2>
			<div class="section-title-separator"></div>
		</div>

		<div class="table forum-topics">
			<!-- TABLE ROW HEADER -->
			<div class="table-row-header">
				<!-- TABLE ROW HEADER ITEM -->
					<div class="table-row-header-item">
					<p class="table-row-header-title">수익 차트</p>
				</div>
				
				<div class="table-row-header-item">
					<p class="table-row-header-title">이름</p>
				</div>


				<div class="table-row-header-item left ">
					<p class="table-row-header-title">설명</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->

				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item left">
					<p class="table-row-header-title">수익률</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item">
					<p class="table-row-header-title">거래 시작일</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item left">
					<p class="table-row-header-title"></p>
				</div>



			</div>
			<!-- /TABLE ROW HEADER -->

			<!-- TABLE ROWS -->
			<div class="table-rows">
				<!-- TABLE ROW -->


				<c:forEach items="${ acclist }" var="acclist" varStatus="status1">


					<div class="table-row large">

						<div class="table-row-item left">
							<canvas id="chart_${acclist.login}" height=70 width=125></canvas>
						</div>
						<div class="table-row-item left">
							<p class="table-text bold">
								<a
									href="${pageContext.request.contextPath}/forum/viewMt5Account?id=${acclist.login}">${acclist.name}</a>
							</p>
						</div>
						<div class="table-row-item left">
							<p class="table-text bold">
								<a
									href="${pageContext.request.contextPath}/forum/viewMt5Account?id=${acclist.login}">${acclist.description}</a>
							</p>
						</div>
						<div class="table-row-item">
							<p class="table-text bold">
								<a
									href="${pageContext.request.contextPath}/forum/viewMt5Account?id=${acclist.login}">${acclist.userRateProfit }%</a>
							</p>
						</div>
						<div class="table-row-item">
							<p class="table-text bold light">
								<a
									href="${pageContext.request.contextPath}/forum/viewMt5Account?id=${acclist.login}">${acclist.startdate}</a>
							</p>
						</div>
						<!-- /TABLE ROW ITEM -->
						<div class="table-row-item right">
							<p class="table-text bold center">
							<div class="forum-post-tags">
								<a
									href="${pageContext.request.contextPath}/forum/viewMt5Account?id=${acclist.login}"
									class="forum-tag-button cyan">실계좌보기</a> <a
									href="${pageContext.request.contextPath}/forum/StrategyMt5Account?id=${acclist.login}"
									class="forum-tag-button red">상품설명서</a>
							</div>
							</p>
						</div>

					</div>
					<!-- /TABLE ROW -->



				</c:forEach>



			</div>

		</div>





	</div>


	<script>
		function generatechart(chartname,data) {
			
			
			var ctx = document.getElementById('chart_'+chartname).getContext('2d');
			var myLineChart = new Chart(ctx, {
				type : 'line',
				data : {
					labels : Array.from({ length: data.length }, (_, i) => i + 1),
					datasets : [ {
						label : 'My Dataset',
						data : data,
						borderColor : 'rgba(75, 192, 192, 1)',
						backgroundColor : 'rgba(75, 192, 192, 0.2)', // Shaded area color
						lineTension : 0.3, // Adjust line tension for smoothness
						fill : 'origin', // Fill from origin
						pointRadius : 0, // Hide data points
					} ]
				},
				options : {
				
					      responsive: false,
					
					plugins : {
						legend : {
							display : false
						// hide legend
						},
						tooltip : {
							enabled : false
						// hide tooltips
						}
					},
					scales : {
						x : {
							display : false, // hide x axis
						},
						y : {
							display : false
						// hide y axis
						}
					}
				}
			});

		};
		
		
		function getprofitchartdata(id) {
			$
					.ajax({
						url : '${pageContext.request.contextPath}/forum/getprofitchartdatanewasd?id='+id,
						type : 'get',
						async : false,
						data : '',
						success : function(data) {
							const jobject = JSON.parse(data.result);
							 generatechart(id,jobject);
						},
						error : function(xhr, status) {
							alert("ERROR : " + xhr + " : " + status);
							return;
						}
					});
		}
		
		<c:forEach items="${ acclist }" var="acclist1">
		getprofitchartdata('${acclist1.login}');
		</c:forEach>
	</script>


	<%@include file="inc/footer.jsp"%>
</body>
</html>
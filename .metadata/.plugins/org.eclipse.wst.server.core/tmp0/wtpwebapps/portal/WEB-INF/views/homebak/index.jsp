<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html lang="en">

<head>
<%@include file="inc/header.jsp"%>
</head>

<body>
	<%@include file="inc/top.jsp"%>
	<main>
		<!-- slideshow content begin -->
		<section>
			<div id="main-slideshow" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item">
						<div class="carousel-caption d-flex align-items-center">
							<div class="container">
								<div class="row gx-md-5 align-items-md-center">
									<div class="col-md-8 col-xl-6 order-first">
										<h1 class=" display-5"><spring:message code="homepage.slider.title" text="Connect to Deep ECN Liquidity in Forex & Crypto Exchanges." /></h1>
										<p class="lead mt-3 mb-4 d-none d-xl-block"><spring:message code="homepage.slider.desc" text="Trade cryptocurrencies, stock indices, commodities and foreign exchange in a single account" /></p>
										<a href="${pageContext.request.contextPath}/home/deposit" class="btn btn-warning"><spring:message code="homepage.slider.button1" text="Start trading" /><i
											class="fas fa-bolt ms-1"></i></a> <a href="#"
											class="btn btn-link ms-3 d-none d-xl-inline"><i
											class="fas fa-arrow-right"></i><spring:message code="homepage.slider.button2" text="Try demo account" /></a>
									</div>
									<div class="col-md-4 col-xl-6 order-last">
										<div class="in-carousel-image">
											<img src="${pageContext.request.contextPath}/resources/home_new/img/homeSlider2.jpg" alt="slide" width="856"
												height="570" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="carousel-caption d-flex align-items-center">
							<div class="container">
								<div class="row gx-md-5 align-items-md-center">
									<div class="col-md-8 col-xl-6 order-first">
										<h1 class="fw-bold display-5"><spring:message code="homepage.slider.title2" text="Become a winner in the Forex market!" /></h1>
										<p class="lead mt-3 mb-4 d-none d-xl-block"><spring:message code="homepage.slider.desc2" text="Trade cryptocurrencies, stock indices, commodities and foreign exchange in a single account" /></p>
										
									</div>
									<div class="col-md-4 col-xl-6 order-last">
										<div class="in-carousel-image">
											<img src="${pageContext.request.contextPath}/resources/home_new/img/homeSlider1.jpg" alt="slide" width="856"
												height="570" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="carousel-caption d-flex align-items-center">
							<div class="container">
								<div class="row gx-md-5 align-items-md-center">
									<div class="col-md-8 col-xl-6 order-first">
										<h1 class="fw-bold display-5"><spring:message code="homepage.slider.title3" text="Made Over $10,000 Overnight" /></h1>
										<p class="lead mt-3 mb-4 d-none d-xl-block">"<spring:message code="homepage.slider.desc3" text="I’ve always believed that to be successful you have to find someone that’s successful, do what they do to get the same results" />"</p>
										
									</div>
									<div class="col-md-4 col-xl-6 order-last">
										<div class="in-carousel-image">
											<img src="${pageContext.request.contextPath}/resources/home_new/img/homeSlider3.jpg" alt="slide" width="856"
												height="570" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-indicators"></div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#main-slideshow" data-bs-slide="prev"></button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#main-slideshow" data-bs-slide="next"></button>
			</div>
		</section>
		<!-- slideshow content end -->
		<%@include file="inc/tradeProduct.jsp"%>
		
		<%@include file="inc/depositMethods.jsp"%>
		
		<!-- section content begin -->
		<section class="py-5 in-cirro-3">
			<div class="container">
				<div class="row d-flex align-items-center gx-5 mb-3">
					<div class="col-md-12 col-lg-6 mb-5 mb-md-3 mb-lg-0">
						<h1 class="mt-2 mb-1"><spring:message code="hp.liveFxQuotesTitle" text="Live Fx Quotes" /></h1>
						<span style="font-size: 0.875em; /* 14px/16=0.875em */" class="lead mb-4"><spring:message code="hp.liveFxQuotesBody" text="Forex markets and prices are primarily influenced and influenced by the different flows of trading and investment between different countries. To some extent, exchange rates are also affected by various national economies and their economic policies. Factors such as interest rate adjustments, inflation and political instability are directly correlated with exchange rates (these factors have a serious impact on stock and bond markets)." /></span>
						<ul class="fa-ul lh-lg mb-0">
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="hp.liveFxQuotesLower1" text="Low spread" /></li>
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="hp.liveFxQuotesLower2" text="Fast order execution" /></li>
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="hp.liveFxQuotesLower3" text="Abundant liquidity" /></li>
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="hp.liveFxQuotesLower4" text="150+ traded products" /></li>
                        </ul>
					</div>
					<div class="col-md-12 col-lg-6 mt-md-5">
						<div class="card card-body ms-lg-5">
							<div id="tradingview-widget"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- section content end -->
		<!-- section content begin -->
		<section class="pt-3 in-cirro-10">
        
           <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-9 text-center">
                        <h1 class="fw-bold">MetaTrader5 <span class="text-highlight"><spring:message code="mmt.top.title" text="Mobile Terminal" /></span></h1>
                       
                    </div>
                    
                </div>
            <div class="container mt-0 mt-md-2">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-12 col-lg-10">
                        <div class="row d-flex align-items-start">
                            <div class="col-md-5 col-lg-6 order-last order-md-first">
                                <img class="w-100" src="${pageContext.request.contextPath}/resources/home_new/img/in-cirro-10-mockup.png" alt="mockup">
                            </div>
                            <div class="col-md-7 col-lg-6 pb-5 order-first order-md-last">
                                <h1 class="mb-2"><spring:message code="mmt.content.title" text="MT5 Mobile for traders" /></h1>
                                <p class="text-muted mb-3 d-none d-lg-block"><spring:message code="mmt.content.desc" text="MetaTrader 5 for Android and iOS * Mobile trading app for smartphone or tablet." /></p>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/home_new/img/in-app-button-apple.svg" alt="apple" width="120" height="40"></a>
                                <a href="#" class="ms-1"><img src="${pageContext.request.contextPath}/resources/home_new/img/in-app-button-google.svg" alt="google" width="135" height="40"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
		
		<!-- section content end -->
		<!-- section content begin -->
		<section class="py-4 bg-info in-cirro-6">
			<div class="container">
				<div class="row">
					<div
						class="col-12 d-md-flex justify-content-md-start align-items-center">
						<div class="border-end-md pe-md-5 d-block">
							<h2 class="text-white mb-0"><spring:message code="hp.bottom.title" text="Start investing today." /></h2>
						</div>
						<div class="mt-3 mt-md-0 ps-md-5">
							<a href="#" class="btn btn-link"><i
								class="fas fa-arrow-right"></i><spring:message code="hp.bottom.btn" text="Open account" /></a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- section content end -->
	</main>
	<!-- footer begin -->
	<%@include file="inc/footer.jsp"%>
	
	
</body>

</html>
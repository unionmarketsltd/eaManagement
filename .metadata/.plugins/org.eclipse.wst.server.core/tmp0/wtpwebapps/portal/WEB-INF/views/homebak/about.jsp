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
		<!-- content start here -->
<section class="py-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-9 text-center">
                        <h1 class="fw-bold"><spring:message code="about.top.title" text="Prime of Prime Best Broker" /> <span class="text-highlight">CT Investing LTD</span></h1>
                        <p class="lead text-muted"><spring:message code="about.top.desc" text="CT Investing LTD will grow into one of the largest MT5 Forex CFD providers in the world by giving traders what they really want." /></p>
                    </div>
                    <div class="col-12 mt-3">
                        <div class="row row-cols-1 row-cols-md-1 row-cols-lg-3 gy-2 gy-md-2 gx-0 gx-md-2 gx-lg-4">
                            <div class="col d-flex align-items-start">
                                <div class="icon-wrap bg-info flex-shrink-0 me-2">
                                    <i class="fas fa-leaf fa-lg text-white"></i>
                                </div>
                                <div>
                                    <h3 class="h4 fw-bold"><spring:message code="about.itemF.title" text="Lower Spreads" /></h3>
                                    <p><spring:message code="about.itemF.desc" text="Our mission is to provide traders with the lowest spreads possible during all market conditions. We have invested heavily in technology and establishing strong relationships with some of the largest and most reliable liquidity providers in the market. We are constantly adding and tweaking our technology in order to bring the trader the best possible conditions in the industry." /></p>
                                </div>
                            </div>
                            <div class="col d-flex align-items-start">
                                <div class="icon-wrap bg-info flex-shrink-0 me-2">
                                    <i class="fas fa-hourglass-end fa-lg text-white"></i>
                                </div>
                                <div>
                                    <h3 class="h4 fw-bold"><spring:message code="about.itemS.title" text="Faster Execution" /></h3>
                                    <p><spring:message code="about.itemS.desc" text="Our trader servers are allocated with the data server of our pricing providers in these data centers. Dedicated fiber optic cross connects us and our pricing providers to ensures the lowest latency and fastest possible trade execution for our clients." /></p>
                                </div>
                            </div>
                            <div class="col d-flex align-items-start">
                                <div class="icon-wrap bg-info flex-shrink-0 me-2">
                                    <i class="fas fa-flag fa-lg text-white"></i>
                                </div>
                                <div>
                                    <h3 class="h4 fw-bold"><spring:message code="about.itemT.title" text="Superior Technology" /></h3>
                                    <p><spring:message code="about.itemT.desc" text="CT Investing LTD has partnered with the world’s best trading technology companies to bring you the ultimate trading experience and cutting edge trading tools. These tools include: Depth of Market (DoM), inbuilt spread monitoring, ladder trading, automated close of trades with custom order templates, and more. Our iPhone and Android trading applications have been optimised to provide you the best possible mobile trading experience." /></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	<!-- content end here -->
	</main>
	<!-- footer begin -->
	<%@include file="inc/footer.jsp"%>
</body>

</html>
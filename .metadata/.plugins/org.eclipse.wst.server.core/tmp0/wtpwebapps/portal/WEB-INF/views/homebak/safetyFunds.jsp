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
                    <div class="col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-body p-3 p-md-5">
                                <h2 class="fw-bold"><spring:message code="sf.top.title" text="Safety Funds" /></h2>
                                <p><spring:message code="sf.top.desc" text="CT Investing LTD serves clients in more than 20 countries. We always strictly follow the regulations and the protection of our clients' investments is our main concern. We are committed to providing a trusted trading environment for all our customers." /></p>
                                <div class="accordion accordion-style-5 mt-4" id="sampleFive">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#a5One" aria-expanded="true">
                                                <spring:message code="sf.content1.title" text="Separated customer funds" />
                                            </button>
                                        </h2>
                                        <div id="a5One" class="accordion-collapse collapse show" data-bs-parent="#sampleFive">
                                            <div class="accordion-body">
                                                <p><spring:message code="sf.content1.desc" text="The client's funds are kept in a top-level bank completely separate from the company's operating funds. CT Investing LTD never uses its clients' funds for operations or other investments and always protects them. All funds are safely protected, and third parties other than customers are fundamentally blocked." /></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a5Two" aria-expanded="false">
                                              <spring:message code="sf.content2.title" text="Bank and Service Provider Partnership" />
                                            </button>
                                        </h2>
                                        <div id="a5Two" class="accordion-collapse collapse" data-bs-parent="#sampleFive">
                                            <div class="accordion-body">
                                                <p><spring:message code="sf.content2.desc" text="CT Investing LTD works only with well-verified and industry-leading banks and service providers for maximum protection of your funds and transactions." /></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a5Three" aria-expanded="false">
                                                <spring:message code="sf.content3.title" text="Advanced safety infrastructure" />
                                            </button>
                                        </h2>
                                        <div id="a5Three" class="accordion-collapse collapse" data-bs-parent="#sampleFive">
                                            <div class="accordion-body">
                                                <p><spring:message code="sf.content3.desc" text="CT Investing LTD adopts SSL (Secure Sockets Layer) network security protocol to securely connect all communications with customers, protect customers during transactions with the company, and keep all customer information private." /></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a5Four" aria-expanded="false">
                                                <spring:message code="sf.content4.title" text="24 of 7 safety monitoring" />
                                            </button>
                                        </h2>
                                        <div id="a5Four" class="accordion-collapse collapse" data-bs-parent="#sampleFive">
                                            <div class="accordion-body">
                                                <p><spring:message code="sf.content4.desc" text="We monitor 24/7 to ensure the safety of your funds." /></p>
                                            </div>
                                        </div>
                                    </div>
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
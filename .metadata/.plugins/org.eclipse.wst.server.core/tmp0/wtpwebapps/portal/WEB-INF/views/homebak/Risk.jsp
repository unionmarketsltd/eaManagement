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
                        <h1><span class="text-highlight"><spring:message code="risk.top.title" text="Risk Warning" /></span></h1>
                      
                      
                        <h4 class="fw-bold"><spring:message code="risk.content1.title" text="High risk investment" /></h4>
                        <p><spring:message code="risk.desk1.title" text="Forex margin trading is a high-risk investment product. Forex margin trading can suffer losses due to spikes and losses due to political circumstances, economic factors, natural phenomena and other factors. All of this can have a significant impact on your funds." /></p>
						<p><spring:message code="risk.desk12.title" text="Speculative trading can be challenging even for those with market experience and understanding. Only funds that individuals would allocate for high-risk investments (i.e. funds that, if lost, would not reach an individual's standard of living or finances) should be used for trading." /></p>
						<p><spring:message code="risk.desk13.title" text="Forex trading may not be right for you, even if you have made conservative investments in the past. If you move against your position, you may lose all of your deposited funds." /></p>
						<h4 class="fw-bold"><spring:message code="risk.content2.title" text="Other hazards" /></h4>
						<p><spring:message code="risk.desk2.title" text="CT Investing LTD is not responsible for any funds deposited by you." /></p>

<p><spring:message code="risk.desk22.title" text="You acknowledge and accept that there is a great risk of loss and damage. Recognize any difficulties as a result of the purchase and/or sale of financial instruments." /></p>

<p><spring:message code="risk.desk23.title" text="You should not invest, directly or indirectly, in any financial product without a clear knowledge and understanding of the risks." /></p>

<p><spring:message code="risk.desk22.title" text="The nature of Internet-based transactions carries certain risks. This may include, but is not limited to, hardware, software and Internet connection errors. Because the broker does not control the internet provider, equipment and technology, internet connection speed or reliability. Equipment configuration or connection stability. We are not responsible for any communication interruptions, distortions or delays when transacting over the Internet." /></p>

<p><spring:message code="risk.desk23.title" text="The Metatrader 5 trading platform is software that has been proven for many years. We do our best to complete the transaction at the requested price. No matter how convenient or efficient internet trading is, it does not reduce the risks associated with currency trading. All transactions are subject to the terms of the customer agreement." />
</p>

<p></p>





<p></p>

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
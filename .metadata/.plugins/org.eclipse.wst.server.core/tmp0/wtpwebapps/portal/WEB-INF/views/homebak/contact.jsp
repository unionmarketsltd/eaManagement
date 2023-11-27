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
	<section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <iframe class="w-100 bg-light rounded-1 gmap h-300 h-md-400 h-lg-500" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10600.5248164368!2d144.95966577016594!3d-37.81707816290683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d4c2b349649%3A0xb6899234e561db11!2sEnvato!5e0!3m2!1sen!2sid!4v1645280096951!5m2!1sen!2sid">
                        </iframe>
                    </div>
                    <div class="d-flex justify-content-center">
                        <div class="col-md-11 col-lg-8 mt-2">
                            <div class="row row-cols-1 row-cols-md-3 row-cols-lg-3">
                                <div class="col text-center">
                                    
                                </div>
                                <div class="col text-center">
                                    <h5 class="fw-bold mb-1"><spring:message code="cont.top.title" text="Email" /></h5>
                                    <p class="text-muted">support@unionmks.com<br><spring:message code="cont.top.desc" text="for public inquiries" /></p>
                                </div>
                                <div class="col text-center">
                                   
                                </div>
                            </div>
                            <hr class="my-2">
                            <h1 class="pt-2 text-center"><spring:message code="cont.table.title" text="Have a " /><span class="text-highlight"><spring:message code="cont.table.title1" text="questions?" /></span></h1>
                            <p class="lead text-muted text-center"><spring:message code="cont.table.desc" text="Let's get in touch" /></p>
                            <form id="contact-form" class="row g-1 mt-2" novalidate="">
                                <div class="col-6">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-user fa-xs text-muted"></i></span>
                                        <input class="form-control" id="name" name="name" type="text" placeholder="<spring:message code="cont.table.info" text="Full name" />" aria-label="Full name" required="">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-envelope fa-xs text-muted"></i></span>
                                        <input class="form-control" id="email" name="email" type="email" placeholder="<spring:message code="cont.table.info2" text="Email address" />" aria-label="Email address" required="">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-pen fa-xs text-muted"></i></span>
                                        <input class="form-control" id="subject" name="subject" type="text" placeholder="<spring:message code="cont.table.info3" text="Subject" />" aria-label="Subject" required="">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <textarea class="form-control" id="message" name="message" placeholder="<spring:message code="cont.table.info4" text="Message" />" rows="6" required=""></textarea>
                                </div>
                                <div class="d-grid">
                                    <button class="btn btn-info" id="sendemail" type="submit" name="submit"><spring:message code="cont.table.info5" text="Send Message" /></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- success notification begin -->
            <div class="position-fixed bottom-0 end-0 p-4" style="z-index: 1">
                <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                    <div class="toast-body text-primary">
                        <i class="fas fa-check-circle me-1"></i>Your message has been sent successfully. Thank you!
                    </div>
                </div>
            </div>
            <!-- success notification end -->
        </section>
	<!-- content end here -->
	</main>
	<!-- footer begin -->
	<%@include file="inc/footer.jsp"%>
</body>

</html>
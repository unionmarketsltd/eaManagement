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
<%@include file="inc/header.jsp"%>


 <main class="home-3 main">

        <!-- hero slider -->
        <div class="hero-section hero-slider owl-carousel owl-theme">
            <div class="hero-single" style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/index/slidercheck1.jpg); height: 850px;" >
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7 col-lg-7">
                            <div class="hero-content">
                                <h1 class="hero-title wow animate__animated animate__fadeInUp" data-wow-duration="1s"
                                    data-wow-delay=".50s">
                                     <span>보다 안전하고 높은 수익 낼 수 있는 온라인 외환거래 시스템 개발</span> 
                                </h1>
                                
                                <div class="hero-btn wow animate__animated animate__fadeInUp" data-wow-duration="1s"
                                    data-wow-delay="1s">
                                    <a href="contact.html" class="theme-btn">Learn More<i
                                            class="far fa-long-arrow-right"></i></a>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero-single" style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/index/homeSlider2.jpeg); height: 850px;">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7 col-lg-7">
                            <div class="hero-content">
                                
                                <h1 class="hero-title wow animate__animated animate__fadeInUp" data-wow-duration="1s"
                                    data-wow-delay=".50s"><span>국제금융 실전투자 및 거래방법 등에 대한 체계적이고도 논리적인 정보와 지식을 제공</span>
                                </h1>
                                
                                <div class="hero-btn wow animate__animated animate__fadeInUp" data-wow-duration="1s"
                                    data-wow-delay="1s">
                                    <a href="contact.html" class="theme-btn">Learn More<i
                                            class="far fa-long-arrow-right"></i></a>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero-single" style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/index/indexSlider3.jpg); height: 850px;">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7 col-lg-7">
                            <div class="hero-content">
                                <h1 class="hero-title wow animate__animated animate__fadeInUp" data-wow-duration="1s"
                                    data-wow-delay=".50s">
                                     <span>금융업의 본질은
한마디로, 자금을 잘 운용하는 것입니다.</span>
                                </h1>
                                
                                <div class="hero-btn wow animate__animated animate__fadeInUp" data-wow-duration="1s"
                                    data-wow-delay="1s">
                                    <a href="contact.html" class="theme-btn">Learn More<i
                                            class="far fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- hero slider end -->



        <!-- cta area -->
        <div class="cta-area pt-50 pb-50">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-4 col-lg-5">
                        <div class="cta-content">
                                                        
                            <a></a>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="d-flex justify-content-md-end">
                            <a href="#" class="theme-btn"><i class="fa fa-phone-volume"></i>&nbsp; 070-8873-4003 ~ Request a Call Back <i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- cta area end -->


        <!-- choose area -->
        <div class="choose-area py-120">
            <div class="shape-1"></div>
            <div class="shape-2"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="choose-item">
                                    <div class="choose-icon">
                                        <i class="flaticon-bar-graph"></i>
                                    </div>
                                    <div class="choose-content">
                                        <h4>외환거래 일반 교육</h4>
                                        <p>외환에 대해 처음 접하는 일반인들을 위한 과정입니다. 기본적인 용어부터 지식, 정보를 체계적으로 습득해 나가게 됩니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="choose-item">
                                    <div class="choose-icon">
                                        <i class="flaticon-solution-1"></i>
                                    </div>
                                    <div class="choose-content">
                                        <h4>외환거래 실전 교육</h4>
                                        <p>다양한 외환거래에 대한 실전 노하우를 익히는 과정입니다. 실전투자 및 거래에 대한 이해와 적용, 안전하면서도 체계적인 방법을 배우게 됩니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="choose-item">
                                    <div class="choose-icon">
                                        <i class="flaticon-analyst"></i>
                                    </div>
                                    <div class="choose-content">
                                        <h4>외환거래 심화 교육</h4>
                                        <p>실전 교육을 받은 이들이 자신만의 노하우를 만드는 과정입니다. 실전투자 및 거래에 대해 습관을 확립하고, 시스템 트레이딩으로 발전시켜 나가게 됩니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="choose-item">
                                    <br>&nbsp;
                                    <br>&nbsp;
                                    <div class="choose-content">
                                        <h4>강의/교육 커리큘럼</h4>
                                        <h4>지금 신청 하세요!</h4>
                                        <a href="education.html" class="theme-btn mt-5">신청하기 <i class="far fa-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- choose area end -->





        <!-- service area -->
        <div class="service-area bg py-120">
            <div class="shape-1"></div>
            <div class="shape-2"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <h2 class="site-title"><span>강의/교육 커리큘럼</span></h2>
                            <div class="heading-divider"></div>
                            <p>
                                트라이엔은 아래와 같은 체계적인 교육을 통해 금융에 대한 지식을 제공해 드립니다.
한국, 일본, 중국, 베트남, 필리핀 5개국 300회 이상의 강의 경험.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-analytics"></i>
                            </div>
                            <h3 class="service-title">
                                <a href="#">일반 교육: 일반인 및 초보자 대상의 이론 및 실전 강의</a>
                            </h3>
                            <p class="service-text">
                                기간: 4회(주 1회 2시간 * 4회)
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-bank"></i>
                            </div>
                            <h3 class="service-title">
                                <a href="#">실전 교육: 실전에서 사용 가능한 트레이딩 기법/노하우 강의</a>
                            </h3>
                            <p class="service-text">
                                기간: 4회(주 1회 2시간 * 4회)
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-money-bag"></i>
                            </div>
                            <h3 class="service-title">
                                <a href="#">심화 교육: 시스템 트레이딩으로 개량화 가능한 실전 트레이딩 강의</a>
                            </h3>
                            <p class="service-text">
                                기간: 3회(주 1회 2시간 * 3회)
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- service area end -->




        <!-- skill-area -->
        <div class="skill-area py-120">
            <div class="container">
                <div class="skill-wrapper">
                    <div class="row g-5 align-items-center">
                        <div class="col-lg-6 col-12">
                            <div class="skill-left">
                                <div class="skill-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/index/index-1.jpg" alt="thumb">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="skill-right">
                                <h2 class="site-title"><span>트라이엔 방문을 환영합니다.</span></h2>
                                <p class="skill-details">
                                    금융투자연구소 ㈜트라이엔을 통해 즐거운 재테크에 도전해보세요!
                                </p>
                                <p class="skill-details">
                                    ㈜트라이엔은 주식, 선물, 외환(환율), 암호화폐 등 다양한 국제금융상품에 관해 연구개발(R&D)하는 금융투자연구소입니다. 특히, 세계에서 가장 큰 투자 규모를 이루고 있는 외환시장에서 안전하게 투자할 수 있는 방법들을 연구하고 있으며, 개인이 실전투자에 효과적으로 활용할 수 있는 시스템 트레이딩 개발에도 힘쓰고 있습니다.
                                </p>
                                <div class="skills-section">
                                    <div class="progress-box">
                                        <h5>Financial Consulting <span class="pull-right">85%</span></h5>
                                        <div class="progress" data-value="85">
                                            <div class="progress-bar" role="progressbar"></div>
                                        </div>
                                    </div>
                                    <div class="progress-box">
                                        <h5>Online Reporting <span class="pull-right">50%</span></h5>
                                        <div class="progress" data-value="75">
                                            <div class="progress-bar" role="progressbar"></div>
                                        </div>
                                    </div>
                                </div>
                                <a href="about.html" class="theme-btn mt-5">Learn More <i class="far fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- skill area end -->


        <!-- process area -->
        <div class="process-area bg py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <h2 class="site-title">금융 전문가가 되는 방법!</h2>
                            <div class="heading-divider"></div>
                            
                        </div>
                    </div>
                </div>
                <div class="row justify-content-between">
                    <div class="col-lg-3 col-md-6 text-center mb-30">
                        <div class="process-single">
                            <div class="icon">
                                <span>01</span>
                                <img src="${pageContext.request.contextPath}/resources/assets/img/index/2-1.png" alt="" width="70px">
                            </div>
                            <h4>1.강의 신청</h4>
                            <p>이곳에서 강의를 신청하세요!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center mb-30">
                        <div class="process-single">
                            <div class="icon">
                                <span>02</span>
                                <img src="${pageContext.request.contextPath}/resources/assets/img/index/2-2.png" alt="" width="70px">
                            </div>
                            <h4>2.방문 상담</h4>
                            <p>회사 방문후 전문가와 상담을 받으세요!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center mb-30">
                        <div class="process-single">
                            <div class="icon">
                                <span>03</span>
                                <img src="${pageContext.request.contextPath}/resources/assets/img/index/2-3.png" alt="" width="70px">
                            </div>
                            <h4>3.진단</h4>
                            <p>실력에 맞는 교육과정 진단</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center mb-30">
                        <div class="process-single">
                            <div class="icon">
                                <span>04</span>
                                <img src="${pageContext.request.contextPath}/resources/assets/img/index/2-4.png" alt="" width="70px">
                            </div>
                            <h4>4.강의 및 교육</h4>
                            <p>모든 노하우를 전수해 드립니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- process area end -->



        <!-- cta area -->
        <div class="cta-area pt-50 pb-50">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-8 col-lg-9">
                        <div class="cta-content">
                            <h3>당신도 금융 전문가가 될 수 있습니다.</h3>
                            
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="d-flex justify-content-md-end">
                            <a href="education.html" class="theme-btn">강의신청 <i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- cta area end -->
        


        <!-- process area -->
        <div class="process-area bg py-120">
            <div class="container">
                <div class="row">
                    <div class="site-heading text-center">
                            <h2 class="site-title">자주하는 질문</h2>
                            <div class="heading-divider"></div>
                        </div>
                </div>
                <div class="row justify-content-between">
                    <div class="col-lg-4 col-md-6 text-center mb-30">
                        <div class="service-item">
                            <h3 class="service-title">
                                What is the currency amount for the Blue Card?
                            </h3>
                            &nbsp;
                            <p class="service-text">
                                The minimum amount that can be loaded on the card is $100 or equivalent amount in other currency. The maximum amount would be as per Prosperity guidelines applicable from time to time. You can learn more about it by contacting our consultants using the form on our website or by calling us directly.
                            </p>
                            <hr>
                            <h3 class="service-title">
                                What steps do I take if my card gets lost?
                            </h3>
                            &nbsp;
                            <p class="service-text">
                                If you lose your card please immediately contact our customer support center so that we could issue a new one as fast as possible.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center mb-30">
                        <div class="service-item">
                            <h3 class="service-title">
                                Do I have to maintain any minimum balance?
                            </h3>
                            &nbsp;
                            <p class="service-text">
                                It depends on the card you choose. For example, if you pick an Orange Card, you get a special waiver on the minimum balance requirement.
                            </p>
                            <hr>
                            <h3 class="service-title">
                                What security features does the mobile banking have?
                            </h3>
                            &nbsp;
                            <p class="service-text">
                                Mobile browser-based banking is very similar to PC based internet banking. The respective mobile handset browser replaces a PC browser to access the banking services. Some of the important security measures in place are 128 bit SSL from VeriSign and access etc.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center mb-30">
                        <div class="service-item">
                            <h3 class="service-title">
                                What browser needed for online banking?
                            </h3>
                            &nbsp;
                            <p class="service-text">
                                Our Banking System supports all browsers. Some of the most popular ones are Chrome, Opera, Firefox, and Safari. If you are using Internet Explorer make sure the version of your browser is 9.0 or higher.
                            </p>

                        <hr>
                            <h3 class="service-title">
                                Can I make online payments to foreign recipients?
                            </h3>
                            &nbsp;
                            <p class="service-text">
                                Yes, you can! Our bank does not limit any payments to a certain country so whether you are using our online banking system or an app for your device, you can safely transfer any amount of money or purchase services and products.
                            </p>
                        </div>
                            
                    </div>

                </div>
            </div>
        </div>
        <!-- process area end -->



    </main>



<%@include file="inc/footer.jsp"%>
</html>
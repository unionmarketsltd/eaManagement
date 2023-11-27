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


    <main class="main">

        <!-- breadcrumb -->
        <div class="site-breadcrumb" style="background: url(${pageContext.request.contextPath}/resources/assets/img/education/education.jpg)">
            <div class="container">
                <h2 class="breadcrumb-title">Portfolio</h2>
                <ul class="breadcrumb-menu">
                    <li><a href="index.html"><i class="far fa-home"></i> Home</a></li>
                    <li class="active">Portfolio</li>
                </ul>
            </div>
        </div>
        <!-- breadcrumb end -->

        <!-- service area -->
        <div class="service-area service-area2 bg py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <span class="site-title-tagline">Education</span>
                            <div class="heading-divider"></div>
                        </div>
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-12">
                        <h2 class="service-title">외환거래 교육, 왜 필요한가?</h2>    
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-4 col-6">
                        <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_education.jpg" alt="">
                    </div>
                    <div class="col-lg-8 col-6">
                        <p class="service-text">외환시장은 하루 거래량만 7,000조 원 이상으로 전 세계에서 가장 큰 국제 투자시장이며, 동시에 한국 금융의 미래 성장동력 중 하나로 꼽히고 있습니다. 한국의 전통적인 투자처인 주식과 부동산 시장보도 훨씬 광범위하며 복잡한 시장이지만, 투자의 형태는 매우 간단합니다. 누구나 알기만 하면 쉽고 안전하게 투자할 수 있습니다. 그렇지만, 주식이나 부동산도 꾸준한 수익을 위해서는 배움이 필요하듯이 외환거래도 지식과 배움에 대한 투자를 아끼지 않아야 합니다. 안정적이고도 지속적인 수익을 내고자 한다면 반드시 실전거래에 대한 노하우가 필요합니다. ㈜트라이엔에서는 체계적인 실전 외환거래 교육을 통해 누구나 쉽게 배우고 익힐 수 있는 방법과 정보, 전문지식을 제공합니다. 외환의 ‘ㅇ’자, 환율의 ‘ㅎ’자도 모르는 초보자도 과정만 이수하면 충분히 전문가처럼 거래할 수 있는 노하우를 전달합니다. 특히, ‘외환’ 관련 정보를 알게 되면 전 세계 경제의 흐름을 분석할 수 있게 되고, ‘외환거래’ 노하우를 알게 되면 주식과 선물에 대한 통찰력도 생겨 전천후 거래 전문가가 될 수 있습니다. 전문적인 거래 지식과 노하우를 습득해서 자신의 자산을 안전하게 운용할 수 있는 기회를 붙잡으시기 바랍니다.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- service area end -->
        

<!-- service area -->
        <div class="service-area service-area2 py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <span class="site-title-tagline">FX Market</span>
                            <div class="heading-divider"></div>
                        </div>
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 col-12">
                        <h2 class="service-title">FX Market Sizse by Transaction Type</h2>
                        <br>&nbsp;
                        <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_fxmarket1.jpg" alt="">
                    </div>
                    <div class="col-lg-6 col-12">
                        <h2 class="service-title">Top 10 Global FX Market Size by Country</h2>
                        <br>&nbsp;
                        <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_fxmarket2.jpg" alt="">
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 col-12">
                        <br>&nbsp;
                        <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_fxmarket3.jpg" alt="">
                    </div>
                    <div class="col-lg-6 col-12">
                        <br>&nbsp;
                        <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_fxmarket4.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- service area end -->
        

        <!-- service area trading era-->
        <div class="service-area service-area2 bg py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <span class="site-title-tagline">Trading Era</span>
                            <div class="heading-divider"></div>
                        </div>
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-12">
                        <h2 class="service-title">시스템 트레이딩 시대</h2>    
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-4 col-6">
                        <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_tradingera1.jpg" alt="">
                    </div>
                    <div class="col-lg-8 col-6">
                        <p class="service-text">2017년: 600명의 트레이더 -> 2명<br>
                            "앞으로 투자는 수학 원리와 소프트웨어 프로그램이 주도할 것"<br>
                            "전체 약 35,000여명의 골드만삭스 임직원의 25%가 컴퓨터 엔지니어"<br>
                            "주식매매에 한정됐던 자동화 기법이 환율거래와 투자금융 부문으로 확대될 것"
                        </p>
                            
                            <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_tradingera2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- service area end -->
        



        <!-- service area -->
        <div class="service-area service-area2 py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-12 mx-auto text-center">
                        <h2 class="service-title">외환 교육이 필요한 사람</h2>    
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 col-6">
                        <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_pwnfee.jpg" alt="">
                    </div>
                    <div class="col-lg-6 col-6">
                        <p class="service-text">
                            - 돈을 벌기 위한 자신만의 기술이 필요한 사람<br>
                            - 외환/환율 정보 및 거래에 관심 있는 사람<br>
                            - 안정적이고 꾸준한 수익을 원하는 사람<br>
                            - 외환거래 기술적 분석이 필요한 사람<br>
                            - 주식, 선물 등의 투자로 손실을 봤던 사람<br>
                            - 실전에 바로 사용할 수 있는 전략이 필요한 사람<br>
                            - 거래보다는 편하게 자금을 맡기고 싶은 사람
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- service area end -->
        

        <!-- service area -->
        <div class="service-area service-area2 bg py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-12 mx-auto text-center">
                        <h2 class="service-title">시스템 트레이딩 시대</h2>    
                    </div>
                </div>
                &nbsp;<br>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-4 col-4">
                        <div class="col-12">
                            <h4 class="service-title">실전트레이딩 교육</h4>
                            <p class="service-text">
                                이론이 아닌 실전에서 수익 나는 전략
                                직접 거래해서 수익을 낼 수 있는 교육
                            </p>
                        </div>
                        <br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;
                        <div class="col-12">
                            <h4 class="service-title">안정적이고 지속적인 투자 수익</h4>
                            <p class="service-text">
                                위험하지 않고 안전한 투자 기법
                                몇 회가 아닌, 지속적인 투자 수익 가능
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-4">
                        <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_teost.png" alt="">
                    </div>
                    <div class="col-lg-4 col-4">
                        <div class="col-12">
                            <h4 class="service-title">쉽고 체계적인 교육</h4>
                            <p class="service-text">
                                남녀노소 누구나 가능
초보자도 쉽게 배울 수 있는 체계적 교육
                            </p>
                        </div>
                        <br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;
                        <div class="col-12">
                            <h4 class="service-title">안정적이고 지속적인 투자 수익</h4>
                            <p class="service-text">
                                인터넷만 있으면 언제 어디서든 거래 가능
직접 돈을 벌 수 있는 전문기술 습득
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- service area end -->


        <!-- service area -->
        <div class="service-area service-area2 py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-12 mx-auto text-center">
                        <h2 class="service-title">교육 커리큘럼</h2>    
                    </div>
                </div>
                &nbsp;<br>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-3 col-6">
                        <div class="col-12">
                            <h3 class="service-title">* 1회차</h3><br>&nbsp;
                            <h4 class="service-title">- 내용</h4>
                            <p class="service-text">
                                1. 외환시장 소개(FOREX)<br>
                                2. 환율/통화쌍 이해<br>
                                3. 모의계좌 개설 – HTS 활용법<br>
                                4. 기본 용어 이해 – 캔들, 보조지표, 경제지표 외<br>
                                5. 진입과 청산 (1)
                            </p>
                        </div>
                        <br>&nbsp;
                        <div class="col-12">
                            <h4 class="service-title">- 과제</h4>
                            <p class="service-text">
                                1. MT4 활용 공부<br>
                                2. '환율' 공부
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="col-12">
                            <h3 class="service-title">* 2회차</h3><br>&nbsp;
                            <h4 class="service-title">- 내용</h4>
                            <p class="service-text">
                                1. 과제 리뷰 및 복습 (Q&A)<br>
2. 캔들 & 보조지표 이해 및 적용<br>
3. 시그널 (1)<br>
4. 진입과 청산 (2)<br>
5. 거래 원칙 및 안전거래 – 기준 계약 수 설정
                            </p>
                        </div>
                        <br>&nbsp;
                        <div class="col-12">
                            <h4 class="service-title">- 과제</h4>
                            <p class="service-text">
                                1. 모의거래대회 (1)<br>
2. 진입기준 및 일 목표 설정
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="col-12">
                            <h3 class="service-title">* 3회차</h3><br>&nbsp;
                            <h4 class="service-title">- 내용</h4>
                            <p class="service-text">
                                1. 과제 리뷰 및 복습 (Q&A)<br>
2. 시그널 (2)<br>
3. 시그널 (3)<br>
4. 진입과 청산(3)<br>
5. 스윙 & 스왑 거래
                            </p>
                        </div>
                        <br>&nbsp;
                        <div class="col-12">
                            <h4 class="service-title">- 과제</h4>
                            <p class="service-text">
                                1. 모의거래대회 (2)<br>
2. 진입기준 및 일 목표 설정
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="col-12">
                            <h3 class="service-title">* 4회차</h3><br>&nbsp;
                            <h4 class="service-title">- 내용</h4>
                            <p class="service-text">
                                1. 과제 리뷰 및 복습 (Q&A)<br>
2. 거래 수칙 – 전략 정리<br>
3. 실전 트레이딩 위한 팁, 멀티 계좌, 팀 트레이딩<br>
4. Earning Bot 소개 및 활용방안<br>
5. 외환투자의 미래
                            </p>
                        </div>
                        <br>&nbsp;
                        <div class="col-12">
                            <h4 class="service-title">- 과제</h4>
                            <p class="service-text">
                                1. 초보 트레이더를 위한 거래원칙<br>
2. 환전 수수료 절세방법
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- service area end -->




        <!-- service area trading era-->
        <div class="service-area service-area2 bg py-120">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 col-12 mx-auto">
                        <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_education.jpg" alt="">
                    </div>
                </div><br>
                <div class="row g-5 align-items-center ">
                    <div class="col-12 text-center">
                        <h2 class="service-title">시스템 트레이딩 시대</h2> 
                        <p class="service-text">
                            지금까지 한국-일본-중국-베트남-필리핀 등에서 기업관계자, 일반인, 금융관계자 등을 대상으로 외환거래 관련 이론 및 실전강의를 300회 이상 지속해오고 있습니다. 외환/환율 실전거래에 대해 궁금하시거나 강의 및 교육을 요청하시려면 아래에 정보를 기입해주시기 바랍니다.
                        </p>   
                    </div>
                </div>
            </div>
        </div>
        <!-- service area end -->



        <!-- service area -->
        <div class="service-area service-area2 py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                    <div class="col-12 mx-auto text-center">
                        <h2 class="service-title">Apply Lecture</h2>    
                    </div>
                </div>
                <div class="col-12 align-self-center">
                            <div class="contact-form">
                                <div class="contact-form-header">
                                    <h3>강의/교육 신청하기</h3>
                                </div>
                                <form method="post" action="/investox/${pageContext.request.contextPath}/resources/assets/php/contact.php" id="contact-form">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="name"
                                                    placeholder="Your Name" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control" name="email"
                                                    placeholder="Your Email" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="subject"
                                            placeholder="Your Subject" required>
                                    </div>
                                    <div class="form-group">
                                        <textarea name="message" cols="30" rows="5" class="form-control"
                                            placeholder="Write Your Message"></textarea>
                                    </div>
                                    <button type="submit" class="theme-btn">Send
                                        Message <i class="far fa-long-arrow-right"></i></button>
                                    <div class="col-md-12 mt-3">
                                        <div class="form-messege text-success"></div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <!-- service area end -->
        




    </main>


<%@include file="inc/footer.jsp"%>
</html>
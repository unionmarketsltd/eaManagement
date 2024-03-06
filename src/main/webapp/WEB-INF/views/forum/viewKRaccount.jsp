<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="now" class="java.util.Date"/>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en-kr">
<head>
<%@include file="inc/session.jsp"%>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Home</title>

<script>
        // Wait for the DOM content to be fully loaded
        document.addEventListener("DOMContentLoaded", function() {
            // Display the body content once everything is loaded
            document.body.style.display = "block";
        });
    </script>
<style type="text/css">
      html { font-family:Calibri, Arial, Helvetica, sans-serif; font-size:11pt; background-color:white }
      a.comment-indicator:hover + div.comment { background:#ffd; position:absolute; display:block; border:1px solid black; padding:0.5em }
      a.comment-indicator { background:red; display:inline-block; border:1px solid black; width:0.5em; height:0.5em }
      div.comment { display:none }
      table { border-collapse:collapse; page-break-after:always }
      .gridlines td { border:1px dotted black }
      .gridlines th { border:1px dotted black }
      .b { text-align:center }
      .e { text-align:center }
      .f { text-align:right }
      .inlineStr { text-align:left }
      .n { text-align:right }
      .s { text-align:left }
      td.style0 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style0 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style1 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style1 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style2 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style2 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style3 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#262626; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style3 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#262626; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style4 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style4 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style5 { vertical-align:middle; text-align:left; padding-left:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#262626; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style5 { vertical-align:middle; text-align:left; padding-left:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#262626; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style6 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#0C0C0C; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style6 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#0C0C0C; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style7 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style7 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style8 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style8 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style9 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#000000; font-family:'맑은 고딕'; font-size:12pt; background-color:#CEEBF6 }
      th.style9 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#000000; font-family:'맑은 고딕'; font-size:12pt; background-color:#CEEBF6 }
      td.style10 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#000000; font-family:'맑은 고딕'; font-size:12pt; background-color:#CEEBF6 }
      th.style10 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#000000; font-family:'맑은 고딕'; font-size:12pt; background-color:#CEEBF6 }
      td.style11 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#000000; font-family:'맑은 고딕'; font-size:12pt; background-color:#CEEBF6 }
      th.style11 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#000000; font-family:'맑은 고딕'; font-size:12pt; background-color:#CEEBF6 }
      td.style12 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:12pt; background-color:#CEEBF6 }
      th.style12 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:12pt; background-color:#CEEBF6 }
      td.style13 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style13 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style14 { vertical-align:middle; text-align:right; padding-right:9px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style14 { vertical-align:middle; text-align:right; padding-right:9px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style15 { vertical-align:middle; text-align:right; padding-right:9px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style15 { vertical-align:middle; text-align:right; padding-right:9px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style16 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style16 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style17 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style17 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style18 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style18 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style19 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style19 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#0070C0; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style20 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#AE5425; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      th.style20 { vertical-align:middle; text-align:right; padding-right:0px; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#AE5425; font-family:'맑은 고딕'; font-size:9pt; background-color:white }
      td.style21 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#7030A0; font-family:'맑은 고딕'; font-size:10pt; background-color:white }
      th.style21 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#7030A0; font-family:'맑은 고딕'; font-size:10pt; background-color:white }
      td.style22 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#7030A0; font-family:'맑은 고딕'; font-size:10pt; background-color:white }
      th.style22 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#7030A0; font-family:'맑은 고딕'; font-size:10pt; background-color:white }
      td.style23 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#7030A0; font-family:'맑은 고딕'; font-size:10pt; background-color:white }
      th.style23 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; font-weight:bold; color:#7030A0; font-family:'맑은 고딕'; font-size:10pt; background-color:white }
      table.sheet0 col.col0 { width:130.07777679pt }
      table.sheet0 col.col1 { width:100pt }
      table.sheet0 col.col2 { width:42pt }
      table.sheet0 col.col3 { width:130.71111038pt }
      table.sheet0 col.col4 { width:100pt }
      table.sheet0 col.col5 { width:42pt }
      table.sheet0 col.col6 { width:42pt }
      table.sheet0 col.col7 { width:130.25555491pt }
      table.sheet0 col.col8 { width:100.38888815pt }
      table.sheet0 tr { height:15pt }
      table.sheet0 tr.row0 { height:17.5pt }
      table.sheet0 tr.row4 { height:17.5pt }
      table.sheet0 tr.row9 { height:17.5pt }
      table.sheet0 tr.row17 { height:17.5pt }
      
      
      .twoxone {
display: grid;
grid-template-columns: repeat(2, 1fr);
grid-template-rows: 1fr;
grid-column-gap: 0px;
grid-row-gap: 0px;
}
    </style>
</head>
<body style="display: none">
	<%@include file="inc/top.jsp"%>

	<!-- BANNER WRAP -->

	<!-- BANNER SLIDER -->
	<!-- /BANNER SLIDER -->


	<div class="banner-wrap gaming-news cloner-wrap-3"
		data-title="Code Copied<br>to Clipboard!" style="position: relative;">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">${account.name}</h2>
			<p class="banner-sections">
				<span class="banner-section">Trade Account</span>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
            <use xlink:href="#svg-arrow"></use>
          </svg>
				<!-- /ARROW ICON -->
				<span class="banner-section">해외선물 증권계좌 </span>
				
				
				<svg class="arrow-icon">
            <use xlink:href="#svg-arrow"></use>
          </svg>
				<!-- /ARROW ICON -->
				<span class="banner-section">${account.name} </span>
				
				
			</p>
		</div>
		<!-- /BANNER -->
		<div class="xm-tooltip v2 red medium"
			style="white-space: nowrap; position: absolute; z-index: 99999; top: -58px; left: 50%; margin-left: -58.5px; visibility: hidden; opacity: 0; transform: scale(0); transition: all 0.3s ease-in-out 0s;">
			<p class="xm-tooltip-text">
				Code Copied<br>to Clipboard!
			</p>
		</div>
	</div>

	<%@include file="inc/newsscroll.jsp"%>

	<div class="layout-content-full v2 grid-limit layout-item gutter-big">
	

		<div class="widget-item">
			<!-- SECTION TITLE WRAP -->
			<div class="section-title-wrap violet no-space">
				<h2 class="section-title medium">Account Overview</h2>
				<div class="section-title-separator"></div>
			</div>
			<!-- /SECTION TITLE WRAP -->

			<!-- TAB WRAP -->
			<div class="tab-wrap">
				<!-- TAB BODY -->
				<div class="tab-body">
					<!-- TAB ITEM -->
					<div class="tab-item">
						<!-- WIDGET TEAM OVERVIEW -->
						<div class="widget-team-overview">
							<!-- TEAM OVERVIEW -->
							<div class="team-overview">


								<!-- OVERVIEW INFO WRAP -->
								<div class="overview-info-wrap" style="margin: auto">
									<table border="0" cellpadding="0" cellspacing="0" id="sheet0" class="sheet0 gridlines">
        <col class="col0">
        <col class="col1">
        <col class="col2">
        <col class="col3">
        <col class="col4">
        <col class="col5">
        <col class="col6">
        <col class="col7">
        <col class="col8">
        <tbody>
          <tr class="row0">
            <td class="column0 style9 s style10" colspan="9">${account.description}</td>
          </tr>
          <tr class="row1">
            <td class="column0 style4 s">전략유형</td>
            <td class="column1 style13 s">${account.strategytype}</td>
            <td class="column2 style7 null"></td>
            <td class="column3 style4 s">위험등급 </td>
            <td class="column4 style13 s">${account.grade}</td>
            <td class="column5 style1 null"></td>
            <td class="column6 style1 null"></td>
            <td class="column7 style4 s">투자금액</td>
            <td class="column8 style13 s"><fmt:formatNumber value="${cal.fundamount}" pattern="#,###"/>원</td>
          </tr>
          <tr class="row2">
            <td class="column0 style4 s">투자지역 </td>
            <td class="column1 style13 s">${account.location}</td>
            <td class="column2 style7 null"></td>
            <td class="column3 style4 s">레버리지</td>
            <td class="column4 style13 s">${account.leverage}</td>
            <td class="column5 style1 null"></td>
            <td class="column6 style1 null"></td>
            <td class="column7 style4 s">환율</td>
            <td class="column8 style13 s"><fmt:formatNumber value="${cal.usdrate}" pattern="#,###.##"/>원</td>
          </tr>
          <tr class="row3">
            <td class="column0 style1 null"></td>
            <td class="column1 style1 null"></td>
            <td class="column2 style1 null"></td>
            <td class="column3 style1 null"></td>
            <td class="column4 style1 null"></td>
            <td class="column5 style1 null"></td>
            <td class="column6 style1 null"></td>
            <td class="column7 style1 null"></td>
            <td class="column8 style1 null"></td>
          </tr>
          <tr class="row4">
            <td class="column0 style11 s style12" colspan="2">계좌현황</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style11 s style12" colspan="6">통계분석</td>
          </tr>
          <tr class="row5">
            <td class="column0 style7 s">기준일</td>
            <td class="column1 style14 s">${account.lastupdate}</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style2 null"></td>
            <td class="column4 style2 null"></td>
            <td class="column5 style2 null"></td>
            <td class="column6 style2 null"></td>
            <td class="column7 style2 null"></td>
            <td class="column8 style2 null"></td>
          </tr>
          <tr class="row6">
            <td class="column0 style7 s">설정일(존속기간)</td>
            <td class="column1 style14 s">${fn:substring(account.startdate,0,10)} 
          <%request.setAttribute("toDay_A", new java.util.Date());%>
	        <jsp:useBean id="toDay_B" class="java.util.Date" /> 
	        <c:set var="toDay_C" value="<%=new java.util.Date()%>"/>
	        <fmt:parseDate var="toDay_D" value="2018-11-28 16:42:00" pattern="yyyy-MM-dd HH:mm:ss" />
	        
        	<fmt:parseDate var="sDate" value="${account.startdate }" pattern="yyyy-MM-dd HH:mm:ss" />
        <fmt:parseNumber value="${sDate.time / (1000*60*60*24)}" integerOnly="true" var="isDate" scope="request" />
        <fmt:parseDate var="tDate" value="${account.lastupdate }" pattern="yyyy-MM-dd HH:mm:ss" />
        <fmt:parseNumber value="${tDate.time / (1000*60*60*24)}" integerOnly="true" var="itDate" scope="request" />
        (${itDate - isDate}일)	
            </td>
            <td class="column2 style2 null"></td>
            <td class="column3 style21 s style22" colspan="3">성과 요약</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style21 s style23" colspan="2">일간 기준</td>
          </tr>
          <tr class="row7">
            <td class="column0 style7 s">수정기준가(누적 수익률)</td>
            <td class="column1 style15 s">${cal.profit} usd (<fmt:formatNumber value="${cal.profitrate}" pattern="0.00"/>%)</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style3 s">누적수익률</td>
            <td class="column4 style2 null"></td>
            <td class="column5 style18 n"><fmt:formatNumber value="${cal.profitrate}" pattern="0.00"/>%</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">거래일수</td>
            <td class="column8 style17 n">${cal.tradedatecnt}</td>
          </tr>
          <tr class="row8">
            <td class="column0 style2 null"></td>
            <td class="column1 style2 null"></td>
            <td class="column2 style2 null"></td>
            <td class="column3 style3 s">연환산수익률</td>
            <td class="column4 style2 null"></td>
            <td class="column5 style18 n"><fmt:formatNumber value="${cal.yearexpectprofitrate}" pattern="0.00"/>%</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">일간승률</td>
            <td class="column8 style19 n"><fmt:formatNumber value="${dailyProfitRate}" pattern="0.00"/>%</td>
          </tr>
          <tr class="row9">
            <td class="column0 style11 s style12" colspan="2">수익률 현황</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style3 s">최대연속수익일수</td>
            <td class="column4 style2 null"></td>
            <td class="column5 style17 s">${maxPlusDayCnt}일</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">일간최대수익률</td>
            <td class="column8 style17 s"><fmt:formatNumber value="${maxDailyProfitRate}" pattern="0.00"/>% (${maxDailyProfitDay}일)</td>
          </tr>
          <tr class="row10">
            <td class="column0 style4 s">최근일</td>
            <td class="column1 style16 n"><fmt:formatNumber value="${cal.todayprofitrate}" pattern="0.00"/>%</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style5 s">최대연속손실일수</td>
            <td class="column4 style2 null"></td>
            <td class="column5 style17 s">${maxMinusDayCnt}일</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">일간최저수익률</td>
            <td class="column8 style20 n"><fmt:formatNumber value="${minDailyProfitRate}" pattern="0.00"/>% (${minDailyProfitDay}일)</td>
          </tr>
          <tr class="row11">
            <td class="column0 style4 s">최근 1주일</td>
            <td class="column1 style16 n"><fmt:formatNumber value="${cal.lastweekprofitrate}" pattern="0.00"/>%</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style2 null"></td>
            <td class="column4 style2 null"></td>
            <td class="column5 style2 null"></td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">일평균수익률</td>
            <td class="column8 style19 n"><fmt:formatNumber value="${daysProfitRate}" pattern="0.000"/>%</td>
          </tr>
          <tr class="row12">
            <td class="column0 style4 s">최근 1개월</td>
            <td class="column1 style16 n"><fmt:formatNumber value="${cal.lastmonthprofitrate}" pattern="0.00"/>%</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style6 null"></td>
            <td class="column4 style2 null"></td>
            <td class="column5 style2 null"></td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">일평균수익금</td>
            <td class="column8 style19 n"><fmt:formatNumber value="${daysAverageProfit * cal.usdrate}" pattern="#,###"/>원</td>
          </tr>
          <tr class="row13">
            <td class="column0 style4 s">최근 3개월</td>
            <td class="column1 style16 n"><fmt:formatNumber value="${cal.last3monthprofitrate}" pattern="0.00"/>%</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style21 s style22" colspan="3">위험대비수익</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style21 s style22" colspan="2">월간 기준</td>
          </tr>
          <tr class="row14">
            <td class="column0 style4 s">최근 12개월</td>
            <td class="column1 style16 n"><fmt:formatNumber value="${cal.lastyesrprofitrate}" pattern="0.00"/>%</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style8 s style8" rowspan="2">MDD</td>
            <td class="column4 style3 s">최대손실률(MDD)</td>
            <td class="column5 style16 n">60%</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">개월수</td>
            <td class="column8 style17 n">${monthCnt}</td>
          </tr>
          <tr class="row15">
            <td class="column0 style4 s">연초 이후</td>
            <td class="column1 style16 n"><fmt:formatNumber value="${cal.firstdayprofitrate}" pattern="0.00"/>%</td>
            <td class="column2 style2 null"></td>
            <td class="column4 style3 s">최근손실률</td>
            <td class="column5 style16 n">60%</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">월간승률</td>
            <td class="column8 style19 n"><fmt:formatNumber value="${monthlyProfitRate}" pattern="0.00"/>%</td>
          </tr>
          <tr class="row16">
            <td class="column0 style2 null"></td>
            <td class="column1 style2 null"></td>
            <td class="column2 style2 null"></td>
            <td class="column3 style8 s style8" rowspan="2">보상비율</td>
            <td class="column4 style3 s">위험대비 수익비(전체)</td>
            <td class="column5 style16 n">60%</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">월간최대수익률</td>
            <td class="column8 style17 s"><fmt:formatNumber value="${maxMonthlyProfitRate}" pattern="0.00"/>% (${maxMonthlyProfitDay}월)</td>
          </tr>
          <tr class="row17">
            <td class="column0 style11 s style12" colspan="2">수익금 현황(원)</td>
            <td class="column2 style2 null"></td>
            <td class="column4 style3 s">위험대비 수익비(연)</td>
            <td class="column5 style16 n">60%</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">월간최저수익률</td>
            <td class="column8 style17 s"><fmt:formatNumber value="${minMonthlyProfitRate}" pattern="0.00"/>% (${minMonthlyProfitDay}월)</td>
          </tr>
          <tr class="row18">
            <td class="column0 style4 s">최근일</td>
            <td class="column1 style17 s"><fmt:formatNumber value="${cal.todayprofit}" pattern="#,###"/>원</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style8 null style8" rowspan="2"></td>
            <td class="column4 style3 s">연환산변동성</td>
            <td class="column5 style16 n">60%</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">월평균수익률</td>
            <td class="column8 style19 n"><fmt:formatNumber value="${monthsProfitRate}" pattern="0.000"/>%</td>
          </tr>
          <tr class="row19">
            <td class="column0 style4 s">이번주</td>
            <td class="column1 style17 s"><fmt:formatNumber value="${cal.lastweekprofit}" pattern="#,###"/>원</td>
            <td class="column2 style2 null"></td>
            <td class="column4 style4 s">연환산 Sharpe Ratio</td>
            <td class="column5 style16 n">60%</td>
            <td class="column6 style2 null"></td>
            <td class="column7 style3 s">월평균수익금</td>
            <td class="column8 style19 n"><fmt:formatNumber value="${monthsAverageProfit * cal.usdrate}" pattern="#,###"/>원</td>
          </tr>
          <tr class="row20">
            <td class="column0 style4 s">이번달</td>
            <td class="column1 style17 s"><fmt:formatNumber value="${cal.lastmonthprofit}" pattern="#,###"/>원</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style2 null"></td>
            <td class="column4 style2 null"></td>
            <td class="column5 style2 null"></td>
            <td class="column6 style2 null"></td>
            <td class="column7 style2 null"></td>
            <td class="column8 style2 null"></td>
          </tr>
          <tr class="row21">
            <td class="column0 style4 s">이번년</td>
            <td class="column1 style17 s"><fmt:formatNumber value="${cal.lastyearprofit}" pattern="#,###"/>원</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style2 null"></td>
            <td class="column4 style2 null"></td>
            <td class="column5 style2 null"></td>
            <td class="column6 style2 null"></td>
            <td class="column7 style2 null"></td>
            <td class="column8 style2 null"></td>
          </tr>
          <tr class="row22">
            <td class="column0 style4 s">설정 이후</td>
            <td class="column1 style17 s"><fmt:formatNumber value="${cal.profitwon}" pattern="#,###"/>원</td>
            <td class="column2 style2 null"></td>
            <td class="column3 style2 null"></td>
            <td class="column4 style2 null"></td>
            <td class="column5 style2 null"></td>
            <td class="column6 style2 null"></td>
            <td class="column7 style2 null"></td>
            <td class="column8 style2 null"></td>
          </tr>
        </tbody>
    </table>
    
    
    
    
								</div>
								<!-- ARC RATE WRAP -->
								<!-- /ARC RATE WRAP -->
							</div>
							<!-- /TEAM OVERVIEW -->
						</div>
						<!-- /WIDGET TEAM OVERVIEW -->
					</div>
					<!-- /TAB ITEM -->
				</div>
				<!-- /TAB BODY -->

				<!-- TAB HEADER -->
				<!-- /TAB HEADER -->
			</div>
			<!-- /TAB WRAP -->
		</div>

		<div class="widget-item">
			<!-- SECTION TITLE WRAP -->
			<div class="section-title-wrap violet small-space">
				<h2 class="section-title medium">Profit Chart and pie</h2>
				<div class="section-title-separator"></div>
			</div>
			
			<div class="twoxone">
			<div>
			<canvas id="myChart1"></canvas>
			</div>
			<div style="max-height: 300px;
    float: right;
    text-align: -webkit-center;">
			<canvas id="symbolChart" ></canvas>
				</div>
				
				
			
			</div>
				
			
		</div>
		

		<div class="widget-item">
			<!-- SECTION TITLE WRAP -->
			<div class="section-title-wrap violet small-space">
				<h2 class="section-title medium">Trading History</h2>
				<div class="section-title-separator"></div>
			</div>
			<!-- /SECTION TITLE WRAP -->

			<!-- TABLE -->
			<div class="table standings ">
				<!-- TABLE ROW HEADER -->
				<div class="table-row-header">
					<!-- TABLE ROW HEADER ITEM -->
					<div class="table-row-header-item position">
						<p class="table-row-header-title">#</p>
					</div>
					<!-- /TABLE ROW HEADER ITEM -->

					<!-- TABLE ROW HEADER ITEM -->


					<!-- TABLE ROW HEADER ITEM -->
					<div class="table-row-header-item padded">
						<p class="table-row-header-title">Trade Date</p>
					</div>
					<!-- /TABLE ROW HEADER ITEM -->

					<!-- TABLE ROW HEADER ITEM -->
					<div class="table-row-header-item padded">
						<p class="table-row-header-title">Symbol</p>
					</div>
					<!-- /TABLE ROW HEADER ITEM -->

					<!-- TABLE ROW HEADER ITEM -->
					<div class="table-row-header-item padded">
						<p class="table-row-header-title">Type</p>
					</div>
					<!-- /TABLE ROW HEADER ITEM -->

					<div class="table-row-header-item">
						<p class="table-row-header-title">Lots</p>
					</div>
					<div class="table-row-header-item">
						<p class="table-row-header-title">Close Price</p>
					</div>


					<!-- TABLE ROW HEADER ITEM -->
					<div class="table-row-header-item padded">
						<p class="table-row-header-title">Open Price</p>
					</div>
					<!-- /TABLE ROW HEADER ITEM -->

					<!-- TABLE ROW HEADER ITEM -->
					<div class="table-row-header-item">
						<p class="table-row-header-title">Profit</p>
					</div>
					<div class="table-row-header-item">
						<p class="table-row-header-title">currency</p>
					</div>
					<div class="table-row-header-item">
						<p class="table-row-header-title">open date</p>
					</div>
					<div class="table-row-header-item">
						<p class="table-row-header-title">close date</p>
					</div>
					<!-- /TABLE ROW HEADER ITEM -->

					<!-- TABLE ROW HEADER ITEM -->

					<!-- /TABLE ROW HEADER ITEM -->
				</div>
				<!-- /TABLE ROW HEADER -->

				<!-- TABLE ROWS -->
				<div class="table-rows" id="historydiv">
					<!-- TABLE ROW -->
					<!-- /TABLE ROW -->

					<!-- TABLE ROW -->
					<!-- /TABLE ROW -->

					<!-- TABLE ROW -->
					<!-- /TABLE ROW -->

					<!-- TABLE ROW -->
					<!-- /TABLE ROW -->

					<!-- TABLE ROW -->
					<!-- /TABLE ROW -->
				</div>
				<!-- /TABLE ROWS -->
			</div>
			<!-- /TABLE -->

			<!-- TABLE -->
			<!-- /TABLE -->
		</div>




		<div class="page-navigation blue spaced right" id="pagingContainer"
			style="margin-top: -35px; margin-bottom: 16px;"></div>





	

	</div>
	
	<script>
	var oilCanvas = document.getElementById("symbolChart");

	

	var oilData = {
	    labels: [<c:forEach items="${profitbysymbol}" var="pieinfo" >"${pieinfo.symbol}",</c:forEach>],
	    datasets: [
	        {
	        	label: [<c:forEach items="${profitbysymbol}" var="pieinfo" >"${pieinfo.symbol}",</c:forEach>],
	            data: [<c:forEach items="${profitbysymbol}" var="pieinfo1" >${pieinfo1.total_profit},</c:forEach>],
	        backgroundColor: [], // Leave it empty for now
	        }]
	      
	};
	
	oilData.datasets[0].backgroundColor = oilData.labels.map(() => getRandomColor());


	var pieChart = new Chart(oilCanvas, {
		
	  type: 'bar',
	  data: oilData,
	  options: {
	        plugins: {
	            legend: {
	                display: false // Hide legend
	            }
	        },
	        scales: {
	            x: {
	                display: true // Show x-axis
	            },
	            y: {
	                display: true // Show y-axis
	            }
	        }
	    }
	});
	
	
	function getRandomColor() {
	    var r = Math.floor(Math.random() * 256); // Random value between 0 and 255 for red
	    var g = Math.floor(Math.random() * 256); // Random value between 0 and 255 for green
	    var b = Math.floor(Math.random() * 256); // Random value between 0 and 255 for blue
	    return 'rgba(' + r + ', ' + g + ', ' + b + ', 0.7)'; // Return color in rgba format with alpha
	}
	
	</script>

	<script>
	let sdata= '[<c:forEach items="${ kraccountprofitchartdata }" var="chartinfo" >${chartinfo.cumulative_profit},</c:forEach>';
	 let data = JSON.parse(sdata.slice(0,-1)+"]");
	
    function insertchart()
    {
 	   
    	
  
     var chartData = {
         labels:Array.from({ length: data.length }, (_, i) => i + 1),
         datasets: [{
             label: 'Profit In USD',
             backgroundColor: '#f30a5c',
             borderColor: '#f30a5c',
             borderWidth: 4,
             data: data,
         }]
     };

     
  

     // Get the canvas element
     var ctx = document.getElementById('myChart1').getContext('2d');

     // Create the chart
     var myChart = new Chart(ctx, {
         type: 'line',
         data: chartData,
         options: {bezierCurve : true,
         	elements: {
                 point:{
                     radius: 1
                 }
             },
             scales: {
                 yAxes: [{
                     ticks: {
                         beginAtZero: false
                     }
                 }],
                 xAxes: [{
                     display: false, // hide x-axis
                     gridLines: {
                         display: false // hide grid lines for x-axis
                     }
                 }]
             }
         }
     });
    }insertchart();
    
	const parameterid = new URLSearchParams(window.location.search).get('accountid');
    
    function getHistorytotalPage() {
    	
		$
				.ajax({
					url : '${pageContext.request.contextPath}/forum/getKRAccountHistorytotalPage?id='+parameterid,
					type : 'get',
					async : false,
					data : '',
					success : function(data) {
						totalpagenumber = data.result;
						console.log(totalpagenumber);
						totalpagenumber++;
						generatePagingNumbers(totalpagenumber, 1);
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						return;
					}
				});
	}getHistorytotalPage();

	
	
	function buyOrSell(input) {
	    if (input.indexOf("0")>=0) {
	        return "buy";
	    } else if (input.indexOf("1")>=0) {
	        return "sell";
	    } else {
	        return "-";
	    }
	}
	
	function getHistory(page) {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/forum/getKRAccountHistory?id='+parameterid+'&page='+page,
					type : 'get',
					async : false,
					data : '',
					success : function(data) {
						
							//console.log(JSON.parse(data.result));
							inserthistoryTable (data.result ,page);
							generatePagingNumbers(totalpagenumber, page);
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						return;
					}
				});
	}getHistory(1);
	
	
	// Function to generate paging numbers
	function generatePagingNumbers(totalPages, currentPage) {
	  var pagingContainer = document.getElementById('pagingContainer');
	  if (!pagingContainer) return;
	  
	  var paginationHTML = '';
	  for (var i = 1; i <= totalPages; i++) {
	    if (i === currentPage) {
	      paginationHTML += '<a href="#" class=" page-navigation-item active">' + i + '</a>';
	    } else {
	      paginationHTML += '<button type="button" class="page-navigation-item" onclick="getHistory('+i+')">' + i + '</button>';
	    }
	  }


	  pagingContainer.innerHTML = paginationHTML;
	}

	function inserthistoryTable (jsonString ,page)
	{
		
		const jobject = JSON.parse(jsonString);
		
		console.log(jobject);
		

		
		var tableRowsContainer = document.getElementById("historydiv");
		tableRowsContainer.innerHTML = "";

		// Loop through each object in the JSON data and create a table row for each
		jobject.forEach(function(itemobj ,index) {
		  // Create a new table row element
		  
		  let item = JSON.parse(itemobj);
		  
		   let currentIndex = (index + 1)+(30*(page-1));
		  
		  var row1c = '<div class="table-row">'
		+'  <div class="table-row-item position">'

		+'  <p class="table-text">'+currentIndex+'</p>'

		+'   <div class="team-info-wrap">'

	         
		+'   </div>'
	       
		+'   </div>' 
		+'<div class="table-row-item"><p class="table-text bold">'+item.tradedate+'</p></div>'
		+'<div class="table-row-item"><p class="table-text bold">'+item.symbol+'</p></div>'
		+'<div class="table-row-item"><p class="table-text bold">'+item.type+'</p></div>'
		+'<div class="table-row-item"><p class="table-text bold">'+item.lots+'</p></div>'
		+'<div class="table-row-item"><p class="table-text bold">'+item.closeprice+'</p></div>'
		+'<div class="table-row-item"><p class="table-text bold">'+item.openprice+'</p></div>'
		+'<div class="table-row-item"><p class="table-text bold">'+item.profit+'</p></div>'
		+'<div class="table-row-item"><p class="table-text bold">'+item.currency+'</p></div>'
		+'<div class="table-row-item"><p class="table-text bold">'+item.opendate+'</p></div>'
		+'<div class="table-row-item"><p class="table-text bold">'+item.closedate+'</p></div>';
	    
	     
		
		   tableRowsContainer.innerHTML +=row1c;
		 
	    
	});
	}
</script>
	<!-- LAYOUT CONTENT 1 -->
	<!-- /LAYOUT CONTENT 1 -->
	<%@include file="inc/footer.jsp"%>
</body>
</html>
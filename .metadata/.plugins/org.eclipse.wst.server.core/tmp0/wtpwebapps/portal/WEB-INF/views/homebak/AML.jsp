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
                        <h1><span class="text-highlight"><spring:message code="aml.title" text="Anti-Money Laundering Policy" /></span></h1>
                      
                      
                        <h4 class="fw-bold"><spring:message code="aml.content1.title" text="Anti-Money Laundering Policy" /></h4>
                        <p><spring:message code="aml.content1.desc" text="Money laundering is the act of engaging in financial transactions that convert money obtained from illegal activities into money that appears to have been obtained through legal means. The purpose of this law is to hide the illegal identity of any monetary product, including cash amounts. As such, it is illegal under national and international law to knowingly or recklessly engage in any activity involving illegally acquired capital by CT Investing LTD Limited and its employees." /></p>
						
						
						
						<h4 class="fw-bold"><spring:message code="aml.content2.title" text="General provisions" /></h4>
						<p><spring:message code="aml.content2.desc" text="This document describes the anti-money laundering policy of CT Investing LTD (the Company) and its involvement in the detection and prevention of all activities related to money laundering, the financing of terrorism and the potential use of the company's products and services for the purposes of financing. do. - Laundry (hereinafter AML Policy)." /></p>

<p><spring:message code="aml.content22.desc" text="Criminal Proceeds Laundering – The act of converting funds derived from criminal activity or other means of cash and credit into funds or investments that appear to be legitimate so that their illegal sources cannot be traced. National and international laws that apply to companies that allow customers to deposit and withdraw funds from their accounts make it illegal for the company's partners to knowingly conduct or engage in financial transactions with criminalized fiat funds." /></p>

<p><spring:message code="aml.content23.desc" text="The purpose of anti-money laundering procedures is to ensure that customers engaging in financial transactions with the participation of company sites are identified on a reasonable basis with a minimal set of identity data for law-abiding customers. The company has developed anti-money laundering and anti-terrorism financing in accordance with international legal requirements. The company carefully monitors suspicious behavior and transactions and reports such behavior to the appropriate authorities in a timely manner." /></p>

<p><spring:message code="aml.content24.desc" text="To minimize the risk of money laundering and terrorist financing, the company does not accept cash for deposits and under no circumstances will it pay in cash. The Company reserves the right to waive transaction processing at any stage if it determines that the transaction is related to money laundering or criminal activity. Under international law, the company has no authority to inform the customer that the customer's criminal activity has been reported to the relevant authorities." /></p>


  <h4 class="fw-bold">ID</h4>
                   <p><spring:message code="aml.content3.desc" text="The minimum required identity data set required to open a real trading account is as follows." /></p>
<p>-<spring:message code="aml.content32.desc" text="Name (last name, first name and patron name)" /></p>
<p>-<spring:message code="aml.content33.desc" text="Registration and financial email;" /></p>
<p>-<spring:message code="aml.content34.desc" text="Address of customer's residence or business" /></p>
<p>-<spring:message code="aml.content35.desc " text="Phone number." /></p>
<p><spring:message code="aml.content36.desc" text="To enforce anti-money laundering laws, companies may require customers to present two documents confirming their identity." /></p>
 <p><spring:message code="aml.content37.desc" text="The first document a company may request is an unexpired photo ID of the customer issued by the competent government. This can be a passport, driver's license (for countries where a driver's license is the default identification) or local identification (except for in-house access cards). Other documents that the company may request are invoices less than three months old that include the customer's full name and physical address. It could be a bill for housing services, a bank statement, or other document confirming the customer's address. In some cases, the company may require the customer to present a notarized copy of the document." /></p>

<p><spring:message code="aml.content38.desc" text="Documents written in languages &ZeroWidthSpace;&ZeroWidthSpace;other than English must be translated into English by an sworn translator." /></p>
<p><spring:message code="aml.content39.desc" text="Translations must be typed and signed by the translator and sent along with a copy of the original document with a clear picture of the client." /></p>


                    <h4 class="fw-bold"><spring:message code="aml.content4.title" text="Account Deposit, Fund Withdrawal" />.</h4>
                  
                   
<p><spring:message code="aml.content4.desc" text="The company requires the sender's name to completely match the name specified during account registration during replenishment (if the payment system provides the sender's name). Acceptance of payments from third parties is prohibited." /></p>

<p><spring:message code="aml.content42.desc" text="Company generally reserves the right to require strict adherence to agreed upon replenishment and withdrawal procedures. Money can be withdrawn to the same account in the same way the replenishment was done. While withdrawing funds, the name of the recipient must strictly match the name of the customer in the company database. " /></p>

<p><spring:message code="aml.content43.desc" text="If the replenishment was made via bank transfer, funds may only be withdrawn via bank transfer to the same bank and account where the replenishment was made. If the replenishment was carried out through an electronic payment system, funds can be withdrawn through the same system and electronic payment to the account on which the replenishment was carried out. " /></p>
<p><spring:message code="aml.content44.desc" text="The Company, in its sole discretion, declares that the transfer of funds from its clients is permitted only if the Company intends to operate a transaction for the purpose of making a profit within the scope of the services provided by the Company in order to comply with the Anti-Money Laundering Policy. . " /></p>
<p><spring:message code="aml.content45.desc" text="If the Company has sufficient reason to believe that the Account Holder is using the transfer of funds for a purpose other than the services provided by the Company, in violation of laws and/or the Company's anti-money laundering policy, the Company shall conduct transactions on this Personal Account. For trading accounts and clients' personal accounts (Trader's Room)." /></p>

<p><spring:message code="aml.content46.desc" text="If you have any further questions, please email amlpolicy@unionmkc.com." /></p>

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
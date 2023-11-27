<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="inc/session.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="inc/header.jsp"%>

<style>
td {
	cursor: pointer;
}
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<%@include file="inc/top.jsp"%>

		<!-- Main Sidebar Container -->
		<%@include file="inc/left.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0" id="pagetitlemain"></h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" id="pagetitlesub"></li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->

			<div class="container-fluid">

				<div class="row">


					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<div class="row">
									<div class="col-3">
										<div class="profile-title">

											<div class="media">
												<img class="img-70 rounded-circle" alt=""
													src="/portal/resources/crm/assets/images/user/7.jpg"
													style="width: 25%">
												<div class="media-body"
													style="padding-top: 11px; padding-left: 21px;">
													Name: <span id="accname"><%=s_Name%></span> <br> <span>
														ID: <%=s_Login%></span> <br> Account Balance: <span id="fab"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-9">
										<h5>
											<b>Deposit</b>
										</h5>
										<h6>
											<br> <span> International bank transfers take 2-3
												business days. <br> You must not send money in someone
												else's name. <br> When depositing cryptocurrency, you
												must enter the transaction (TXID) after depositing to verify
												your identity.<br> If you fill out a deposit
												application after depositing cryptocurrency, your deposit
												will be processed faster. <br> For accurate processing,
												please copy and paste the transaction (TXID) and upload the
												screen capture.
											</span>
										</h6>
									</div>
								</div>


							</div>
							<div class="table-responsive">
								<table class="table table-border-horizontal">
									<thead>
										<tr>
											<th scope="col"><b>Deposit Type</b></th>
											<th scope="col"><b>Time</b></th>
											<th scope="col"><b>Minimum deposit amount</b></th>
											<th scope="col"><b>Maximum deposit amount</b></th>

											<th scope="col"><b>Currency</b></th>
											<th scope="col"><b>Deposit</b></th>
										</tr>
									</thead>
									<tbody>
										<!-- <tr>
											<td><img
												src="/portal/resources/crm/dist/img/bankwire.png"></td>
											<td valign="middle">2-3 business days</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle">
												<button class="btn btn-primary" type="button"
													data-bs-toggle="tooltip" title=""
													onclick="alert('We are preparing for service.');return false;"
													data-bs-original-title="btn btn-primary">Deposit</button>


											</td>
										</tr> -->




										<tr>
											<td>Bitcoin (M2P)</td>
											<td valign="middle">5 to 60 minutes</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle"><button class="btn btn-primary"
													type="button"
													onclick="Openm2pDepositCoinModal('M2PBTC','Bitcoin (M2P)','BTC')">Deposit</button></td>
										</tr>

										<tr>
											<td>Ethereum (M2P)</td>
											<td valign="middle">5 to 60 minutes</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle"><button class="btn btn-primary"
													type="button"
													onclick="Openm2pDepositCoinModal('M2PETH','Ethereum (M2P)','ETH')">Deposit</button></td>
										</tr>

										<tr>
											<td>Tether ERC20 (M2P)</td>
											<td valign="middle">5 to 60 minutes</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle"><button class="btn btn-primary"
													type="button"
													onclick="Openm2pDepositCoinModal('M2PUST','Tether ERC20 (M2P)','UST')">Deposit</button></td>
										</tr>

										<tr>
											<td>Tether BEP20 (M2P)</td>
											<td valign="middle">5 to 60 minutes</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle"><button class="btn btn-primary"
													type="button"
													onclick="Openm2pDepositCoinModal('M2PUSB','Tether BEP20 (M2P)','USB')">Deposit</button></td>
										</tr>

										<tr>
											<td>Tether USDT TRC20 (M2P)</td>
											<td valign="middle">5 to 60 minutes</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle"><button class="btn btn-primary"
													type="button"
													onclick="Openm2pDepositCoinModal('M2PUSX','Tether USDT (M2P)','USX')">Deposit</button></td>
										</tr>






										<!-- <tr>
											<td>Bitcoin</td>
											<td valign="middle">5 to 60 minutes</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle"><button class="btn btn-primary"
													type="button" data-bs-toggle="modal"
													data-original-title="test"
													data-bs-target="#depositCoinModal"
													data-bs-original-title="" title="" data-requestcode="BIT"
													data-requestcodevalue="Bitcoin"
													data-requestdscr="14LkVWDWSmHXtqzDQxvRZRJyd3pHypLAUX">Deposit</button></td>
										</tr> -->

										<!-- <tr>
											<td>Ethereum</td>
											<td valign="middle">5 to 60 minutes</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle"><button class="btn btn-primary"
													type="button" data-bs-toggle="modal"
													data-original-title="test"
													data-bs-target="#depositCoinModal"
													data-bs-original-title="" title="" data-requestcode="ETH"
													data-requestcodevalue="Ethereum"
													data-requestdscr="0xba74560a07b3f1a98f2699a313c76f76eff2f54b">Deposit</button></td>
										</tr>
 -->
										<!-- <tr>
											<td>USDT ERC-20</td>
											<td valign="middle">5 to 60 minutes</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle"><button class="btn btn-primary"
													type="button" data-bs-toggle="modal"
													data-original-title="test"
													data-bs-target="#depositCoinModal"
													data-bs-original-title="" title=""
													data-requestcode="USDTERC20"
													data-requestcodevalue="USDT ERC-20"
													data-requestdscr="0x0fc9024b6ecb6cda25d63daddbed833139d0b0d5">Deposit</button></td>
										</tr> -->

										<!-- <tr>
											<td>USDT BEP-20</td>
											<td valign="middle">5 to 60 minutes</td>
											<td valign="middle">100</td>
											<td valign="middle">Unlimited</td>

											<td valign="middle">USD</td>
											<td valign="middle"><button class="btn btn-primary"
													type="button" data-bs-toggle="modal"
													data-original-title="test"
													data-bs-target="#depositCoinModal"
													data-bs-original-title="" title=""
													data-requestcode="USDTBEP20"
													data-requestcodevalue="USDT BEP-20"
													data-requestdscr="0x6f4d5fd4078a4f1b89186bfa41ea1173e891521a">Deposit</button></td>
										</tr> -->




									</tbody>
								</table>
								<!--  2021-09-18 coin modal start -->
								<div class="modal fade" id="depositCoinModal" tabindex="-1"
									aria-labelledby="codeModalLabel" style="display: none;"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="coinModalLabel">Request for
													deposit</h5>
												<button class="btn-close" type="button"
													data-bs-dismiss="modal" aria-label="Close"
													data-bs-original-title="" title=""></button>
											</div>
											<div class="modal-body">
												<form name="reqForm" id="reqForm">
													<input type="hidden" id="paymethod" name="paymethod"
														value="" data-bs-original-title="" title=""> <input
														type="hidden" id="paycompany" name="paycompany" value=""
														data-bs-original-title="" title=""> <input
														type="hidden" id="paytype" name="paytype" value="Deposit"
														data-bs-original-title="" title=""> <input
														type="hidden" id="paystatus" name="paystatus"
														value="REQUEST" data-bs-original-title="" title="">
													<input type="hidden" id="currency" name="currency"
														value="USD" data-bs-original-title="" title=""> <input
														type="hidden" id="accountname" name="accountname"
														value="Doo San Baek" data-bs-original-title="" title="">
													<input type="hidden" id="payprice" name="payprice"
														value="0" data-bs-original-title="" title="">
													<!--  정확한 금액은 관리자에서 입력 처리함. -->
													<input type="hidden" id="reqpayprice" name="reqpayprice"
														value="0" data-bs-original-title="" title="">
													<div class="mb-3">
														<label class="col-form-label" for="recipient-name">Company
															Account Number</label>
														<button class="btn btn-primary btn-clipboard btn-xs"
															type="button" data-clipboard-action="copy"
															data-clipboard-target="#accountnumber"
															data-bs-original-title="" title="">
															<i class="fa fa-copy"></i> Copy
														</button>
														<!-- <a href="https://etherscan.io/" target="_blank"><i class="icofont icofont-share-alt">detail</i></a> -->
														<input class="form-control" type="text" id="accountnumber"
															name="accountnumber" value="" data-bs-original-title=""
															title="">
													</div>
													<div class="mb-3">
														<label class="col-form-label" for="message-text">TxID
															- Transaction ID/Hash</label> <input class="form-control"
															type="text" id="sndaccountnumber" name="sndaccountnumber"
															value="" data-bs-original-title="" title="">
													</div>
													<div class="mb-3">
														<label class="col-form-label" for="message-text">송금영수증파일</label>
														<input class="form-control" type="file" id="attachfile"
															name="attachfile" data-bs-original-title="" title="">
													</div>



												</form>
											</div>
											<div class="modal-footer">
												<button class="btn btn-primary" type="button"
													data-bs-dismiss="modal" data-bs-original-title="" title="">Close</button>
												<button class="btn btn-secondary" type="button"
													data-bs-original-title="" title=""
													id="depositCoinProcessBtn"
													onclick="payCoinRequest();return false;">Submit</button>
											</div>
										</div>
									</div>
								</div>
								<!--  2021-09-18 coin modal end -->
								<!--  2021-11-23 match2pay coin modal start -->

								<!--  2021-11-23 match2pay coin modal end -->
								<!--  2021-11-27 match2pay iframe start -->

								<!--  2021-11-27 match2pay iframe end -->
							</div>
						</div>

					</div>
				</div>
			</div>


			<!-- /.container-fluid -->

			<!-- /.content -->
		</div>
		<div class="modal fade" id="m2pDepositCoinModal" tabindex="-1"
			aria-labelledby="codeModalLabel" style="display: none;"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="m2pCoinModalLabel">Request for
							deposit</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<form name="reqForm" id="m2pReqForm">
							<input type="hidden" name="paytype" id="m2p_paytype"
								value="Deposit" /> <input type="hidden" name="paycompany"
								id="m2p_paycompany" value="" /> <input type="hidden"
								name="paystatus" id="m2p_paystatus" value="REQUEST" /> <input
								type="hidden" name="currency" id="m2p_currency" value="USD" />
							<input type="hidden" name="paymentcurrency"
								id="m2p_paymentcurrency" value="" /> <input type="hidden"
								name="paymethod" id="m2p_paymethod" value=""> <input
								type="hidden" name="accountname" id="m2p_accountname" value="" />
							<input type="hidden" name="payprice" id="m2p_payprice" value="0" />
							<div class="mb-3">
								<label class="col-form-label" for="recipient-name">Amount</label>
								<input class="form-control" type="text" id="amount"
									name="amount" value="" data-bs-original-title="" title="">
							</div>
						</form>
					</div>

					<div class="modal-footer">
						<button class="btn btn-primary" type="button"
							data-bs-dismiss="modal" data-bs-original-title="" title=""
							onclick='$("#m2pDepositCoinModal").modal("hide");'>Close</button>
						<button class="btn btn-secondary" type="button"
							data-bs-original-title="" title="" id="m2pDepositCoinProcessBtn"
							onclick="payM2PCoinRequest();return false;">Submit</button>
					</div>
				</div>
			</div>
		</div>

		<%@include file="inc/footer.jsp"%>
</body>

<script type="text/javascript"> // M2P
var REQUESTCODE = "" ;
var REQUESTCODEVALUE = "" ;
var REQUESTDSCR = "" ;
var modaltitle = 'Request for deposit';

$(document).ready(function() {
	/*$('#m2pDepositCoinModal').on('show.bs.modal', function(event) {    
	 	
	 	REQUESTCODE = $(event.relatedTarget).data('requestcode');
	 	REQUESTCODEVALUE = $(event.relatedTarget).data('requestcodevalue');
	 	REQUESTDSCR = $(event.relatedTarget).data('requestdscr');
	 	
	 	$("#m2p_paymethod").val(REQUESTCODE);
	 	$("#m2p_paycompany").val(REQUESTCODEVALUE);
	 	$("#m2p_paymentcurrency").val(REQUESTDSCR);
	 	$("#m2pCoinModalLabel").html(REQUESTCODEVALUE +' '+ modaltitle);
	 	$("#m2pDepositCoinProcessBtn").attr('disabled', false);
	 	
	 	alert(REQUESTCODE);
	 });*/

 });



function Openm2pDepositCoinModal(REQUESTCODE,REQUESTCODEVALUE,REQUESTDSCR)
{
	
	$("#m2p_paymethod").val(REQUESTCODE);
 	$("#m2p_paycompany").val(REQUESTCODEVALUE);
 	$("#m2p_paymentcurrency").val(REQUESTDSCR);
	$("#m2p_accountname").val(document.getElementById("accname").innerHTML);
 	$("#m2pCoinModalLabel").html(REQUESTCODEVALUE +' '+ modaltitle);
 	$("#m2pDepositCoinProcessBtn").attr('disabled', false);
 	
 	$("#m2pDepositCoinModal").modal("show");
 	
 	//alert(REQUESTCODE);
 	
 	
	}
 


 
//2021-11-23 add
function payM2PCoinRequest() {
	$("#m2pDepositCoinProcessBtn").attr('disabled', true);

	if ($("#amount").val() == "" || $("#amount").val() <= 0 || $.isNumeric($("#amount").val()) == false) {

		alert('Enter the  amount.');
		$("#amount").focus();
    	$("#m2pDepositCoinProcessBtn").attr('disabled', false);
		return;
	}
	//alert($("#m2p_paycompany").val()  + ":" + $("#m2p_paymentcurrency").val() + ":" + $("#m2p_paymethod").val());
	
	//alert($("#m2pReqForm").serialize());
	
	$.ajax({
		url : '/portal/fundclient/ajax/m2payDepositRequest',
		type : 'post',
		async: false,
		data : $("#m2pReqForm").serialize(),
		success : function(data) {
			if (data.result == "SUCCESS") {
				$('#m2pDepositCoinModal').modal('hide');
				//$('#m2pqrcodeurlfrm').attr('src', data.resulturl);
				//$('#m2pQrcodeinfo').modal('show');
				window.open(data.resulturl, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=800,height=800");
			} else if (data.result == "ERROR") {
				alert("The operation failed. Please check and try again. \n" + data.resultmessage);
	   	    	$("#m2pDepositCoinProcessBtn").attr('disabled', false);
				return ;
			}
		},
		error : function(xhr, status) {
            alert("ERROR : " + xhr + " : " + status);
   	    	$("#m2pDepositCoinProcessBtn").attr('disabled', false);
            return;
        }
	});
	
}    	


</script>
<script type="text/javascript">

function getfundbalance()
{ 
	$
	.ajax({
		url : "${pageContext.request.contextPath}/fundclient/GetFundAccountBalance",
		type : 'get',
	    datatype : "application/json",
	    contentType: "application/json",
		async : false,
		data : '',
		success : function(data) {
			
			  const jobj = JSON.parse(data.result);
				 if(jobj.retcode.indexOf("0 Done")>=0)
					 {
					var balance  =  jobj.answer.Balance;
					document.getElementById("fab").innerHTML = "<span style='color:green'>"+balance +"</span> USD";
					  
					 
					 }
				 else
					 {
					 alert(jobj.answer)
					 }
				  
				  	  
		},
		error : function(xhr, status) {
			console.log("ERROR : " + xhr + " : " + status);
			showloading(0);
			return;
		}
	});
	
	
}getfundbalance();



var newaccountinfo;
	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}

	

	
	
</script>




<!-- DataTables  & Plugins -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/jszip/jszip.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/pdfmake/pdfmake.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/pdfmake/vfs_fonts.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<script>
	$(function() {
		$("#example1").DataTable({
			"responsive" : true,
			"lengthChange" : false,
			"autoWidth" : false,
			"buttons" : [ "copy", "csv", "excel", "pdf", "print", "colvis" ]
		}).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
		$('#example2').DataTable({
			"paging" : true,
			"lengthChange" : false,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : false,
			"responsive" : true,
		});
	});
</script>
</html>

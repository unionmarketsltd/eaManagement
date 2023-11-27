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
	                          <th scope="col"><b>Withdrawal Type</b></th>
	                          <th scope="col"><b>Time</b></th>
	                          <th scope="col"><b>Maximum Withdrawal Amount</b></th>
	                          
	                          <th scope="col"><b>Currency</b></th>
	                          <th scope="col"><b>Withdrawal</b></th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                      	<tr>
	                          <td>PreWallet</td>
	                          <td valign="middle">1-2 business days</td>
	                          <td valign="middle">Unlimited</td>
	                          
	                          <td valign="middle">USD</td>
	                          <td valign="middle"><button class="btn btn-primary" type="button" data-bs-toggle="modal" data-original-title="test" data-bs-target="#withdrawalPreWallet" data-bs-original-title="" title="" data-requestcode="" data-requestcodevalue="" data-requestdscr="" onclick="notready()">Withdrawal</button></td>
	                        </tr>
	                        
							
							
							<tr>
	                          <td>Bitcoin</td>
	                          <td valign="middle">2-3 business days</td>
	                          <td valign="middle">Unlimited</td>
	                          
	                          <td valign="middle">USD</td>
	                          <td valign="middle"><button class="btn btn-primary" type="button" data-bs-toggle="modal" data-original-title="test" data-bs-target="#withdrawalCoinModal" data-bs-original-title="" title="" data-requestcode="BIT" data-requestcodevalue="Bitcoin" data-requestdscr="14LkVWDWSmHXtqzDQxvRZRJyd3pHypLAUX" onclick="notready()">Withdrawal</button></td>
	                        </tr>
	                        
							<tr>
	                          <td>Ethereum</td>
	                          <td valign="middle">2-3 business days</td>
	                          <td valign="middle">Unlimited</td>
	                          
	                          <td valign="middle">USD</td>
	                          <td valign="middle"><button class="btn btn-primary" type="button" data-bs-toggle="modal" data-original-title="test" data-bs-target="#withdrawalCoinModal" data-bs-original-title="" title="" data-requestcode="ETH" data-requestcodevalue="Ethereum" data-requestdscr="0xba74560a07b3f1a98f2699a313c76f76eff2f54b" onclick="notready()">Withdrawal</button></td>
	                        </tr>
	                        
							<tr>
	                          <td>USDT ERC-20</td>
	                          <td valign="middle">2-3 business days</td>
	                          <td valign="middle">Unlimited</td>
	                          
	                          <td valign="middle">USD</td>
	                          <td valign="middle"><button class="btn btn-primary" type="button" data-bs-toggle="modal" data-original-title="test" data-bs-target="#withdrawalCoinModal" data-bs-original-title="" title="" data-requestcode="USDTERC20" data-requestcodevalue="USDT ERC-20" data-requestdscr="0x0fc9024b6ecb6cda25d63daddbed833139d0b0d5" onclick="notready()">Withdrawal</button></td>
	                        </tr>
	                        
							<tr>
	                          <td>USDT BEP-20</td>
	                          <td valign="middle">2-3 business days</td>
	                          <td valign="middle">Unlimited</td>
	                          
	                          <td valign="middle">USD</td>
	                          <td valign="middle"><button class="btn btn-primary" type="button" data-bs-toggle="modal" data-original-title="test" data-bs-target="#withdrawalCoinModal" data-bs-original-title="" title="" data-requestcode="USDTBEP20" data-requestcodevalue="USDT BEP-20" data-requestdscr="0x6f4d5fd4078a4f1b89186bfa41ea1173e891521a" onclick="notready()">Withdrawal</button></td>
	                        </tr>
	                        
	                        	                        
	                        
	                      </tbody>
	                    </table>
								<div class="modal fade show" id="withdrawalCoinModal" tabindex="-1" aria-labelledby="codeModalLabel" style="display: none; padding-right: 17px;" aria-modal="true" role="dialog">
	                      <div class="modal-dialog" role="document">
	                        <div class="modal-content">
	                          <div class="modal-header">
	                            <h5 class="modal-title" id="coinModalLabel">USDT ERC-20 </h5>
	                            <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close" data-bs-original-title="" title=""></button>
	                          </div>
	                          <div class="modal-body">
	                            <form name="reqForm" id="reqForm">
	                              <input type="hidden" id="paytype" name="paytype" value="Withdrawal" data-bs-original-title="" title="">
	                              <input type="hidden" id="paymethod" name="paymethod" value="USDTERC20" data-bs-original-title="" title="">
	                              <input type="hidden" id="paycompany" name="paycompany" value="USDT ERC-20" data-bs-original-title="" title="">
	                              <input type="hidden" id="sndaccountnumber" name="sndaccountnumber" value="0x0fc9024b6ecb6cda25d63daddbed833139d0b0d5" data-bs-original-title="" title="">
	                              <input type="hidden" id="paystatus" name="paystatus" value="REQUEST" data-bs-original-title="" title="">
	                              <input type="hidden" id="currency" name="currency" value="USD" data-bs-original-title="" title="">	                            
						          <input type="hidden" id="accountname" name="accountname" value="Doo San Baek" data-bs-original-title="" title="">
						          <input type="hidden" id="payprice" name="payprice" value="0" data-bs-original-title="" title="">
						          <!-- 20220615 add  -->
						          <input type="hidden" id="checkuserinfoseq" name="checkuserinfoseq" value="1281" data-bs-original-title="" title="">
	                            
	                              <div class="mb-3">
	                                <label class="col-form-label" for="recipient-name">Wallet Address</label>
	                                <input class="form-control" type="text" id="accountnumber" name="accountnumber" value="" data-bs-original-title="" title="">
	                              </div>
	                              <div class="mb-3" id="div_coinhistory">
	                                <label class="col-form-label" for="message-text">Wallet Address History</label>
	                                <select id="coinaccounthistory" name="coinaccounthistory" onchange="setAccountnumber();" class="form-control form-select">
	                                	<option value="">==Select==</option>
	                                <option value="100" selected="">100</option></select>
	                              </div>
	                              <div class="mb-3">
	                                <label class="col-form-label" for="message-text">Amount</label>
	                                <input class="form-control" type="text" id="reqpayprice" name="reqpayprice" data-bs-original-title="" title="">
	                              </div>
	                            </form>									  
	                           </div>
	                          <div class="modal-footer">
	                            <button class="btn btn-primary" type="button" data-bs-dismiss="modal" data-bs-original-title="" title="">Cancel</button>
	                            <button class="btn btn-secondary" type="button" data-bs-original-title="" title="" id="withdrawalCoinProcessBtn" onclick="payCoinRequest();return false;">Submit</button>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
							</div>
						</div>

					</div>
				</div>
			</div>


			<!-- /.container-fluid -->

			<!-- /.content -->
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
		url : '/portal/fundmanager/ajax/m2payDepositRequest',
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
		url : "${pageContext.request.contextPath}/fundmanager/GetFundAccountBalance",
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

	

	function notready()
	{
		
		alert("The function will be ready soon.");
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

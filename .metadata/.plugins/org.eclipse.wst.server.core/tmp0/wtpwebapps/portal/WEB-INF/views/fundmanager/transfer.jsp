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
			<section class="content">
				<div class="container-fluid">

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Transfer Fund From Account to Withdrawal</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								<form>
								<div class="card-body ">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>Transfer From (MT5 Account Number)</label> <input type="number" id="fromlogin" name="fromlogin"
													class="form-control"
													placeholder="The account number which fund transfer from.">
													<p><span id="balance" style="color:green">Available Balance: 0.00 USD</span></p>
											</div>
											<div class="form-group">
												<label>Transfer To (MT5 Account Number)</label> <input type="number" id="tologin" name="tologin"
													class="form-control"
													placeholder="The account number which fund transfer to.">
													
											</div>
											
											<div class="form-group">
												<label>Transfer Amount (USD)</label> <input type="number"  id="money" name="money" class="form-control"
													placeholder="The amount to withdrawal." data-type="currency" value="0" disabled>
											</div>
											
											<!-- <div class="form-group">
												<label for="group">MT5 Account Groups </label> <select
													class="custom-select rounded-0" id="group">
												</select>
											</div> -->
											
										
											
										</div>
										
									</div>

								</div>
								
								</form>

								<div class="card-footer ">


									<button type="button" class="btn btn-primary float-right"
										style="margin-left: 5px" id="withdrawalbtn">Transfer</button>


								</div>






							</div>
							<!-- /.card-body -->
						</div>





						<!-- /.card -->
					</div>
				</div>
		
		<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>

	<div class="modal fade" id="modal-confirm" style="display: none;"
		aria-hidden="true">
		<div class="modal-dialog  modal-xl">
		
			<div class="modal-content">
			
				<div class="modal-header">
					<h4 class="modal-title">Transfer Confirmation</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body " id="printarea">
					<table id="modal-table" class="table table-sm">
						<thead>
							<tr>
								<th>Fields</th>
								<th>Informations</th>
							</tr>
						</thead>
						<tbody id="modal-table-body">
						</tbody>
					</table>

				</div>
				
				
				<div class="modal-footer justify-content-between">
					 <button id="confirmbtn" class="btn btn-primary "
							>Confirm</button> 


					<button type="button" class="btn btn-default" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Cancel</span>
					</button>


				</div>
			</div>

		</div>

	</div>


	<span id="jsonoutput"></span>
	<!-- /.content-wrapper -->
	<%@include file="inc/footer.jsp"%>
	
</body>
<script type="text/javascript">
var globaldata ;
var searchdata;

var newaccountinfo;
	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}

	
	const inputElement = document.getElementById('fromlogin');

	let timeout;

	inputElement.addEventListener("input", () => {
		
	  clearTimeout(timeout);
	  
	  if(document.getElementById("balance").innerHTML != '<i class="fas fa-sync fa-spin" style="color:grey"></i>')
		  {
		  document.getElementById("balance").innerHTML = '<i class="fas fa-sync fa-spin" style="color:grey"></i>';
		  }
	  
	  timeout = setTimeout(() => {
		  getaccountbalance(inputElement.value);
		  
	    console.log("finish");
	  }, 1000);
	});
	


	
	
	function fetchgroup()
	{ 
		$
		.ajax({
			url : "${pageContext.request.contextPath}/fundmanager/getgroup",
			type : 'get',
		    datatype : "application/json",
		    contentType: "application/json",
			async : false,
			data : '',
			success : function(data) {
				 const jobj = JSON.parse(data.result);
				  
				  const select = document.getElementById("group");
				  const options = jobj.answer;
				  options.forEach(option => {
					  const optionElement = document.createElement('option');
					  optionElement.value = option;
					  optionElement.textContent = option;
					  select.appendChild(optionElement);
					});
				 
				  console.log(jobj.answer);
				//  fetchgrouplogin( jobj.answer[0]);
				  	  
				  
					  	  
			},
			error : function(xhr, status) {
				console.log("ERROR : " + xhr + " : " + status);
				showloading(0);
				return;
			}
		});
		
		
	}fetchgroup();
	
	
	
	  
	document.getElementById("withdrawalbtn").addEventListener("click", function() {
		  // Code to be executed when the button is clicked
		   showloading(1);	  
		  if (checkInputs())
			  {
			  checkaccountgroup2(document.getElementById('fromlogin').value,document.getElementById('tologin').value);

			  }
		  else
			  {
			  showloading(0);
			  }
		});
	
	
	document.getElementById("confirmbtn").addEventListener("click", function() {
		  // Code to be executed when the button is clicked
		   showloading(1);	  
		  if (checkInputs())
			  {
			  confirmTransferBalance();

			  }
		  else
			  {
			  showloading(0);
			  }
		});
	  
	function checkInputs() {
		showloading(1);
		  var inputs = document.getElementsByTagName("input");
		  for (var i = 0; i < inputs.length; i++) {
		    if (inputs[i].value === "") {
		      alert("Please fill out all the necessary fields!");
		    
		      return false;
		    }
		  }
		 
		  return true;
		}
	
	
	
	
	function checkaccountgroup2(aid,bid)
	{  
		$
		.ajax({
			url :'${pageContext.request.contextPath}/fundmanager/CheckAccountAndGroup?id='+aid,
			type : 'get',
		    datatype : "application/json",
		    contentType: "application/json",
			async : true,
			data : "",
			success : function(data) {
				if (data.result.indexOf("0 Done" >= 0)) 
				{
					
					const jobj = JSON.parse(data.result);
			  		if(jobj.answer == true)
				  	{
			  			$
			  			.ajax({
			  				url :'${pageContext.request.contextPath}/fundmanager/CheckAccountAndGroup?id='+bid,
			  				type : 'get',
			  			    datatype : "application/json",
			  			    contentType: "application/json",
			  				async : true,
			  				data : "",
			  				success : function(data) {
			  					if (data.result.indexOf("0 Done" >= 0)) 
			  					{
			  						
			  						const jobj = JSON.parse(data.result);
			  				  		if(jobj.answer == true)
			  					  	{
			  				  			fetchAccountDetails(aid);
			  					  		$('#modal-confirm').modal('show');
			  					  	}
			  				 	 else
			  					 	{
			  					  		alert("the account number you key in is not match with the group you managed")
			  					  	}
			  				  		showloading(0);

			  					} else {
			  						
			  						console.log(data.result);
			  						showloading(0);
			  						return;
			  					}
			  				},
			  				error : function(xhr, status) {
			  					alert("ERROR : " + xhr + " : " + status);
			  					showloading(0);
			  					return;
			  				}
			  			});
				  	}
			 	 else
				 	{
				  		alert("the account number you key in is not match with the group you managed")
				  	}
			  		showloading(0);

				} else {
					
					console.log(data.result);
					showloading(0);
					return;
				}
			},
			error : function(xhr, status) {
				alert("ERROR : " + xhr + " : " + status);
				showloading(0);
				return;
			}
		});
		
	}
	
	
	function fetchAccountDetails(id)
	{ var url = '${pageContext.request.contextPath}/fundmanager/getAccountDetails?id='+id;
	
		fetch(url)
		  .then(response => response.json())
		  .then(data => {
			  const jobj = JSON.parse(data.result);
			 if(jobj.retcode.indexOf("0 Done")>=0)
				 {
				 jobj.answer.TransferAmount = document.getElementById("money").value;
				 console.log(JSON.stringify(jobj));
				  
				  loadmodaltable(JSON.stringify(jobj));
				  
				  $('#modal-confirm').modal('show');
				 }
			 else
				 {
				 alert(data.result)
				 }
			  
			  	  
			  
		 })
		  .catch(error => {alert(error)});
	}
	
	
	
	function getaccountbalance(id)
	{ var url = '${pageContext.request.contextPath}/fundmanager/GetTargetAccountBalance?id='+id;
	
		fetch(url)
		  .then(response => response.json())
		  .then(data => {
			  const jobj = JSON.parse(data.result);
			  console.log(data.result);
			 if(jobj.retcode.indexOf("0 Done")>=0)
				 {
				var balance  =  jobj.answer.Balance;
				document.getElementById("balance").innerHTML = "Available Balance:" +balance +" USD";
				document.getElementById("money").disabled = false;
				 
				 }
			 else
				 {
				 document.getElementById("balance").innerHTML = jobj.answer;
				 document.getElementById("money").disabled = true;
				 document.getElementById("money").value = 0;
				// alert(jobj.answer);
				 }
			  
			  	  
			  
		 })
		  .catch(error => {alert(error)});
	}
	
	
	
	
	 function loadmodaltable( data )
	  {
		  var jsonData =  JSON.parse(data);
		

	  const tableBody = document.getElementById('modal-table-body');
	  tableBody.innerHTML = '';

	  Object.entries(jsonData.answer).forEach(([key, value]) => {
		  
		  if((key == "Login" || key == "Group" || key == "Name"  ||key == "Phone" || key == "Email" ||key == "Agent"||key == "TransferAmount"  ) && value != "")
			{ const row = document.createElement('tr');
		
			  const keyCell = document.createElement('td');
			    keyCell.innerHTML = key;
			    row.appendChild(keyCell);
			    
			    const valueCell = document.createElement('td');
			    valueCell.innerHTML = value;
			    if((key == "TransferAmount"))
			    		{
			    	valueCell.innerHTML = valueCell.innerHTML +" USD"
			    	  valueCell.style.color = "red";
			    		}
			  
			    row.appendChild(valueCell);

			    tableBody.appendChild(row);
			    
			
	  

	    
	  }
		  });
	  
	  }
	 
	 
	 function confirmTransferBalance() {
		
		
			 
			$
					.ajax({
						url : "${pageContext.request.contextPath}/fundmanager/ConfirmTransferBalance",
						type : 'post',
					    datatype : "application/json",
					    contentType: "application/json",
						async : true,
						data : JSON.stringify(convertFormToJSON()),
						success : function(data) {
							
								const jobject = JSON.parse(data.result);
								console.log(jobject.retcode);
								if (jobject.retcode == "0 Done") {
									
									alert(jobject.answer)
									$('#modal-confirm').modal('hide');
									showloading(0);
									location.reload();
								}

							 else {
								
								alert(jobject.answer)
								showloading(0);
								return;
							}
						},
						error : function(xhr, status) {
							alert("ERROR : " + xhr + " : " + status);
							showloading(0);
							return;
						}
					});

			 
		 
		 }
	 
	 function convertFormToJSON() {
	        const array = $("form").serializeArray(); // Encodes the set of form elements as an array of names and values.
	        const json = {};
	        $.each(array, function () {
	          json[this.name] = this.value || "";
	        });
	       
	        
	       // json.Group = document.getElementById("group").options[document.getElementById("group").selectedIndex].text;
	        return json;
	      }
	 
	 
	 
	 
	 
	
</script>

<script>
        function printDiv(divId) {
        	 var mywindow = window.open('', 'PRINT', 'height=800,width=1200');

        	    mywindow.document.write('<html><head><title>' + document.title  + '</title>');
        	    mywindow.document.write('</head><body >');
        	    mywindow.document.write('<h3>' + document.title  + '</h3>');
        	    mywindow.document.write(document.getElementById(divId).innerHTML);
        	    mywindow.document.write('</body></html>');

        	    mywindow.document.close(); // necessary for IE >= 10
        	    mywindow.focus(); // necessary for IE >= 10*/

        	    mywindow.print();
        	    mywindow.close();

        	    return true;
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

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
									<h3 class="card-title">Edit Account</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								<form>
									<div class="card-body ">
										<div class="row">
											<div class="col-md-12">

												<div class="form-group">
													<label for="group">Account Number </label> <input
														type="text" disabled id="login" name="login"
														class="form-control" placeholder="The name of the client.">
												</div>
												<div class="form-group">
													<label for="group">Account Groups </label> <select
														class="custom-select rounded-0" id="group">


													</select>
												</div>
												<div class="form-group">
													<label>Name</label> <input type="text" id="Name"
														name="Name" class="form-control"
														placeholder="The name of the client.">
												</div>
												
											</div>

										</div>

									</div>

								</form>





								<div class="card-footer ">


									<button type="button" class="btn btn-primary float-right"
										style="margin-left: 5px" id="createbtn">Apply</button>


								</div>






							</div>
							<!-- /.card-body -->
						</div>
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Change Master Password</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								
									<div class="card-body ">
										<div class="row">
											<div class="col-md-12">

												
												<div class="form-group">
													<label>Master Password</label> <input type="password"
														id="MasterPassword" name="MasterPassword"
														class="form-control" placeholder="The Master Password.">
												</div>

												



											</div>

										</div>

									</div>

							





								<div class="card-footer ">


									<button type="button" class="btn btn-primary float-right"
										style="margin-left: 5px" id="changepasswordMbtn" onclick="changepwd('m')">Change Master Password</button>


								</div>






							</div>
							<!-- /.card-body -->
						</div>

<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Change Read Only Password</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								
									<div class="card-body ">
										<div class="row">
											<div class="col-md-12">

												
												
												<div class="form-group">
													<label>ReadOnly Password</label> <input type="password"
														class="form-control" id="ReadOnlyPassword"
														name="ReadOnlyPassword"
														"
													placeholder="The ReadOnly Password.">
												</div>



											</div>

										</div>

									</div>

							





								<div class="card-footer ">


									<button type="button" class="btn btn-primary float-right"
										style="margin-left: 5px" id="changepasswordIbtn" onclick="changepwd('i')">Change Only Password
 Password</button>


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
						<h4 class="modal-title">Trading Account Details</h4>
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
							onclick="printDiv('printarea')">Print</button>


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


window.onload = searchpara;

function searchpara()
{
	showloading(1);
	
	const queryString = window.location.search;
	const urlParams = new URLSearchParams(queryString);
	
	if(urlParams.has('id'))
	{
	const id = urlParams.get('id');
	var url = '${pageContext.request.contextPath}/fundmanager/CheckAccountAndGroup?id='+id;

	fetch(url)
	  .then(response => response.json())
	  .then(data => {
		  console.log(data);
		  const jobj = JSON.parse(data.result);
		  if(jobj.retcode.indexOf("0 Done")>=0)
			  {
			  if(!jobj.answer)
			  {
				  alert("invalid account or no permission to edit, redirecting back to Group Account List");
					window.location.href = "${pageContext.request.contextPath}/fundmanager/AccountList";
			  }
			  else
				  {
				  fetchAccountDetails(id);
					showloading(0);
				  }
			  }
		  else
			  {
			  alert("invalid account or no permission to edit, redirecting back to Group Account List");
				window.location.href = "${pageContext.request.contextPath}/fundmanager/AccountList";
			  }
		  
			  
		  
		  
		  
	 })
	  .catch(error => {alert(error);
	  alert("Some error occur, redirecting back to Group Account List");
		window.location.href = "${pageContext.request.contextPath}/fundmanager/AccountList";
		});
	}
else
	{
	alert("invalid account or no permission to edit, redirecting back to Group Account List");
	window.location.href = "${pageContext.request.contextPath}/fundmanager/AccountList";
	}
	
	
	
	
}



var globaldata ;
var searchdata;

var newaccountinfo;
	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}

	

	

	function fetchgroup( group)
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
				  
				  const optionElement = document.createElement('option');
				  optionElement.value = "";
				  optionElement.textContent = "=== Select Group ====";
				  select.appendChild(optionElement);
				  
				  
				  options.forEach(option => {
					  const optionElement = document.createElement('option');
					  optionElement.value = option.value;
					  optionElement.textContent = option.name;
					  select.appendChild(optionElement);
					});
				 
				  console.log(jobj.answer);
				  
				  const $select = document.querySelector('#group');
				  $select.value = group;
				  
				  if(group.indexOf("Master")>=0 || group.indexOf("master")>=0)
					  {
					  document.getElementById("group").disabled = true;
					  }
				  
				
					  	  
			},
			error : function(xhr, status) {
				console.log("ERROR : " + xhr + " : " + status);
				showloading(0);
				return;
			}
		});
		
		
		
	}//fetchgroup();
	
	
	function fetchAccountDetails(id)
	{ var urla = '${pageContext.request.contextPath}/fundmanager/getAccountDetails?id='+id;		
		$ .ajax({
			url : urla,
			type : 'get',
		    datatype : "application/json",
		    contentType: "application/json",
			async : false,
			data : '',
			success : function(data) {
				  console.log(data);
				  
				  const jobj = JSON.parse(data.result);
				  document.getElementById("Name").value = jobj.answer.Name;
				  document.getElementById("login").value = jobj.answer.Login;
				 
					  
				  //loadmodaltable(data.result);
				  
				  //$('#modal-confirm').modal('show');
				  	  fetchgroup( jobj.answer.Group);
			},
	  
		error : function(xhr, status) {
			alert("ERROR : " + xhr + " : " + status);
			showloading(0);
			return;
		}
	});
		
		
	}
	
	  
	document.getElementById("createbtn").addEventListener("click", function() {
		  // Code to be executed when the button is clicked
		   showloading(1);
		 
			 
			  //fetchAccountDetails("2002");
			  createaccount()
			  showloading(0);
			  
		});
	  
	function checkInputs() {
		  var inputs = document.getElementsByTagName("input");
		  for (var i = 0; i < inputs.length; i++) {
		    if (inputs[i].value === "") {
		      alert("Please fill out all the necessary fields!");
		      return false;
		    }
		  }
		  return true;
		}
	
	
	
	
	
	
	 function loadmodaltable( data )
	  {
		  var jsonData =  JSON.parse(data);
		

	  const tableBody = document.getElementById('modal-table-body');
	  tableBody.innerHTML = '';

	  Object.entries(jsonData.answer).forEach(([key, value]) => {
		  
		  if(key != "ApiData" && value != "")
			{ const row = document.createElement('tr');
		
			  const keyCell = document.createElement('td');
			    keyCell.innerHTML = key;
			    row.appendChild(keyCell);
			    
			    const valueCell = document.createElement('td');
			    valueCell.innerHTML = value;
			    row.appendChild(valueCell);

			    tableBody.appendChild(row);
			    
			
	  

	    
	  }
		  });
	  
	  }
	 
	 
	 function createaccount() {
		
		 if(document.getElementById("group").options[document.getElementById("group").selectedIndex].text != "*")
			 {
			 
			
			 
			 
			$
					.ajax({
						url : "${pageContext.request.contextPath}/fundmanager/ConfirmEditAccount",
						type : 'post',
					    datatype : "application/json",
					    contentType: "application/json",
						async : true,
						data : JSON.stringify(convertFormToJSON()),
						success : function(data) {
							if (data.result.indexOf("retcode" >= 0)) {
								const jobject = JSON.parse(data.result);
								if(jobject.retcode.indexOf("0 Done")>=0)
									{
									console.log(data.result);
									
									console.log(jobject.retcode);
									if (jobject.retcode == "0 Done") {
										//loadmodaltable(data.result);
										console.log(data.result);
										showloading(0);
										alert("Success Edit The Account.");
										//$('#modal-confirm').modal('show');
										location.reload();
									}else
									{
										alert("Something Wrong Please Try Again Later.");
										}
									}
								
								

							 else {
								 alert("Something Wrong Please Try Again Later.");
								console.log("ERROR : " + data.result);
								showloading(0);
								return;
							}
							}
						},
						error : function(xhr, status) {
							alert("ERROR : " + xhr.responseText + " : " + status);
							console.log("ERROR : " + xhr.responseText + " : " + status);
							showloading(0);
							return;
						}
					});

				 }
		 else
			 {
			 alert("please select account group other than (*)")
			 }
		 
		 }
	 
	 
	 
	 function changepwd(type) {
		 var which ="";
		 if (type == "m")
			 {
			 which="MasterPassword";
			 }
		 
		 if (type == "i")
		 {
		 which="ReadOnlyPassword";
		 }
		 
		 
		console.log(which);
			 if(checkPasswordStrength(document.getElementById(which).value))
				 {
				 
				 const  jobj = {};
				  jobj.id = document.getElementById("login").value;
				  jobj.p = document.getElementById(which).value;
				  jobj.type = type;
				 console.log(jobj);

			 
			$
					.ajax({
						url : "${pageContext.request.contextPath}/fundmanager/ConfirmChangePassword",
						type : 'post',
					    datatype : "application/json",
					    contentType: "application/json",
						async : true,
						data : JSON.stringify(jobj),
						success : function(data) {
							if (data.result.indexOf("retcode" >= 0)) {
								const jobject = JSON.parse(data.result);
								if(jobject.retcode.indexOf("0 Done")>=0)
									{
									console.log(data.result);	
										showloading(0);
										alert("success change the password");
									}
								else
									{
									alert(jobject.answer);
									}
							}	

							 else {
								
								console.log("ERROR : " + data.result);
								showloading(0);
								return;
							}
							
						},
						error : function(xhr, status) {
							alert("ERROR : " + xhr.responseText + " : " + status);
							console.log("ERROR : " + xhr.responseText + " : " + status);
							showloading(0);
							return;
						}
					});

				 }
				 else
					 {
					 showloading(0);
					 }
			 }
			
	 
	 
	 function convertFormToJSON() {
	        const array = $("form").serializeArray(); // Encodes the set of form elements as an array of names and values.
	        const json = {};
	        $.each(array, function () {
	          json[this.name] = this.value || "";
	        });
	       
	        
	        json.Group = document.getElementById("group").options[document.getElementById("group").selectedIndex].value;
	        json.login = document.getElementById("login").value;
	        return json;
	      }
	 
	 
	 function checkPasswordStrength(password) {
		  // Initialize variables
		  var strength = 0;
		  var tips = "Password not meet requirement, Minimum password length is 8 character with lowercase,uppercase,at least one number and one special character";

		  // Check password length
		  if (password.length < 8) {
		   
		  } else {
		    strength += 1;
		  }

		  // Check for mixed case
		  if (password.match(/[a-z]/) && password.match(/[A-Z]/)) {
		    strength += 1;
		  } else {
		   
		  }

		  // Check for numbers
		  if (password.match(/\d/)) {
		    strength += 1;
		  } else {
		    
		  }

		  // Check for special characters
		  if (password.match(/[^a-zA-Z\d]/)) {
		    strength += 1;
		  } else {
		   
		  }

		  // Return results
		  if(strength <4)
			  {
			  alert(tips);
			  }
		  if(strength ==4)
			  {
			  return true;
			  }
		  else
			  {
			  return false;
			  }
		  
		  
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

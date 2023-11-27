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
									<h3 class="card-title">Create an Account</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								<form>
									<div class="card-body ">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="group">Account Groups </label> <select
														class="custom-select rounded-0" id="group">



														<c:forEach items="${ fmgroup }" var="listinfo"
															varStatus="status">
															<option value="${ listinfo.group}">${listinfo.title}</option>
														</c:forEach>


													</select>
												</div>
												<div class="form-group">
													<label>Name</label> <input type="text" id="Name"
														name="Name" class="form-control"
														placeholder="The name of the client.">
												</div>
												<div class="form-group">
													<label>Master Password</label> <input type="password"
														id="MasterPassword" name="MasterPassword"
														class="form-control" placeholder="The Master Password.">
												</div>

												<div class="form-group">
													<label>ReadOnly Password</label> <input type="password"
														class="form-control" id="ReadOnlyPassword"
														name="ReadOnlyPassword"
														"
													placeholder="The ReadOnly Password.">
													<code>*note: ReadOnly Password must be different
														than Master Password.</code>
												</div>
												<div class="form-group">
													<label>Web Password</label> <input type="password"
														class="form-control" id="WebPassword" name="WebPassword"
														"
													placeholder="The Web Password.">
													<code>*note: Web Password is for client to login
														into Web system.</code>
												</div>


											</div>

										</div>

									</div>

								</form>

								<div class="card-footer ">


									<button type="button" class="btn btn-primary float-right"
										style="margin-left: 5px" id="createbtn">Create
										Account</button>


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
var globaldata ;
var searchdata;

var newaccountinfo;
	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}

	
function checkmasterandreadonly()
{
	
	
	const MasterPassword = document.getElementById('MasterPassword');
	const ReadOnlyPassword = document.getElementById('ReadOnlyPassword');
	
	if (MasterPassword.value === ReadOnlyPassword.value) {
		  console.log('Passwords match!');
		  return true;
		} else {
		  console.log('Passwords do not match.');
		  return false;
		}
	
	}
	


	
	
	
	
	
	
	  
	document.getElementById("createbtn").addEventListener("click", function() {
		  // Code to be executed when the button is clicked
		   showloading(1);
		  if (checkInputs())
			  {
			 
			  //fetchAccountDetails("2002");
			  
			  if(!checkmasterandreadonly())
				  {
				  createaccount();
				  }
			  else
				  {
				  
				  alert("Sorry, Master Password cannot same with Read Only password, please changed to different password.");
				  showloading(0);
				  }
			  
			 
			  }
		  else
			  {
			  showloading(0);
			  }
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
	
	
	
	function fetchAccountDetails(id)
	{ var url = '${pageContext.request.contextPath}/fundmanager/getAccountDetails?id='+id;
	
		fetch(url)
		  .then(response => response.json())
		  .then(data => {
			 /* const jobj = JSON.parse(data.result);
			  
			  const select = document.getElementById("group");
			  const options = jobj.answer;
			  options.forEach(option => {
				  const optionElement = document.createElement('option');
				  optionElement.value = option;
				  optionElement.textContent = option;
				  select.appendChild(optionElement);
				});
			 
			  console.log(jobj.answer);
			  fetchgrouplogin( jobj.answer[0]);*/
			  console.log(data);
			  
			  loadmodaltable(data.result);
			  
			  $('#modal-confirm').modal('show');
			  	  
			  
		 })
		  .catch(error => {alert(error)});
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
						url : "${pageContext.request.contextPath}/fundmanager/ConfirmCreateAccount",
						type : 'post',
					    datatype : "application/json",
					    contentType: "application/json",
						async : true,
						data : JSON.stringify(convertFormToJSON()),
						success : function(data) {
							if (data.result.indexOf("0 Done" >= 0)) {
								console.log(data.result);
								const jobject = JSON.parse(data.result);
								console.log(jobject.retcode);
								if (jobject.retcode == "0 Done") {
									//loadmodaltable(data.result);
									console.log(data.result);
									showloading(0);
									alert("Success create account.")
									//$('#modal-confirm').modal('show');
									window.location.href = "${pageContext.request.contextPath}/fundmanager/AccountList?group="+document.getElementById("group").options[document.getElementById("group").selectedIndex].value.replace(/\\/g, "-");;
								}
								else
									{
									showloading(0);
									alert(jobject.retcode);
									}

							} else {
								
								console.log("Error: "+data.result);
								alert(data.result.toString())
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
			 alert("please select account group other than (*)")
			 }
		 
		 }
	 
	 function convertFormToJSON() {
	        const array = $("form").serializeArray(); // Encodes the set of form elements as an array of names and values.
	        const json = {};
	        $.each(array, function () {
	          json[this.name] = this.value || "";
	        });
	       
	        
	        json.Group = document.getElementById("group").options[document.getElementById("group").selectedIndex].value;
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

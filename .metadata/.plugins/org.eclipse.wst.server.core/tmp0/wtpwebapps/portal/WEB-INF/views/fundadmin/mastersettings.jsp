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
									<h3 class="card-title">Add Master Manager</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								<form>
									<div class="card-body ">
										<div class="row">
											<div class="col-md-12">

												<div class="form-group">
													<label>Manually Sync Master Rates:</label> 
													<br>	<button type="button" class="btn btn-primary"
										style="margin-left: 5px" id="createbtn" onclick="syncrate()">Sync</button>
												</div>

											</div>
											
										</div>

									</div>

								</form>

								<div class="card-footer">
Note : In order to sync the master rate 24 hours once or any period, call this  <a href="${pageContext.request.contextPath}/fundadmin/schedule/updateallmasterrate?key=77365D8686912BFBE927EC9579715">Web API</a> using GET periodically using windows services or others. 
<br>
 <p>API URL:  <code>${pageContext.request.contextPath}/fundadmin/schedule/updateallmasterrate?key=77365D8686912BFBE927EC9579715</code></p>


</div>





							</div>
							<!-- /.card-body -->
						</div>





						<!-- /.card -->
					</div>
					
					
<div class="row">
						<div class="col-12" id="rateDiv" style="display:none">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Active Master Rate</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								<form>
									<div class="card-body ">
										<div class="row">
											
											<div class="card-body table-responsive p-0">
									<table class="table table-hover text-nowrap" id="datatable">
										<thead>
											<tr>

											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>
										</div>

									</div>

								</form>

								<div class="card-footer ">


									


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




		<span id="jsonoutput"></span>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
<script type="text/javascript">

function convertUnixtoLocalTime(unixTimestamp) {
	var dateObject = new Date(unixTimestamp * 1000)
	var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
	return convertedTime;
}


	
	
	
	function syncrate()
	
	{
		
		document.getElementById("createbtn").innerHTML ='<i class="fa fa-spinner fa-spin"></i>';
		$
		.ajax({
			url : "${pageContext.request.contextPath}/fundadmin/schedule/updateallmasterrate",
			type : 'get',
		    datatype : "application/json",
		    contentType: "application/json",
			async : true,
			data : '',
			success : function(data) {
				  const jobj = JSON.parse(data.result);
				  if(jobj.retcode.indexOf("0 Done")>=0)
			{
					  console.log(jobj.answer.desc);
					  document.getElementById("createbtn").innerHTML ='Sync';
					  
					  insertTableRowWithAllColumn("datatable", jobj.answer);
					  document.getElementById("rateDiv").style.display = "";
					  
					  
					  
					  }
			else
				{
				  alert(jobj.answer.desc);
				  document.getElementById("createbtn").innerHTML ='Sync';
				}
				  
				  	  
			},
			error : function(xhr, status) {
				console.log("ERROR : " + xhr + " : " + status);
				 document.getElementById("createbtn").innerHTML ='Sync';
				return;
			}
		});
		
		
	}
	
	
	
	  
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
	 
	
		function insertTableRowWithAllColumn(tableid, array) {
			document.getElementById(tableid).innerHTML = '<thead><tr></tr></thead> <tbody></tbody>';

			let header = Object.keys(array[0]);
			for (let i = 0; i < header.length; i++) {
				var tr = document.getElementById(tableid).tHead.children[0], th = document
						.createElement('th');
				th.innerHTML = header[i];
				tr.appendChild(th);
			}
			for (let i = array.length - 1; i >= 0; i--) {
				console.log("inserttablerow");
				console.log(Object.keys(array[i]).length);
				var table = document.getElementById("datatable");
				var row = table.insertRow(1);

				let keylength = Object.keys(array[0]).length - 1;
				for (let j = 0; j < Object.keys(array[i]).length; j++) {
					
					var cell = row.insertCell(0);
					cell.innerHTML = Object.values(array[i])[keylength - j]
							.toString();
				}

			}

		}
	
			
			
	
</script>

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

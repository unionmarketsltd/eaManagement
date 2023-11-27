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
					<div class="form-group" style="display:none">
						<label for="managergroupselect">Manager Groups </label> <select
							class="custom-select rounded-0" id="managergroupselect">

						</select>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">New Request Fund Manager List</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body table-responsive p-0">
									<table class="table table-hover text-nowrap" id="datatable">
										<thead>
											<tr>
												<th>#</th>
												<th>Fund Manager / Client</th>
												<th>Name</th>
												<th>Client ID</th>
												<th>Latest Topic Create Date</th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>

								<div class="card-footer ">

									<div class="row">

										<div class="col-md-6">
											
										</div>
										<div class="col-md-6">
											<button type="button" class="btn btn-primary float-right"
												style="margin-left: 5px" id="next-button">Next</button>
											<button type="button" class="btn btn-primary float-right"
												id="previous-button">Previous</button>
										</div>
									</div>






								</div>
								<!-- /.card-body -->
							</div>





							<!-- /.card -->
						</div>
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
						<h4 class="modal-title">Account Details</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
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
						<!-- <button id="confirmbtn" class="btn btn-primary "
							onclick="createaccount()">Confirm and create trading
							account for this client</button> -->


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
		<form action="" name="accountListFrm" id="accountListFrm" method="get">
			<input type="hidden" id="login" name="login" value="<%=s_Login%>">
		</form>
</body>
<script type="text/javascript">

function convertUnixtoLocalTime(unixTimestamp) {
	var dateObject = new Date(unixTimestamp * 1000)
	var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
	return convertedTime;
}

function CScheck()
{
	$
	.ajax({
		url : '${pageContext.request.contextPath}/fundadmin/isCS',
		type : 'get',
		async : true,
		data : '',
		success : function(data) {
			if (data.result.indexOf("0 Done" >= 0)) {
				const jobject = JSON.parse(data.result);
				if(jobject.answer == false)
					{
					window.location.href = "${pageContext.request.contextPath}/fundadmin/index";
					}

			} else {
				alert(data.result);
				console.log(data.result);
				return;
			}
		},
		error : function(xhr, status) {
			alert("ERROR : " + xhr + " : " + status);
			return;
		}
	});
}CScheck();



var globaldata ;
var searchdata;
	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}

	

	

	
	  
	  function fetchgrouppositions( )
	  {
		  showloading(1);
		  var urla = '${pageContext.request.contextPath}/fundadmin/CustomerServicesGetCommentUser';
		  
		 $ .ajax({
				url : urla,
				type : 'get',
			    datatype : "application/json",
			    contentType: "application/json",
				async : true,
				data : '',
				success : function(data) {
					
					    const jobj = JSON.parse(data.result);
					    console.log(data.result);
					    if(jobj.retcode.indexOf("0 Done")>=0)
					    	{
					    	const obj = jobj.answer[0].Text.New;
					    	console.log("here"+JSON.stringify(obj));
					    	 globaldata = obj;
					    	renderTable(globaldata);
   
						/*   console.log(answer.CommentConfiguration);
						   if(answer.CommentConfiguration.length >0)
							   {
							   renderTable(answer.CommentConfiguration);
							   }
						    
						    console.log(answer.CommentConfiguration);
					    	
					    	*/
					    	
					    	}
					   
					    showloading(0); 
				},
		  
			error : function(xhr, status) {
				alert("ERROR : " + xhr + " : " + status);
				showloading(0);
				return;
			}
		});
		
		  
	  }fetchgrouppositions()
	  
	  
	  
	  
	 
	  
	 
	  


		const tableBody = document.getElementById('datatable').children[1];
		const previousPageButton = document.getElementById('previous-button');
		const nextPageButton = document.getElementById('next-button');

		const itemsPerPage = 15;
		let currentPage = 0;

		function renderTable( data) {
		  tableBody.innerHTML = '';

		  const startIndex = currentPage * itemsPerPage;
		  const endIndex = startIndex + itemsPerPage;
		  const pageData = data.slice(startIndex, endIndex);
			var numberrow = startIndex+1;
		  pageData.forEach(row => {
			  
		    const tableRow = document.createElement('tr');
		   
		    
		    const column0Data = document.createElement('td');
		    column0Data.innerHTML = numberrow+".";
		    numberrow++;
		    tableRow.appendChild(column0Data);
		    
		    
		    const column1Data = document.createElement('td');
		    column1Data.innerHTML = row.FM;
		    tableRow.appendChild(column1Data);
		    
		    const column4Data = document.createElement('td');
		    column4Data.innerHTML = row.Name;
		    tableRow.appendChild(column4Data);
		    
		    const column2Data = document.createElement('td');
		    column2Data.innerHTML = row.C;
		    tableRow.appendChild(column2Data);
		    
		    const column3Data = document.createElement('td');
		    column3Data.innerHTML = convertUnixtoLocalTime(row.D);
		    tableRow.appendChild(column3Data);
		    
		    

		    tableBody.appendChild(tableRow);
		  });
		  
		  
		  document.getElementById('pagenumber').innerHTML = "Showing "+((currentPage*itemsPerPage)+1) +'-' +((currentPage*itemsPerPage)+itemsPerPage) +' of '+ data.length;
		  sortTable1();
		}
		
		
		function sortTable1() {
			  var table, rows, switching, i, x, y, shouldSwitch;
			  table = document.getElementById("datatable");
			  switching = true;
			  /* Make a loop that will continue until
			  no switching has been done: */
			  while (switching) {
			    switching = false;
			    rows = table.rows;
			    /* Loop through all table rows (except the
			    first, which contains table headers): */
			    for (i = 1; i < (rows.length - 1); i++) {
			      shouldSwitch = false;
			      /* Get the two elements you want to compare,
			      one from current row and one from the next: */
			      x = rows[i].getElementsByTagName("TD")[3];
			      y = rows[i + 1].getElementsByTagName("TD")[3];
			      /* Check if the two rows should switch place,
			      based on the direction, asc or desc: */
			      if (new Date(x.innerHTML) < new Date(y.innerHTML)) {
			        // If the date of the current row is less than the date of the next row
			        // set shouldSwitch to true and break out of the loop
			        shouldSwitch = true;
			        break;
			      }
			    }
			    if (shouldSwitch) {
			      /* If a switch has been marked, make the switch
			      and mark the switch as done: */
			      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
			      switching = true;
			    }
			  }
			}
	
		
		

		previousPageButton.addEventListener('click', () => {
			
		  if (currentPage > 0) {
		    currentPage -= 1;
		    if(document.getElementById('searchword').value.length>0)
		    	{
		    	renderTable(searchdata);
		    	}
		    else
		    	{
		    	renderTable(globaldata);
		    	}
		    
		    
		  }
		});

		nextPageButton.addEventListener('click', () => {
			
			if(document.getElementById('searchword').value.length==0)
	    	{
				if (currentPage < Math.ceil(globaldata.length / itemsPerPage) - 1) {
				    currentPage += 1;
				    renderTable(globaldata);
				}
	    	}
				else
					{
					if (currentPage < Math.ceil(searchdata.length / itemsPerPage) - 1) {
					    currentPage += 1;
					    renderTable(searchdata);
					}
					}
		
		});

	
		
		
		
		var tableclick = document.querySelector("#datatable tbody");

		tableclick.addEventListener("click", function(event) {
		  if (event.target.nodeName === "TD") {
		    const row = event.target.parentNode;
		   // alert("You clicked on row: " + row.children[0].innerHTML);
		    redirecttotopic(row.children[3].innerHTML,row.children[1].innerHTML);
		    
		  }
		});
		
		
		function redirecttotopic(id,fm)
		{ var url = '${pageContext.request.contextPath}/fundadmin/viewCustomerTopic?tab=new&id='+id+'&fm='+fm;
		window.location.href = url;
			
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
		
		 
		 document.getElementById('searchword').addEventListener('input', inputHandler);
		 function inputHandler()
		 { currentPage = 0;
			 console.log(searchData(document.getElementById('searchword').value));
			 searchdata = searchData(document.getElementById('searchword').value);
			 renderTable(searchdata);
		 }
		 
		 function searchData(searchTerm) {
			  return globaldata.filter(item => item.includes(searchTerm));
			}
		
		renderTable(globaldata);
	
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

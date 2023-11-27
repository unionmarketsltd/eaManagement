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

#datatable tr > *:nth-child(2) {
			    display: none;
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
									<h3 class="card-title" id="titlea">Customer Opened Topics</h3>
									
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
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

								<div class="card-footer ">

									<div class="row">

										<div class="col-md-6">
											<!--  <input type="text" class="form-control" id="searchword"
												placeholder="Search Logins">-->
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

function CScheck()
{
	$
	.ajax({
		url : '${pageContext.request.contextPath}/fundmanager/isCS',
		type : 'get',
		async : true,
		data : '',
		success : function(data) {
			if (data.result.indexOf("0 Done" >= 0)) {
				const jobject = JSON.parse(data.result);
				if(jobject.answer == false)
					{
					window.location.href = "${pageContext.request.contextPath}/fundmanager/index";
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

	
	  const queryString = window.location.search;
	  const urlParams = new URLSearchParams(queryString);
	  const id = urlParams.get('id');
	  const fm = urlParams.get('fm');

	
	
	
	  
	  
	  function fetchgrouppositions()
	  {
		
		  document.getElementById('titlea').innerHTML = "Fund Managers ( "+fm+" ) Topics" ;
		  showloading(1);
		  var urla = '${pageContext.request.contextPath}/fundmanager/FundConfugurationCommentJSONByClientID?id='+id;
		  
		  
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
					    globaldata = jobj.answer;
					    
					   var answer = JSON.parse(globaldata);
					   console.log(answer.CommentConfiguration);
					   if(answer.CommentConfiguration.length >0)
						   {
						   answer.CommentConfiguration = answer.CommentConfiguration.filter(function(item) {
							    return item.Status !== "Closed";
							});
						   renderTable(answer.CommentConfiguration);
						   }
					    
					    console.log(answer.CommentConfiguration);
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
		  document.getElementById('datatable').innerHTML = '<thead><tr></tr></thead><tbody></tbody>';
		  document.getElementById('pagenumber').innerHTML = "Showing "+((currentPage*itemsPerPage)+1) +'-' +((currentPage*itemsPerPage)+itemsPerPage) +' of '+ data.length;
		  const startIndex = currentPage * itemsPerPage;
		  const endIndex = startIndex + itemsPerPage;
		  const pageData = data.slice(startIndex, endIndex);
			var numberrow = startIndex+1;
			insertTableRowWithSelectedColumn("datatable", pageData,
					true);
		  
		  sortTable();
		 
		}

		previousPageButton.addEventListener('click', () => {
			
		  if (currentPage > 0) {
		    currentPage -= 1;
		    
		    	renderTable(globaldata);
		    
		    
		    
		  }
		});

		nextPageButton.addEventListener('click', () => {
				if (currentPage < Math.ceil(globaldata.length / itemsPerPage) - 1) {
				    currentPage += 1;
				    renderTable(globaldata);
				}
		});

	
		
		
		
		var tableclick = document.querySelector("#datatable tbody");

		tableclick.addEventListener("click", function(event) {
		  if (event.target.nodeName === "TD") {
		    const row = event.target.parentNode;
		   // alert("You clicked on row: " + row.children[0].innerHTML);
		    fetchAccountDetails(row.children[1].innerHTML);
		    
		  }
		});
		
		
		function fetchAccountDetails(id)
		{ var url = '${pageContext.request.contextPath}/fundmanager/getAccountDetails?id='+id;
		
			fetch(url)
			  .then(response => response.json())
			  .then(data => {
				 /* const jobj = JSON.parse(data.result);
				  
				  const select = document.getElementById("managergroupselect");
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
		
		 
		
		

			function convertwhoreplied(bs)
			{
				if( bs == "0" )
					{
					return '<span class="right badge badge-danger">Customer Replied</span>';
					}
				else
					{
					return '<span class="right badge badge-info">Agent Replied</span>';
					}
			}
			
			function isloss(pf)
			{ if(pf.indexOf('-')>=0)
				{
				 return true
				}
			else
				{
				return false;
				}
				
			}
				
				
				
				function insertTableRowWithSelectedColumn(tableid, array,
						enableButtonAction) {
					const fieldtoshow = [ "Title", "Status", "Section", "CreateDate","index","Isreply"];
					var fieldIndex = [];

					let header = Object.keys(array[0]);

					for (let i = 0; i < header.length; i++) {

						for (let j = 0; j < fieldtoshow.length; j++) {
							if (header[i] === fieldtoshow[j]) {

								fieldIndex.push(i);
								var tr = document.getElementById(tableid).tHead.children[0], th = document
										.createElement('th');
								if(header[i] == "Isreply"){
									th.innerHTML = "Latest";
								}
								else
									{
									th.innerHTML = header[i];
									}
										
										
								
								tr.appendChild(th);
							}

						}

					}

					if (enableButtonAction) // add edit button
					{
						var tr = document.getElementById(tableid).tHead.children[0], th = document
								.createElement('th');
						th.innerHTML = "Action";
						tr.appendChild(th);

					}

					for (let i = array.length - 1; i >= 0; i--) {
						console.log("inserttablerow");
						console.log(Object.keys(array[i]).length);
						var table = document.getElementById("datatable");
						var row = table.insertRow(1);

						let keylength = fieldIndex.length - 1;
						for (let j = 0; j < fieldIndex.length; j++) {
							var cell = row.insertCell(0);

							if (header[fieldIndex[keylength - j]] === "CreateDate") //datetimeconvert
							{
								cell.innerHTML = convertUnixtoLocalTime(Object
										.values(array[i])[fieldIndex[keylength - j]]
										.toString());
							}
							
							
							else if (header[fieldIndex[keylength - j]] === "Action") //datetimeconvert
							{
								cell.innerHTML = convertbuysell(Object
										.values(array[i])[fieldIndex[keylength - j]]
										.toString());
							} 
							
							else if (header[fieldIndex[keylength - j]] === "Isreply") //datetimeconvert
							{
								cell.innerHTML = convertwhoreplied(Object
										.values(array[i])[fieldIndex[keylength - j]]
										.toString());
								
							} 
							
							
							else {
								cell.innerHTML = Object.values(array[i])[fieldIndex[keylength
										- j]].toString();
							}
							
							
							
							

						}

						if (enableButtonAction) {
							var index = document.getElementById(tableid).rows[1].cells[2].innerHTML;
							var title = document.getElementById(tableid).rows[1].cells[1].innerHTML;
							var status = document.getElementById(tableid).rows[1].cells[0].innerHTML;
							var cell = row.insertCell(fieldIndex.length);
							cell.innerHTML = "<a href='viewCustomerTopicComment?tab=all&clientID="+id+"&index=" + index+"&title="+title+"&status="+status
									+ "' class='btn btn-default'>View</a>";
						}

					}
					
					

					$(function() {
						jQuery.each($("table tr"), function() {
							$(this).children(":eq(2)").after($(this).children(":eq(0)")); // rearange col 2 to 1
						});
					
					
					
					
						
					});
					
					
					
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

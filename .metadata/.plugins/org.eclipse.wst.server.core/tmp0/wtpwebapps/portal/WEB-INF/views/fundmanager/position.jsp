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
					<!-- <div class="form-group">
						<label for="managergroupselect">Manager Groups </label> <select
							class="custom-select rounded-0" id="managergroupselect">

						</select>
					</div> -->
					
					<div class="form-group">
						<label for="login">Trading Account number </label>
						<div class="input-group ">
							<input type="number" id="login" class="form-control"> <span
								class="input-group-append">
								<button type="button" class="btn btn-primary btn-flat" onclick="search()">Search</button>
							</span>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card" id="tablediv" style="display:none">
								<div class="card-header">
									<h3 class="card-title">Trading Account</h3>
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


window.onload = searchpara;

function searchpara()
{
	const queryString = window.location.search;
	const urlParams = new URLSearchParams(queryString);
	if(urlParams.has('id'))
		{
		const id = urlParams.get('id');
		document.getElementById("login").value = id;
		search();
		
		}
	
}
var globaldata ;
var searchdata;
	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}

	

	

	
	  
	  function search()
	  {
	  	  var loginacc = document.getElementById("login").value;
	  	   if(loginacc!=null && loginacc != "")
		  {
			  fetchgrouppositions( loginacc);
			  }
	  	  //
	  }
	  
	  function fetchgrouppositions( inputlogin)
	  {    showloading(1);
		  var url = '${pageContext.request.contextPath}/fundmanager/getLoginTradingPositions';
		  
		  fetch(url, {
			  method: 'POST',
			  headers: {
			    'Content-Type': 'application/json'
			  },
			  body: JSON.stringify({
			    login: inputlogin
			  })
			})
			  .then(response => response.json())
			  .then(data => {
			    console.log(data);
			    const jobj = JSON.parse(data.result);
			    if(jobj.answer.length>0)
		    	{
		    	document.getElementById("tablediv").style.display="";
		    	globaldata = jobj.answer;
		    	
		    	 globaldata.sort(function(a, b) {
					    return b.TimeCreate - a.TimeCreate;
					  });
				    
		    	 
		    	 
			    renderTable(globaldata);
		    	}
		    else
		    	{
		    	document.getElementById("tablediv").style.display="none";
		    	alert("This account do not have any positions.")
		    	}
			    showloading(0);
			  })
			  .catch(error => {
			    // handle the error
			  });
		  
	  }
	  
	 
	  


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
					false);
		  
		  
		 
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
		 $(document).keyup(function (e) {
			    if ($(".input1:focus") && (e.keyCode === 13)) {
			    	search();
			    }
			 });
		 
		/* document.getElementById('searchword').addEventListener('input', inputHandler);
		 function inputHandler()
		 { currentPage = 0;
			 console.log(searchData(document.getElementById('searchword').value));
			 searchdata = searchData(document.getElementById('searchword').value);
			 renderTable(searchdata);
		 }
		 
		 function searchData(searchTerm) {
			  return globaldata.filter(item => item.includes(searchTerm));
			}*/
		
	//	renderTable(globaldata);
	
	function convertbuysell(bs)
	{
		if( bs == "0" )
			{
			return "BUY";
			}
		else
			{
			return "SELL";
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
			
			
			const fieldtoshow = [  "Symbol","Volume", "Action",
					"TimeCreate","PriceOpen","PriceCurrent","PriceSL","PriceTP","Storage","Profit"];
			var fieldIndex = [];

			let header = Object.keys(array[0]);

			for (let i = 0; i < header.length; i++) {

				for (let j = 0; j < fieldtoshow.length; j++) {
					if (header[i] === fieldtoshow[j]) {

						fieldIndex.push(i);
						var tr = document.getElementById(tableid).tHead.children[0], th = document
								.createElement('th');
						
						if(header[i] === "Storage")
							{
							th.innerHTML = "Swap";
							}
						else if(header[i] === "TimeCreate")
							{
							th.innerHTML = "Open Time";
							}
						else if(header[i] === "PriceCurrent")
						{
						th.innerHTML = "Price Current";
						}
						else if(header[i] === "PriceOpen")
						{
						th.innerHTML = "Price Open";
						}
						else if(header[i] === "PriceSL")
						{
						th.innerHTML = "Price SL";
						}
						else if(header[i] === "PriceTP")
						{
						th.innerHTML = "Price TP";
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

					if (header[fieldIndex[keylength - j]] === "TimeCreate") //datetimeconvert
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
					else if (header[fieldIndex[keylength - j]] === "Profit") //datetimeconvert
					{
						cell.innerHTML = Object.values(array[i])[fieldIndex[keylength
							- j]].toString();
						if(isloss(Object.values(array[i])[fieldIndex[keylength - j]].toString()))
							{
							cell.style.color='red';
							}
						else
							{
							cell.style.color='green';
							}
					}
					
					else {
						cell.innerHTML = Object.values(array[i])[fieldIndex[keylength
								- j]].toString();
					}
					
					
					
					

				}

				if (enableButtonAction) {
					var login = document.getElementById(tableid).rows[1].cells[0].innerHTML;
					var cell = row.insertCell(fieldIndex.length);
					cell.innerHTML = "<a href='editAccountDetails?login=" + login
							+ "' class='btn btn-default'>Edit</a>";
				}

			}

			$(function() {
				jQuery.each($("table tr"), function() {
					$(this).children(":eq(2)").after($(this).children(":eq(1)")); // rearange col 2 to 1
					$(this).children(":eq(1)").after($(this).children(":eq(7)")); // rearange col 2 to 1
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

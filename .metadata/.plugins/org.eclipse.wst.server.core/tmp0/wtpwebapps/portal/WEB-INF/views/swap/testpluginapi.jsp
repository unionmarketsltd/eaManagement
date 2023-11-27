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
								
 <p style="color:green" id="status"></p>
<br>
  <button type="button" onclick="callapiadd();" class="btn btn-primary ">add</button>
  <br>
    <button type="button" onclick="callapidelete();" class="btn btn-primary ">delete</button>
    


							<!-- /.card -->
						</div>
					</div>
				</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>

		<span id="jsonoutput"></span>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
		<form action="" name="accountListFrm" id="accountListFrm" method="get">
			<input type="hidden" id="login" name="login"
				value="<%=s_Login%>">
		</form>
</body>




<script>
    function callapiadd() {
        $.ajax({
            url: 'http://localhost:58727/testcustomsend?a=API_PLUGIN_CONFIG_INSERT&mid=4002&cid=4003&r=100&t=L',
            type: 'get',
            async: false,
            data: '',
            success: function(data) {

                console.log(data.result);
                document.getElementById("status").innerHTML = data;

            },
            error: function(xhr, status) {
                alert("ERROR : " + xhr + " : " + status);
                return;
            }
        });
    }

</script>


<script>
    function callapidelete() {
        $.ajax({
            url: 'http://localhost:58727/testcustomsend?a=API_PLUGIN_CONFIG_DELETE&mid=4002&cid=4003&r=100&t=L',
            type: 'get',
            async: false,
            data: '',
            success: function(data) {

                console.log(data.result);
                document.getElementById("status").innerHTML = data;

            },
            error: function(xhr, status) {
                alert("ERROR : " + xhr + " : " + status);
                return;
            }
        });
    }

</script>


<script type="text/javascript">
	var jarray;

	
	
	var totalpage = 0;
	var currentpage = 1;
	
	function nextpage()
	
	{
		if((currentpage+1) <= totalpage)
			{
			currentpage = currentpage +1;
			GetOrderList(currentpage);
			}	
	}
	
function prevpage()
	
	{
		if((currentpage-1) >=1)
			{
			currentpage = currentpage -1;
			GetOrderList(currentpage);
			}	
	}
	
	function GetTotalOrder() {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/swap/OrderGetTotal',
					type : 'get',
					async : false,
					data : $("#accountListFrm").serialize(),
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);
							console.log(jobject.retcode);
							if (jobject.retcode == "0 Done") {
								if (jobject.hasOwnProperty('answer')) {
									const janswer = jobject.answer;
									var totalOrders = janswer["total"];
									
									 totalpage = Math.ceil(totalOrders/5);
									
									//alert("total page:"+totalpage);
								} else {
									//alert("server return error code");
									//alert(data.result);
									toastmsg("server return error", data.result);
								}
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
	}
	GetTotalOrder();
	
	
	function GetOrderList(page) {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/swap/OrderGetList?page='+page,
					type : 'get',
					async : false,
					data : $("#accountListFrm").serialize(),
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);
							console.log(jobject.retcode);
							if (jobject.retcode == "0 Done") {
								if (jobject.hasOwnProperty('answer')) {
									//alert(JSON.stringify(jobject.answer));
									
									const Jarrayanswer = jobject.answer;
									if(Object.keys(Jarrayanswer).length >0)
										{
										
										document.getElementById("pagenumber").innerHTML ="(Page "+page+" of "+totalpage+")";
										
										insertTableRowWithSelectedColumn("datatable", Jarrayanswer,
												false);
										}
									else
										{
										document.getElementById("pagenumber").innerHTML = "There is no data to show here."
											toastmsg("Friendly reminder: ", "There is no data to show in the table.");
										}
									
								} else {
									//alert("server return error code");
									//alert(data.result);
									toastmsg("server return error", data.result);
								}
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
	}
	GetOrderList(1);
	

	function insertTableRowWithAllColumn(tableid, array) {
		document.getElementById(tableid).innerHTML  = '<thead><tr></tr></thead> <tbody></tbody>';
		
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

	function insertTableRowWithSelectedColumn(tableid, array,
			enableButtonAction) {
		document.getElementById(tableid).innerHTML  = '<thead><tr></tr></thead> <tbody></tbody>';
	
		const fieldtoshow = [ "Position", "Symbol", "Action", "Volume",
				"PriceOpen","PriceCurrent","Profit","TimeCreate" ,"PriceSL","PriceTP"];
		var fieldIndex = [];

		let header = Object.keys(array[0]);

		for (let i = 0; i < header.length; i++) {

			for (let j = 0; j < fieldtoshow.length; j++) {
				if (header[i] === fieldtoshow[j]) {

					fieldIndex.push(i);
					var tr = document.getElementById(tableid).tHead.children[0];
					th = document.createElement('th');
					th.innerHTML = header[i];
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
			var table = document.getElementById(tableid);
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
					
						if(Object.values(array[i])[fieldIndex[keylength - j]].toString() == "1")
							{
							cell.innerHTML = "SELL";
							}
						if(Object.values(array[i])[fieldIndex[keylength - j]].toString() == "0")
						{
						cell.innerHTML = "BUY";
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
			});
		});
	}

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

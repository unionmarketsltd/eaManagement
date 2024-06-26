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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
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

				<!--  <div class="card">
						<div class="card-header ui-sortable-handle" style="cursor: move;">
							<h3 class="card-title">
								<i class="fas fa-chart-pie mr-1"></i> History Balance
							</h3>

						</div>
						<div class="card-body">
							<div class="tab-content p-0" style="  margin-left: auto;
  margin-right: auto;
  width: 70%;
">
								
									<canvas id="line-chart" ></canvas>
								
							</div>
						</div>
					</div>-->	
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">History List</h3>
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
									<!--  <button type="button" class="btn btn-primary float-right"
										style="margin-left: 5px" " onclick="nextpage()">next</button>
									<button type="button" class="btn btn-primary float-right"
										onclick="prevpage()">prev</button>-->
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

		<span id="jsonoutput"></span>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
		<form action="" name="accountListFrm" id="accountListFrm" method="get">
			<input type="hidden" id="login" name="login" value="<%=s_Login%>">
		</form>
</body>
<script type="text/javascript">
	var jarray;

	var totalpage = 0;
	var currentpage = 1;

	function nextpage()

	{
		if ((currentpage + 1) <= totalpage) {
			currentpage = currentpage + 1;
			GetHistoryList(currentpage);
		}
	}

	function prevpage()

	{
		if ((currentpage - 1) >= 1) {
			currentpage = currentpage - 1;
			GetHistoryList(currentpage);
		}
	}

	function GetTotalHistory() {
		$.ajax({
			url : '${pageContext.request.contextPath}/swap/HistoryGetTotal',
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

							totalpage = Math.ceil(totalOrders / 5);

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
	GetTotalHistory();
	
	

	function GetHistoryList(page) {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/swap/HistoryGetList?all=1&page='
							+ page,
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
									if (Object.keys(Jarrayanswer).length > 0) {

										document.getElementById("pagenumber").innerHTML = "(Page "
												+ page
												+ " of "
												+ page
												+ ")";

										insertTableRowWithSelectedColumn(
												"datatable", Jarrayanswer,
												false);
									} else {
										document.getElementById("pagenumber").innerHTML = "There is no data to show here."
										toastmsg("Friendly reminder: ",
												"There is no data to show in the table.");
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
	GetHistoryList(1);

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

	function insertTableRowWithSelectedColumn(tableid, array,
			enableButtonAction) {
		document.getElementById(tableid).innerHTML = '<thead><tr></tr></thead> <tbody></tbody>';

		const fieldtoshow = [ "Deal","Order" ,"Symbol","Volume", "Profit", "Storage" ];
		var fieldIndex = [];

		let header = Object.keys(array[0]);

		for (let i = 0; i < header.length; i++) {

			for (let j = 0; j < fieldtoshow.length; j++) {
				if (header[i] === fieldtoshow[j]) {

					
					var headername ;
					if(header[i]==="Storage")
						{
						headername = "Swap";
						}
					else if(header[i]==="Volume")
					{
					headername = "Lot";
					}
					else
						{
						headername = header[i];
						}
					
					
					fieldIndex.push(i);
					var tr = document.getElementById(tableid).tHead.children[0];
					th = document.createElement('th');
					th.innerHTML = headername;
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
				
				if (header[fieldIndex[keylength - j]] === "Volume") //datetimeconvert
				{
					 var number = parseInt(Object.values(array[i])[fieldIndex[keylength - j]])
					number = number /10000;
					cell.innerHTML = (number.toString());
				}

				else if (header[fieldIndex[keylength - j]] === "Type") //datetimeconvert
				{

					if (Object.values(array[i])[fieldIndex[keylength - j]]
							.toString() == "1") {
						cell.innerHTML = "SELL";
					}
					if (Object.values(array[i])[fieldIndex[keylength - j]]
							.toString() == "0") {
						cell.innerHTML = "BUY";
					}
				} else {
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



<script>
    var json = {
        "retcode": "0 Done",
        "answer": [{
                "Timestamp": "132302519992466852",
                "DatetimePrev": "1585699199",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10010.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            },
            {
                "Timestamp": "132303383992178046",
                "DatetimePrev": "1585785599",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10012.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            },
            {
                "Timestamp": "132303383992178046",
                "DatetimePrev": "1585785599",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10012.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            },
            {
                "Timestamp": "132303383992178046",
                "DatetimePrev": "1585785599",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10012.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            },
            {
                "Timestamp": "132303383992178046",
                "DatetimePrev": "1585785599",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10012.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            },
            {
                "Timestamp": "132303383992178046",
                "DatetimePrev": "1585785599",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10012.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            }, {
                "Timestamp": "132302519992466852",
                "DatetimePrev": "1585699199",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10010.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            }, {
                "Timestamp": "132302519992466852",
                "DatetimePrev": "1585699199",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10010.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            }, {
                "Timestamp": "132302519992466852",
                "DatetimePrev": "1585699199",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10010.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            },
            {
                "Timestamp": "132303383992178046",
                "DatetimePrev": "1585785599",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10012.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            },
            {
                "Timestamp": "132303383992178046",
                "DatetimePrev": "1585785599",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10012.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            },
            {
                "Timestamp": "132303383992178046",
                "DatetimePrev": "1585785599",
                "Login": "765114",
                "Name": "Test Collateral",
                "Group": "demo\\demoforex-hedged",
                "Currency": "USD",
                "CurrencyDigits": "2",
                "Company": "MetaQuotes DEV",
                "EMail": "",
                "Balance": "10012.31",
                "Credit": "0.00",
                "InterestRate": "0.00",
                "CommissionDaily": "0.00",
                "CommissionMonthly": "0.00",
                "AgentDaily": "0.00"
            }
        ]
    };

    var balance = [];
    var datearray = []


    for (var i = 0; i < json.answer.length; i++) {
        balance.push(json.answer[i].Balance);


        var date = new Date(json.answer[i].DatetimePrev * 1000);
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        console.log(year);
        datearray.push(day + "-" + month + "-" + year);
        console.log(balance[i]);
    }


    new Chart(document.getElementById("line-chart"), {
        type: 'line',
        data: {
            labels: datearray,
            datasets: [{
                data: balance,
                label: "Balance (USD)",
                borderColor: '#007bff',
                backgroundColor: 'rgba(0,123,255, 0.2)',
            }]
        },
        options: {
            title: {
                display: true,
                text: 'Account Balance'
            }
        }
    });

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

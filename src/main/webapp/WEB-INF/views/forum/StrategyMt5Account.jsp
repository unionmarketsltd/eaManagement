<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html >
<head>
<%@include file="inc/session.jsp"%>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Home</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
        // Wait for the DOM content to be fully loaded
        document.addEventListener("DOMContentLoaded", function() {
            // Display the body content once everything is loaded
            document.body.style.display = "block";
        });
    </script>

</head>
<body style="display: none">
	<%@include file="inc/top.jsp"%>

	<!-- BANNER WRAP -->

	<!-- BANNER SLIDER -->
	<!-- /BANNER SLIDER -->


	<div class="banner-wrap gaming-news cloner-wrap-3"
		data-title="Code Copied<br>to Clipboard!" style="position: relative;">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">${name}</h2>
			<p class="banner-sections">
				<span class="banner-section">Trade Account</span>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
            <use xlink:href="#svg-arrow"></use>
          </svg>
				<!-- /ARROW ICON -->
				<span class="banner-section">${id} </span>
			</p>
		</div>
		<!-- /BANNER -->
		<div class="xm-tooltip v2 red medium"
			style="white-space: nowrap; position: absolute; z-index: 99999; top: -58px; left: 50%; margin-left: -58.5px; visibility: hidden; opacity: 0; transform: scale(0); transition: all 0.3s ease-in-out 0s;">
			<p class="xm-tooltip-text">
				Code Copied<br>to Clipboard!
			</p>
		</div>
	</div>

	<%@include file="inc/newsscroll.jsp"%>

	<div class="layout-content-full v2 grid-limit layout-item gutter-big">
	

		<div class="widget-item">
			<!-- SECTION TITLE WRAP -->
			<div class="section-title-wrap violet no-space">
				<h2 class="section-title medium">Account Overview</h2>
				<div class="section-title-separator"></div>
			</div>
			<!-- /SECTION TITLE WRAP -->

			<!-- TAB WRAP -->
			<div class="tab-wrap">
				<!-- TAB BODY -->
				<div class="tab-body">
					<!-- TAB ITEM -->
					<div class="tab-item">
						<!-- WIDGET TEAM OVERVIEW -->
						<div class="widget-team-overview">
							<!-- TEAM OVERVIEW -->
							<div class="team-overview">


								<!-- OVERVIEW INFO WRAP -->
								<div class="overview-info-wrap" style="margin: auto">
									<!-- OVERVIEW INFO -->
									<div class="overview-info">
										<!-- OVERVIEW INFO ITEM -->
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Name</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<!-- /OVERVIEW INFO ITEM -->

										<!-- OVERVIEW INFO ITEM -->
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Country</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text">
												<img src="img/flags/flag-us.png" alt="us-flag"> United
												States
											</p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<!-- /OVERVIEW INFO ITEM -->

										<!-- OVERVIEW INFO ITEM -->
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Login</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<!-- /OVERVIEW INFO ITEM -->

									</div>
									<div class="overview-info">
										<!-- OVERVIEW INFO ITEM -->


										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Group</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Registration</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">LastAccess</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>

									</div>

									<div class="overview-info">
										<!-- OVERVIEW INFO ITEM -->


										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Leverage</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>

										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Balance</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Margin</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
									</div>


									<div class="overview-info">
										<!-- OVERVIEW INFO ITEM -->


										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">MarginFree</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>

										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">MarginLevel</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Equity</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
									</div>

									<div class="overview-info">
										<!-- OVERVIEW INFO ITEM -->


										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Profit</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>

										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Storage</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">Floating</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text"></p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
									</div>
									<!-- /OVERVIEW INFO WRAP -->
								</div>
								<!-- ARC RATE WRAP -->
								<!-- /ARC RATE WRAP -->
							</div>
							<!-- /TEAM OVERVIEW -->
						</div>
						<!-- /WIDGET TEAM OVERVIEW -->
					</div>
					<!-- /TAB ITEM -->
				</div>
				<!-- /TAB BODY -->

				<!-- TAB HEADER -->
				<!-- /TAB HEADER -->
			</div>
			<!-- /TAB WRAP -->
		</div>

			<!-- SECTION TITLE WRAP -->
			<div class="section-title-wrap violet no-space">
				<h2 class="section-title medium">Strategy</h2>
				<div class="section-title-separator"></div>
			</div>
			<!-- /SECTION TITLE WRAP -->
			
		<div
			style="margin-left: 5%; margin-right: 5%; color: #777; font-family: 'Roboto', sans-serif;">

			${content}</div>






	</div>

	<script>
       function insertchart(data)
       {
    	   
    	   
     
        var chartData = {
            labels:Array.from({ length: data.length }, (_, i) => i + 1),
            datasets: [{
                label: 'Profit In USD',
                backgroundColor: '#f30a5c',
                borderColor: '#f30a5c',
                borderWidth: 4,
                data: data,
            }]
        };

        
     

        // Get the canvas element
        var ctx = document.getElementById('myChart1').getContext('2d');

        // Create the chart
        var myChart = new Chart(ctx, {
            type: 'line',
            data: chartData,
            options: {bezierCurve : true,
            	elements: {
                    point:{
                        radius: 1
                    }
                },
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: false
                        }
                    }],
                    xAxes: [{
                        display: false, // hide x-axis
                        gridLines: {
                            display: false // hide grid lines for x-axis
                        }
                    }]
                }
            }
        });
       }
   
	
	const parameterid = new URLSearchParams(window.location.search).get('id');
	
	
	var totalpagenumber = 0;
	
	
	function getprofitchartdata() {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/forum/getprofitchartdata?id='+parameterid,
					type : 'get',
					async : false,
					data : '',
					success : function(data) {
						const jobject = JSON.parse(data.result);
						insertchart(jobject);
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						return;
					}
				});
	}getprofitchartdata() ;
	
	
	function getHistorytotalPage() {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/forum/getHistorytotalPage?id='+parameterid,
					type : 'get',
					async : false,
					data : '',
					success : function(data) {
						totalpagenumber = data.result;
						totalpagenumber++;
						generatePagingNumbers(totalpagenumber, 1);
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						return;
					}
				});
	}getHistorytotalPage();

	
	
	function buyOrSell(input) {
	    if (input.indexOf("0")>=0) {
	        return "buy";
	    } else if (input.indexOf("1")>=0) {
	        return "sell";
	    } else {
	        return "-";
	    }
	}
	
	
function insertuserdetail (jsonString)
{
	
	
   //alert(jsonString);
    // Parse JSON string into JavaScript object
    var jsonData = JSON.parse(jsonString);

    // Get elements and update HTML content with JSON data
    var overviewItems = document.querySelectorAll('.overview-info-item-title');
    var overviewValues = document.querySelectorAll('.overview-info-item-text');

    for (var key in jsonData.answer) {
      var index = Array.from(overviewItems).findIndex(function(item) {
        return item.textContent === key;
      });

      if (index !== -1) {
        overviewValues[index].textContent = jsonData.answer[key];
      }
    }
    
}

function GetInfo() {
	$
			.ajax({
				url : '${pageContext.request.contextPath}/forum/getAccountInfo?id='+parameterid,
				type : 'get',
				async : false,
				data : '',
				success : function(data) {
					if (data.result.indexOf("0 Done" >= 0)) {
						console.log(data.result);
						const jobject = JSON.parse(data.result);
						console.log(jobject.retcode);
						if (jobject.retcode == "0 Done") {
							if (jobject.hasOwnProperty('answer')) {
								
								insertuserdetail (data.result);
							}
						}

					} else {
						alert(data.result);
						
						return;
					}
				},
				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);
					return;
				}
			});
}
GetInfo();



function GetAccountInfo() {
	$
			.ajax({
				url : '${pageContext.request.contextPath}/forum/getAccountDetail?id='+parameterid,
				type : 'get',
				async : false,
				data : '',
				success : function(data) {
					if (data.result.indexOf("0 Done" >= 0)) {
						console.log(data.result);
						const jobject = JSON.parse(data.result);
						console.log(jobject.retcode);
						if (jobject.retcode == "0 Done") {
							if (jobject.hasOwnProperty('answer')) {
								
								insertuserdetail (data.result);
							}
						}

					} else {
						alert(data.result);
						
						return;
					}
				},
				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);
					return;
				}
			});
}



function getHistory(page) {
	$
			.ajax({
				url : '${pageContext.request.contextPath}/forum/getHistory?id='+parameterid+'&page='+page,
				type : 'get',
				async : false,
				data : '',
				success : function(data) {
					if (data.result.indexOf("0 Done" >= 0)) {
					//	console.log(data.result);
						const jobject = JSON.parse(data.result);
						console.log(jobject.retcode);
						console.log(data.result);
						if (jobject.retcode == "0 Done") {
							if (jobject.hasOwnProperty('answer')) {
								generatePagingNumbers(totalpagenumber, page);
								inserthistoryTable(data.result ,page);
							}
						}

					} else {
						alert(data.result);
						
						return;
					}
				},
				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);
					return;
				}
			});
}getHistory(1);




function getAccountPositions() {
	$
			.ajax({
				url : '${pageContext.request.contextPath}/forum/getAccountPositions?id='+parameterid,
				type : 'get',
				async : false,
				data : '',
				success : function(data) {
					if (data.result.indexOf("0 Done" >= 0)) {
						console.log(data.result);
						const jobject = JSON.parse(data.result);
						console.log(jobject.retcode);
						if (jobject.retcode == "0 Done") {
							if (jobject.hasOwnProperty('answer')) {
								//document.getElementById("orderlist").innerHTML = data.result;
							
								var tableRowsContainer = document.getElementById("opendiv");
								tableRowsContainer.innerHTML = "";

								// Loop through each object in the JSON data and create a table row for each
								jobject.answer.forEach(function(item ,index) {
								  // Create a new table row element
								   let currentIndex = index + 1;
								  
								  var row1c = '<div class="table-row">'
								+'  <div class="table-row-item position">'
					        
								+'  <p class="table-text">'+currentIndex+'</p>'
					  
								+'   <div class="team-info-wrap">'
					              
							
					                 
								+'    <div class="team-info">'
								+'     <p class="team-name">'+item.Symbol+'</p>'
								+'     <p class="team-country">'+item.Position+'</p>'
								+'    </div>'
					                 
								+'   </div>'
					               
								+'   </div>' 
								+'<div class="table-row-item"><p class="table-text bold">'+buyOrSell(item.Action)+'</p></div>'
								+'<div class="table-row-item"><p class="table-text bold">'+item.PriceOpen+'</p></div>'
								+'<div class="table-row-item"><p class="table-text bold">'+item.PriceCurrent+'</p></div>'
								+'<div class="table-row-item"><p class="table-text bold">'+item.PriceSL+'</p></div>'
								+'<div class="table-row-item"><p class="table-text bold">'+item.PriceTP+'</p></div>'
								+'<div class="table-row-item"><p class="table-text bold">'+(item.Volume*0.0001).toFixed(2)+'</p></div>'
								+'<div class="table-row-item"><p class="table-text bold">'+item.Profit+'</p></div>'
								+'<div class="table-row-item"><p class="table-text bold">'+item.Storage+'</p></div>';
					            
					             
								
								   tableRowsContainer.innerHTML +=row1c;
								 
								});
						}

					}
					}else {
						alert(data.result);
						
						return;
					}
				},
				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);
					return;
				}
			});
}


getAccountPositions();
GetAccountInfo();

function myTask() {
    console.log("Task executed!");
    getAccountPositions();
    GetAccountInfo();
}
setInterval(myTask, ${duration}000); // 4000 milliseconds = 4 seconds


function inserthistoryTable (jsonString ,page)
{
	
	const jobject = JSON.parse(jsonString);
	

	
	var tableRowsContainer = document.getElementById("historydiv");
	tableRowsContainer.innerHTML = "";

	// Loop through each object in the JSON data and create a table row for each
	jobject.answer.forEach(function(item ,index) {
	  // Create a new table row element
	   let currentIndex = (index + 1)+(50*(page-1));
	  
	  var row1c = '<div class="table-row">'
	+'  <div class="table-row-item position">'

	+'  <p class="table-text">'+currentIndex+'</p>'

	+'   <div class="team-info-wrap">'
      

         
	+'    <div class="team-info">'
	+'     <p class="team-name">'+item.Symbol+'</p>'
	+'     <p class="team-country">'+item.Order+'</p>'
	+'    </div>'
         
	+'   </div>'
       
	+'   </div>' 
	+'<div class="table-row-item"><p class="table-text bold">'+timenow(item.Time)+'</p></div>'
	+'<div class="table-row-item"><p class="table-text bold">'+buyOrSell(item.Action)+'</p></div>'
	+'<div class="table-row-item"><p class="table-text bold">'+(item.Volume*0.0001).toFixed(2)+'</p></div>'
	+'<div class="table-row-item"><p class="table-text bold">'+item.Profit+'</p></div>'
	+'<div class="table-row-item"><p class="table-text bold">'+item.Storage+'</p></div>'
	+'<div class="table-row-item"><p class="table-text bold">'+item.PriceSL+'</p></div>'
	+'<div class="table-row-item"><p class="table-text bold">'+item.PriceTP+'</p></div>';
    
     
	
	   tableRowsContainer.innerHTML +=row1c;
	 
    
});
}





  
// Function to generate paging numbers
function generatePagingNumbers(totalPages, currentPage) {
  var pagingContainer = document.getElementById('pagingContainer');
  if (!pagingContainer) return;
  
  var paginationHTML = '';
  for (var i = 1; i <= totalPages; i++) {
    if (i === currentPage) {
      paginationHTML += '<a href="#" class=" page-navigation-item active">' + i + '</a>';
    } else {
      paginationHTML += '<button type="button" class="page-navigation-item" onclick="getHistory('+i+')">' + i + '</button>';
    }
  }


  pagingContainer.innerHTML = paginationHTML;
}



function timenow(unixTimestamp) {
    // Convert Unix timestamp to milliseconds
    var date = new Date(unixTimestamp * 1000);

    // Convert to local time and format as a string
    var localTimeString = date.toLocaleString(); // Converts to local date and time

    return localTimeString;
}

</script>
	<!-- LAYOUT CONTENT 1 -->
	<!-- /LAYOUT CONTENT 1 -->
	<%@include file="inc/footer.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0" id="pagetitlemain"></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item active">Legal Documents</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content"><!-- /.container-fluid -->
    
    <div class="contain-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">My Proof of Document(s)</h3>


                                </div>
                                <!-- /.card-header -->
                                <div class="card-body p-0">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th style="width: 10px">#</th>
                                                <th>Document Type</th>
                                                <th>Upload Date</th>
                                                <th>Status</th>
                                                <th>View</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1.</td>
                                                <td>ID</td>
                                                <td>2022.01.01</td>
                                                <td><span class="badge bg-success">Approved</span></td>
                                                <td>paulbaek.jpg</td>
                                            </tr>
                                            <tr>
                                                <td>2.</td>
                                                <td>Proof of Address</td>
                                                <td>2022.01.01</td>
                                                <td><span class="badge bg-warning">Reviewing</span></td>
                                                <td>address.pdf</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <h5 class="m-0">Document Guide for ID</h5>
                                </div>
                                <div class="card-body">


                                    <p class="card-text "><strong>We will need a copy of your valid International Passport, National ID card or Driver license in order to verify identity.</strong></p>
                                    <p class="card-text "><i class="fa fa-check " style="color:green"></i> The information of identification should be accurate.</p>
                                    <p class="card-text "><i class="fa fa-check " style="color:green"></i> For your National ID or Driver's license both back and front copies are required.
                                    </p>
                                    <p class="card-text "><i class="fa fa-check " style="color:green"></i> For more information, please click the button below to view example of document(s).</p>

                                    <p class="card-text "><i class="fa fa-check " style="color:green"></i> Should you have any questions please do not hesitate to <a href="#" class="card-link">Contact Us</a>.
                                    </p>

                                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-show-DL">
                                        <i class="fa fa-id-card-o nav-icon" aria-hidden="true"></i> View example of driving license
                                    </button>

                                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-show-PP">
                                        <i class="fas fa-passport nav-icon" aria-hidden="true"></i> View example of Passport
                                    </button>
                                    <a href="#" class="btn btn-primary float-right"><i class="fa fa-upload" aria-hidden="true"></i> Submit My Identification Document(s)</a>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-12">
                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <h5 class="m-0">Document Guide for Proof of Address (POA)</h5>
                                </div>
                                <div class="card-body">


                                    <p class="card-text "><strong>We will need A copy of a proof of residence (e.g. utility bill) not more than three months old is required in order to verify your permanent residential address.</strong></p>
                                    <p class="card-text "><strong>The document should, as a minimum, demonstrate the following information.</strong></p>
                                    <p class="card-text "><i class="fa fa-check " style="color:green"></i> The information of name, address, and date of issue should be accurate.</p>

                                    <p class="card-text "><i class="fa fa-check " style="color:green"></i> Example of utility bill include: water, electricity, gas, telephone bills, bank statement, any letter issued from a recognized public authority.</p>

                                    <p class="card-text "><i class="fa fa-check " style="color:green"></i> Should you have any questions please do not hesitate to <a href="#" class="card-link">Contact Us</a>.
                                    </p>

                                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-show-GB">
                                        <i class="fa fa-file nav-icon" aria-hidden="true"></i> View example of gas bill
                                    </button>
                                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-show-CS">
                                        <i class="fas fa-credit-card nav-icon" aria-hidden="true"></i> View example of card statement
                                    </button>
                                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-show-PB">
                                        <i class="fas fa-mobile nav-icon" aria-hidden="true"></i> View example of phone bill
                                    </button>
                                    <a href="#" class="btn btn-primary float-right"><i class="fa fa-upload" aria-hidden="true"></i> Submit My POA Document(s)</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                           <div class="modal fade" id="modal-show-DL">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Example Image of Driving License</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <img src="${pageContext.request.contextPath}/resources/images/bill.png" style="width:100%" class="card" alt="document Image">
                            </div>
                            <div class="modal-footer ">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>

                <div class="modal fade" id="modal-show-PP">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Example Image of Passport</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <img src="${pageContext.request.contextPath}/resources/images/bill.png" style="width:100%" class="card" alt="document Image">
                            </div>
                            <div class="modal-footer ">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>

                <div class="modal fade" id="modal-show-GB">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Example Image of Gas Bill</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <img src="${pageContext.request.contextPath}/resources/images/bill.png" style="width:100%" class="card" alt="document Image">
                            </div>
                            <div class="modal-footer ">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>

                <div class="modal fade" id="modal-show-CS">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Example Image of Card Statement</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <img src="${pageContext.request.contextPath}/resources/images/bill.png" style="width:100%" class="card" alt="document Image">
                            </div>
                            <div class="modal-footer ">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>

                <div class="modal fade" id="modal-show-PB">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Example Image of Phone Bill</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <img src="../image/docexample.jpg" style="width:100%" class="card" alt="document Image">
                            </div>
                            <div class="modal-footer ">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <%@include file="inc/footer.jsp"%> 
</body>
</html>

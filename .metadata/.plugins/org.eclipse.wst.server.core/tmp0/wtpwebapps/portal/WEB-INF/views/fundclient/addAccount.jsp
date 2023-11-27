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
								<li class="breadcrumb-item active">Add Account</li>
							</ol>
						</div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    
    <section class="content">
                <div class=" card card-primary card-outline">
                    <div class="card-header">
                        <h5 class="m-0">Additional Trading Account</h5>
                    </div>
                    <div class="card-body">
                        <p class="card-text "><strong>As an existing Union MK Live Account holder, in order to open an additional account, you are only required to simple informations of the account from the options below:</strong></p>

                        <div class="row" id="sec1">
                            <div class="col-6">
                                <div class="form-group" data-select2-id="29">
                                    <label>Account Type</label>
                                    <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                        <option selected="selected" data-select2-id="3">Standard</option>
                                        <option data-select2-id="33">Micro</option>

                                    </select><span class="select2 select2-container select2-container--default select2-container--below select2-container--focus" dir="ltr" data-select2-id="2" style="width: 100%;"></span><span class="dropdown-wrapper" aria-hidden="true"></span>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group" data-select2-id="29">
                                    <label>Platform Type</label>
                                    <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                        <option selected="selected" data-select2-id="3">MT4</option>
                                        <option data-select2-id="33">MT5</option>

                                    </select><span class="select2 select2-container select2-container--default select2-container--below select2-container--focus" dir="ltr" data-select2-id="2" style="width: 100%;"></span><span class="dropdown-wrapper" aria-hidden="true"></span>
                                </div>
                            </div>
                        </div>

                        <div class="row" id="sec2">
                            <div class="col-4">
                                <div class="form-group" data-select2-id="29">
                                    <label>Choose Currency <span style="color:red">*</span></label>
                                    <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                        <option selected="selected" data-select2-id="3">USD</option>
                                        <option data-select2-id="33">EUR</option>

                                    </select><span class="select2 select2-container select2-container--default select2-container--below select2-container--focus" dir="ltr" data-select2-id="2" style="width: 100%;"></span><span class="dropdown-wrapper" aria-hidden="true"></span>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group" data-select2-id="29">
                                    <label>Leverage</label>
                                    <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                        <option selected="selected" data-select2-id="3">100:1</option>
                                        <option data-select2-id="33">200:1</option>

                                    </select><span class="select2 select2-container select2-container--default select2-container--below select2-container--focus" dir="ltr" data-select2-id="2" style="width: 100%;"></span><span class="dropdown-wrapper" aria-hidden="true"></span>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="ibcode">IB Code(if any)</label>
                                    <input type="text" class="form-control" placeholder="Enter IB code if any">
                                </div>
                            </div>

                        </div>
                        <br>
                        <div class="row">
                            <div class="col-12">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" checked="">
                                    <label class="form-check-label">i declare that i have carefully read and fully understood the entire text of the Terms and Conditions, Order Execution Policy, Risk Disclosure, General Risk Disclosure, Conflicts of interes Policy, Privacy Policy, which i fully understand, accept and agree with.</label>
                                </div>
                                <br>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" checked="">
                                    <label class="form-check-label">i hereby acknowledge the risk warning of AAAAFX that forex trading and trading in other leveraged products involves a significant level of risk and is not suitable for all investors, but i still wish to proceed with my registering a Trading account with AAAAFX.</label>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary float-right">Open a Live Account</button>
                            </div>
                        </div>


                    </div>
                </div>


                <div class=" card card-primary card-outline">
                    <div class="card-header">
                        <h5 class="m-0">Type of Accounts</h5>
                    </div>
                    <div class="card-body">
                        <p class="card-text "><strong>Below are the accounts that we offer.</strong></p>

                        <div class="row" id="sec3">
                            <div class="col-md-6">
                                <div class="card ">
                                    <div class="card-header" style="background-color:black; color:white">
                                        <h3 class="card-title"><strong>Standard</strong></h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table ">
                                            <tbody>
                                                <tr>

                                                    <td><strong>Minimum Deposit</strong></td>
                                                    <td>US $10</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Lowest Spread</strong></td>
                                                    <td>0.9pip (EURUSD)</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Leverage</strong></td>
                                                    <td>Unlimited</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Commission</strong></td>

                                                    <td>$ 0</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Description</strong></td>
                                                    <td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                    <!-- /.card-body -->

                                    <div class="card-footer" style="text-align: center">
                                        <button type="button" class="btn " style="border:none; color:black" data-toggle="modal" data-target="#modal-show-1">
                                            <strong>Learn More</strong>
                                        </button>


                                    </div>
                                </div>
                                <div class="modal fade" id="modal-show-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Standard Account</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <table class="table ">
                                                    <tbody>
                                                        <tr>

                                                            <td><strong>Minimum Deposit</strong></td>
                                                            <td>US $10</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Lowest Spread</strong></td>
                                                            <td>0.9pip (EURUSD)</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Leverage</strong></td>
                                                            <td>Unlimited</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Commission</strong></td>

                                                            <td>$ 0</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Description</strong></td>
                                                            <td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient </td>
                                                        </tr>

                                                        <tr>

                                                            <td><strong>field </strong></td>
                                                            <td>value</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="modal-footer ">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>

                                <div class="card ">
                                    <div class="card-header" style="background-color:darkblue; color:white">
                                        <h3 class="card-title"><strong>ECN</strong></h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table ">
                                            <tbody>
                                                <tr>

                                                    <td><strong>Minimum Deposit</strong></td>
                                                    <td>US $10</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Lowest Spread</strong></td>
                                                    <td>0.9pip (EURUSD)</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Leverage</strong></td>
                                                    <td>Unlimited</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Commission</strong></td>

                                                    <td>$ 0</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Description</strong></td>
                                                    <td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer" style="text-align: center">
                                        <button type="button" class="btn " style="border:none; color:black" data-toggle="modal" data-target="#modal-show-2">
                                            <strong>Learn More</strong>
                                        </button>
                                    </div>

                                </div>
                                <div class="modal fade" id="modal-show-2">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">ECN Account</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <table class="table ">
                                                    <tbody>
                                                        <tr>

                                                            <td><strong>Minimum Deposit</strong></td>
                                                            <td>US $10</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Lowest Spread</strong></td>
                                                            <td>0.9pip (EURUSD)</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Leverage</strong></td>
                                                            <td>Unlimited</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Commission</strong></td>

                                                            <td>$ 0</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Description</strong></td>
                                                            <td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient </td>
                                                        </tr>

                                                        <tr>

                                                            <td><strong>field </strong></td>
                                                            <td>value</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="modal-footer ">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>

                            </div><!-- left column -->
                            <div class="col-md-6">

                                <div class="card ">
                                    <div class="card-header" style="background-color:dimgrey; color:white">
                                        <h3 class="card-title"><strong>Prime</strong></h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table ">
                                            <tbody>
                                                <tr>

                                                    <td><strong>Minimum Deposit</strong></td>
                                                    <td>US $10</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Lowest Spread</strong></td>
                                                    <td>0.9pip (EURUSD)</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Leverage</strong></td>
                                                    <td>Unlimited</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Commission</strong></td>

                                                    <td>$ 0</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Description</strong></td>
                                                    <td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer" style="text-align: center">
                                        <button type="button" class="btn " style="border:none; color:black" data-toggle="modal" data-target="#modal-show-3">
                                            <strong>Learn More</strong>
                                        </button>

                                    </div>
                                </div>
                                <div class="modal fade" id="modal-show-3">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">PRIME Account</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <table class="table ">
                                                    <tbody>
                                                        <tr>

                                                            <td><strong>Minimum Deposit</strong></td>
                                                            <td>US $10</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Lowest Spread</strong></td>
                                                            <td>0.9pip (EURUSD)</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Leverage</strong></td>
                                                            <td>Unlimited</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Commission</strong></td>

                                                            <td>$ 0</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Description</strong></td>
                                                            <td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient </td>
                                                        </tr>

                                                        <tr>

                                                            <td><strong>field </strong></td>
                                                            <td>value</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="modal-footer ">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>

                                <div class="card ">
                                    <div class="card-header" style="background-color:royalblue; color:white">
                                        <h3 class="card-title"><strong>Swap Free</strong></h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table ">
                                            <tbody>
                                                <tr>

                                                    <td><strong>Minimum Deposit</strong></td>
                                                    <td>US $10</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Lowest Spread</strong></td>
                                                    <td>0.9pip (EURUSD)</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Leverage</strong></td>
                                                    <td>Unlimited</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Commission</strong></td>

                                                    <td>$ 0</td>
                                                </tr>
                                                <tr>

                                                    <td><strong>Description</strong></td>
                                                    <td> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient</td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer" style="text-align: center">
                                        <button type="button" class="btn " style="border:none; color:black" data-toggle="modal" data-target="#modal-show-4">
                                            <strong>Learn More</strong>
                                        </button>

                                    </div>
                                </div>
                                <div class="modal fade" id="modal-show-4">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Swap Free Account</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <table class="table ">
                                                    <tbody>
                                                        <tr>

                                                            <td><strong>Minimum Deposit</strong></td>
                                                            <td>US $10</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Lowest Spread</strong></td>
                                                            <td>0.9pip (EURUSD)</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Leverage</strong></td>
                                                            <td>Unlimited</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Commission</strong></td>

                                                            <td>$ 0</td>
                                                        </tr>
                                                        <tr>

                                                            <td><strong>Description</strong></td>
                                                            <td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient </td>
                                                        </tr>

                                                        <tr>

                                                            <td><strong>field </strong></td>
                                                            <td>value</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="modal-footer ">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>

                            </div><!-- right column -->
                        </div>
                    </div>
                </div>
            </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <%@include file="inc/footer.jsp"%> 
</body>
</html>

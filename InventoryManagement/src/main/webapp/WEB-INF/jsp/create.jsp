<!DOCTYPE html>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />

<div class="main-wrapper">
    <!-- create-invoice24:07-->
    <!--<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">-->

    <!--[if lt IE 9]>
                <script src="assets/js/html5shiv.min.js"></script>
                <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-12">
                    <h1>df</h1><br>
                    <center><h2>Consumer Invoice</h2></center>
                    <hr>
                    <h4 class="page-title">Create Invoice</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">

                </div>
                <div class="col-sm-9">
                    <form>
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Product Item <span class="text-danger">*</span></label>
                                    <select class="select">
                                        <option>Please Select</option>
                                        <option>Charles Ortega</option>
                                        <option>Denise Stevens</option>
                                        <option>Jennifer Robinson</option>
                                    </select>
                                </div>
                            </div>
<!--                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Department <span class="text-danger">*</span></label>
                                    <select class="select">
                                        <option>Select Department</option>
                                        <option>Dentists</option>
                                        <option>Neurology</option>
                                    </select>
                                </div>
                            </div>-->

                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input class="form-control" type="email">
                                </div>
                            </div>
<!--                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Tax</label>
                                    <select class="select">
                                        <option>Select Tax</option>
                                        <option>VAT</option>
                                        <option>GST</option>
                                        <option>No Tax</option>
                                    </select>
                                </div>
                            </div>-->
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Consumer Address</label>
                                    <textarea class="form-control" rows="3"></textarea>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Billing Address</label>
                                    <textarea class="form-control" rows="3"></textarea>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Invoice date <span class="text-danger">*</span></label>
                                    <div class="cal-icon">
                                        <input class="form-control datetimepicker" type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Due Date <span class="text-danger">*</span></label>
                                    <div class="cal-icon">
                                        <input class="form-control datetimepicker" type="text">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="table-responsive">
                                    <table class="table table-hover table-white">
                                        <thead>
                                            <tr>
                                                <th style="width: 20px">#</th>
                                                <th class="col-sm-2">Item</th>
                                                <th class="col-md-6">Description</th>
                                                <th style="width:100px;">Unit Cost</th>
                                                <th style="width:80px;">Qty</th>
                                                <th>Amount</th>
                                                <th> </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>
                                                    <input class="form-control" type="text" style="min-width:150px">
                                                </td>
                                                <td>
                                                    <input class="form-control" type="text" style="min-width:150px">
                                                </td>
                                                <td>
                                                    <input class="form-control" style="width:100px" type="text">
                                                </td>
                                                <td>
                                                    <input class="form-control" style="width:80px" type="text">
                                                </td>
                                                <td>
                                                    <input class="form-control form-amt" readonly="" style="width:120px" type="text">
                                                </td>
                                                <td><a href="javascript:void(0)" class="text-success font-18" title="Add"><i class="fa fa-plus"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>
                                                    <input class="form-control" type="text" style="min-width:150px">
                                                </td>
                                                <td>
                                                    <input class="form-control" type="text" style="min-width:150px">
                                                </td>
                                                <td>
                                                    <input class="form-control" style="width:100px" type="text">
                                                </td>
                                                <td>
                                                    <input class="form-control" style="width:80px" type="text">
                                                </td>
                                                <td>
                                                    <input class="form-control form-amt" readonly="" style="width:120px" type="text">
                                                </td>
                                                <td><a href="javascript:void(0)" class="text-danger font-18" title="Remove"><i class="fa fa-trash-o"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-hover table-white">
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td class="text-right">Total</td>
                                                <td style="text-align: right; padding-right: 30px;width: 230px">0</td>
                                            </tr>
                                            <tr>
                                                <td colspan="5" class="text-right">Tax</td>
                                                <td style="text-align: right; padding-right: 30px;width: 230px">
                                                    <input class="form-control text-right form-amt" value="0" readonly="" type="text">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="5" class="text-right">
                                                    Discount %
                                                </td>
                                                <td style="text-align: right; padding-right: 30px;width: 230px">
                                                    <input class="form-control text-right" type="text">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="5" style="text-align: right; font-weight: bold">
                                                    Grand Total
                                                </td>
                                                <td style="text-align: right; padding-right: 30px; font-weight: bold; font-size: 16px;width: 230px">
                                                    $ 0.00
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Other Information</label>
                                            <textarea class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-center m-t-20">
                            <button class="btn btn-info submit-btn m-r-15">Save & Send</button>
                            <button class="btn btn-primary submit-btn">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
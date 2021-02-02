<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>

<style>

    .table>tbody>tr>td, .table>tfoot>tr>td{
        vertical-align: middle;
    }
    @media screen and (max-width: 600px) {
        table#cart tbody td .form-control{
            width:20%;
            display: inline !important;
        }
        .actions .btn{
            width:36%;
            margin:1.5em 0;
        }

        .actions .btn-info{
            float:left;
        }
        .actions .btn-danger{
            float:right;
        }
    </style>
    <br><br>
    <div class="container-fluid" class="border border-warning" style="background-color: #E0FFFF">



        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-10">
                <hr>
                <h2><center>Order Details</center></h2><hr>
                <br><br>


                <!--                  <div class="card" style="background-color: #d1cbd4">
                                        <div class="card-body">
                                            <p class="fw-bold mt-1">My Order</p>
                                            <h4><b>5</b></h4>
                                            
                                            <a href="/sales/create" class="btn btn-primary btn-full text-left mt-3 mb-3"><i class="la la-plus"></i> Order Processing</a>
                                        </div>
                                        <div class="card-footer">
                                            <ul class="nav">
                                                <li class="nav-item"><a class="btn btn-default btn-link" href="#"><i class="la la-history"></i> History</a></li>
                                                <li class="nav-item ml-auto"><a class="btn btn-default btn-link" href="#"><i class="la la-refresh"></i> Refresh</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div><div class="col-md-4">
                                  
                                <div class="col-md-4">
                
                                </div>-->
                <table class="table-head-bg-default table-hover" border="2" width="45" cellspacing="1" id="sweetModal">
                    <thead>
                        <tr class="table">

                            <th>Product Code</th>
                            <th>Client Name</th>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>SellPrice</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>102</td> 
                            <td>Md Sorowar hossain</td> 
                            <td>Laptop</td> 
                            <td>5</td> 
                            <td>60000</td> 
                               <td>  <button id="singlebutton" name="singlebutton" class="btn btn-lg btn-warning"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"> <a href="/sales/view"> Order Processing</a></button></td> 
                        </tr>


                    </tbody>
                </table>
                <!--                <br><br>
                                <div class="form-group">        
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">Processing Order</button>
                                         
                                    </div>
                                </div>-->

            </div>

        </div>


    </div>



    <div class="row2" style="height:300px; ">
        <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
    </div>

<script>
    $.sweetModal({
        content: 'This is a success.',
        icon: $.sweetModal.ICON_SUCCESS
    });
//$('#myModal').on('shown.bs.modal', function () {
//  $('#myInput').trigger('focus');
//});


</script>


    <jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
    
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
  <div class="modal-dialog" role="document" >
    <div class="modal-content" style="background-color: #e1f5c4">
      <div class="modal-body" >
        <form>
            <div class="form-group">
                <label for="recipient-name" class="col-form-label"><h3>Client Added Successfully</h3></label>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
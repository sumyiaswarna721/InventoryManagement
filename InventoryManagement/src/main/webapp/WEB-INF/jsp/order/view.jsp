<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <h2><center>Order Product List</center></h2><hr>
            <br><br>
            <table class="table-head-bg-default table-hover" border="2" width="45" cellspacing="1" >
                <thead>
                    <tr class="table">


                        <th>Product Code</th>
                        <th>Product Name</th>
                        <th>Quantity</th>
                        <th>Action</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${map.purchaseList}">
                        <tr >


                            <td>${p.productCode}</td>
                            <td>${p.name}</td>
                            <td class="quantity" id="quantity">${p.quantity}</td>

                            <!--                            <td>
                                                            <a href="/purchase/edit/${p.id}">Details</a>
                                                            <a href="/purchase/delete/${p.id}">Process Order</a>
                                                        </td>-->
                        </tr>

                    </c:forEach>

                </tbody>
            </table>

        </div>


    </div>

    <div class="row2" style="height:450px; ">
        <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
    </div>

</div>


<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
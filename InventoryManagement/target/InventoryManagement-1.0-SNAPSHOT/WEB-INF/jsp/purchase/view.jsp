<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />

<!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<br><br>
<div class="container-fluid" class="border border-warning" style="background-color: #E0FFFF;text-align: center;" >
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <hr>
            <h2><center>Purchase Product List</center></h2><hr>

            <br><br> <br><br> <br>
<!--            <button class="btn btn-primary"><a href="/purchase/save" class="text-white"> + Create New Purchase</a></button><br><br>-->
            <table class="table-head-bg-primary table-hover" border="2" width="45" cellspacing="1" >
                <thead>
                    <tr class="table">

                        <th>Date</th>
                        <th>Product Code</th>
                        <th>Product Name</th>
                        <th>Description</th>
                        <th>Buy Price</th>
                        <th>Quantity</th>
                        <th>Sell Price</th>
                        <th>Total</th>
                        <th>Action</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${map.purchaseList}">
                        <tr >

                            <td>${p.date}</td>
                            <td>${p.productCode}</td>
                            <td>${p.name}</td>
                            <td>${p.description}</td>
                            <td class="buyPrice" id="unitprice">${p.buyPrice}</td>
                            <td class="quantity" id="quantity">${p.quantity}</td>
                            <td>${p.sellPrice}</td>
                            <td class="total" id="total">${p.quantity * p.buyPrice} </td>

                            <td>
                                <button class="btn btn-primary"><a href="/purchase/edit/${p.id}" style="color: green" class="text-white">Edit</a></button>
                                 <button class="btn btn-warning"><a href="/purchase/delete/${p.id}" style="color: lightcoral" class="text-white">Delete</a></button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </div>
        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-9">

                </div>
                <!--                    <div class="col-lg-3">
                                        Total Amount:<input type="text" value="${p.total}" class="col-sm-5"/> 
                                    </div>-->
            </div>
        </div>
    </div>
    <div class="row2" style="height:300px; ">

    </div>
</div>




<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
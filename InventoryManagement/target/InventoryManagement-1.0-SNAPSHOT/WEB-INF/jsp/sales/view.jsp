<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid" class="border border-warning" style="background-color: #E0FFFF">

    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <hr><br><br>
            <h2><center>Sales Product List</center></h2><hr><br>

            <table class="table-head-bg-warning table-hover" border="2" width="45" cellspacing="1">
                <thead>
                    <tr class="table">
                        <th>Action</th>

                        <th>Date</th>
                        <th>Product Code</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Buy Price</th>
                        <th>Quantity</th>
                        <th>Sell Price</th>
                        <th>Total</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${map.pList}">
                        <tr >
                            <td><button type="button" class="btn btn-warning text-white"  > <a href="/sales/edit/${p.id}">Invoice</a></button></td>


                            <td>${p.date}</td>
                            <td>${p.productCode}</td>
                            <td>${p.name}</td>
                            <td>${p.description}</td>
                            <td>${p.buyPrice}</td>
                            <td class="quantity" id="quantity">${p.quantity}</td>
                            <td class="sellPrice" id="unitprice">${p.sellPrice}</td>
                            <td class="total" id="total">${p.quantity * p.sellPrice} </td>

                            <td>
<!--                                <a href="/sales/create/${p.id}">Edit</a>-->
                                
                                <button id="singlebutton" name="singlebutton" class="btn btn-lg btn-warning"><a href="/sales/delete/${p.id}">Delete</a></button>
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

<script>

    function invoice(a, b, c) {
        alert(c);
    }
</script>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2><center>Purchase Product</center></h2>
<hr>
<div class="container-fluid" class="border border-warning" style="background-color: #F0FFFF">
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <center><br>
                <h2>All Product Stock Report</h2><hr><br>
            </center><br><br><br><br>
            <table class="table-head-bg-primary table-hover" border="2" width="45" cellspacing="1">
                <thead>
                    <tr class="table">
                        <th>Date</th>
<!--                        <th>Stock Action</th>-->
                        <th>Product Code</th>
                        <th>Product Name</th>
                        <th>Buy Price</th>
                      
                        <th>Sell Price</th>
                          <th>Stock Quantity</th>
<!--                        <th>Total</th>-->
<!--                        <th>Action</th>-->

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${map.pList}">
                        <tr>

                            <td>${p.date}</td>
<!--                            <td><b>${p.stockAction}</b></td>-->
                            <td>${p.productCode}</td>
                            <td>${p.name}</td>
                            <td>${p.buyPrice}</td>
                        
                            <td class="sellPrice" id="unitprice">${p.sellPrice}</td>
<!--                            <td class="total" id="total">${p.quantity * p.sellPrice} </td>-->
<!--                            <td>
                                <a href="/allStock/edit/${p.id}">Edit</a>
                                <a href="/allStock/delete/${p.id}">Delete</a>
                            </td>-->
    <td class="quantity" id="quantity">${p.quantity}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <!--  
        <div class="col-md-2">
          </div>-->

    </div>
    <div class="row2" style="height:300px; ">

    </div>

</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <h2><center>Sales Report</center></h2><br>
            <h2><center>Purchase Product List</center></h2>
            <h3 style="color: blue;"><center>Accounting Billing Inventory Software</center></h3>
            <hr><br><br>
            <table class="table" border="2" width="45" cellspacing="1">
                <thead>
                    <tr class="table">
                       
                        <th>Date</th>
                        <th>Item</th>
                       
                        <th>Description</th>
                        <th>Sell Price</th>
                        <th>Quantity</th>
                         <th>Unit</th>
                        <th>Total</th>
                        
<!--                         <th>Action</th>-->
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${map.invoiceList}">
                        <tr >
                            <td>${p.name}</td>
                            <td>${p.date}</td>
                            <td>${p.description}</td>
                            <td>${p.sellPrice}</td>
                            <td>${p.quantity}</td>
                            <td>${p.unit}</td>
                            <td>${p.total}</td>
                           

                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</div>


<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
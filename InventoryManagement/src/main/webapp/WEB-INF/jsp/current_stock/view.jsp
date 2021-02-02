<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2><center>Purchase Product</center></h2>
<hr>
<div class="container-fluid" class="border border-warning" style="background-color:#FFF8DC">
    <center>
        <h2 style="color: blue;">ProductWise Stock Report</h2>
        <hr>
    </center>
    <br>
    <div class="row" >
        <div class="col-md-2">
        </div>
        <div class="col-md-8">

            <form action="/currentStock/create">
                <div class="row">
                    <input type="hidden" class="form-control" id="productCode" name="productCode">
                    <input type="hidden" class="form-control"  id="name" name="name">
                    <div class="container mt-4">
                        <label for="name">Product Name:</label>
                        <select name="name" class="custom-select mb-3" id="selectCurrentStock">
                            <c:forEach items="${map.pList}" var="p">
                                <option value="${p.productCode}"> ${p.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <button type="button" class="btn btn-primary mt-3" id="btnSearch">Show</button>
            </form>
        </div>
        <div class="col-md-2">

        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-2">

        </div>
        <div class="col-md-10">

            <table class="table-head-bg-default table-hover" id="cmsTable" border="2" width="45" cellspacing="1">
                <thead>
                    <tr class="table">
                        <th>Product Code</th>
                        <th>Date</th>
                        <th>Product Name</th>
                        <th>Description</th>
                        <th>Buy Price</th>
                        <th>Sell Price</th>
                          <th>Quantity</th>
<!--                        <th>Total</th>-->
                        <!--<th>Action</th>-->
                    </tr>
                </thead>
                <tbody>

<!--                    <tr>
                        <td>${p.productCode}</td>
                        <td>${p.date}</td>
                        <td>${p.name}</td>
                        <td>${p.description}</td>
                        <td>${p.buyPrice}</td>
                        <td class="quantity" id="quantity">${p.quantity}</td>
                        <td class="sellPrice" id="unitprice">${p.sellPrice}</td>
                        <td class="total" id="total">${p.total} </td>
                    </tr>
                    <tr>
                        
                    </tr>-->
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
<script>
    $("#btnSearch").on("click", function () {
        $("#cmsTable tbody").empty();


        $.get("/currentStock/cms",
                {
                    name: $("#selectCurrentStock :selected").val()

                },
        function (data, status) {
            console.log(data);
            for (i = 0; i < data.length; i++) {
                var html = '<tr>';

                html += '<td>' + data[i].productCode + '</td>';
                html += '<td>' + data[i].date + '</td>';
                html += '<td>' + data[i].name + '</td>';
                html += '<td>' + data[i].description + '</td>';
                html += '<td>' + data[i].buyPrice + '</td>';
               
                html += '<td>' + data[i].sellPrice + '</td>';
                 html += '<td>' + data[i].quantity + '</td>';
//              html += '<td>' + data[i].action + '</td>';
//                html += '<td>' + data[i].total + '</td>';
                html += '</tr>';
                $("#cmsTable tbody").append(html);
            }

        });
    });
    
    
</script>
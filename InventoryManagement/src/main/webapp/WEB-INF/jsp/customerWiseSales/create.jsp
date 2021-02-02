<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />

<hr><br>
<div class="container-fluid" class="border border-warning" style="background-color:#7DFDFE;  margin-right: 75px; margin-top: auto; align-items: center">
    <br>
    <h2> <center>CustomerWise Sales Report</center> 
    </h2><hr><br>
    <div class="row" >
        <div class="col-md-2">
        </div>
        <div class="col-md-8">

            <form action="/customerWiseSales/create">

                <br>

                <input type="hidden" class="form-control" id="productCode" name="productCode">
                <input type="hidden" class="form-control"  id="name" name="name">
                <div class="container mt-4">
                    <label for="name">Consumer Name:</label>
                    <select name="name" class="custom-select mb-3" id="selectClient">
                        <c:forEach items="${map.pList}" var="p">

                            <option value="${p.pname}"> ${p.pname}</option>
                        </c:forEach>
                    </select>
                </div>

                <button type="button" class="btn btn-primary mt-4" id="btnSearch">Show</button>
            </form>
        </div>
        <div class="col-md-2">

        </div>
    </div>
    <br><br><br>
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <table class=" table-head-bg-default table-hover" id="cmsTable">
                <thead>
                    <tr>

                        <th>Date</th>
                        <th>Product Code</th>
                        <th>Consumer name</th>
                        <th>Product Name</th>
                        <th>Quantity</th>
                        <th>Buy Price</th>
                        <th>Sell Price</th>
                        <th>Total</th>
                    </tr>
                    <!--                    <tr>
                                            <td colspan="8"></td>
                                            <td class="total" id="total">${p.quantity * p.sellPrice} </td>
                                        </tr>-->
                    <tr>
                        <!--                    <td colspan="2"></td>
                                                <td colspan="2"></td> 
                                                <td colspan="2"></td>-->
                        <!--                    <td colspan="2">GRAND TOTAL</td> 
                                                <td colspan="2">0</td>-->
                    </tr>
                </thead>
                <tbody>

                </tbody>

            </table>
        </div>

    </div>
    <div class="row2" style="height:300px; ">

    </div>

</div>

<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />

<script>
    $("#btnSearch").on("click", function () {
        $("#cmsTable tbody").empty();
        $.get("/sales/cms",
                {
                    cname: $("#selectClient :selected").val()


                },
        function (data, status) {

            for (i = 0; i < data.length; i++) {
                var html = '<tr>';
//                html += '<td>' + data[i].id + '</td>';
                html += '<td>' + data[i].date + '</td>';
                html += '<td>' + data[i].productCode + '</td>';
                html += '<td>' + data[i].pname + '</td>';
                html += '<td>' + data[i].name + '</td>';
                html += '<td>' + data[i].quantity + '</td>';
                html += '<td>' + data[i].buyPrice + '</td>';
                html += '<td>' + data[i].sellPrice + '</td>';
                html += '<td>' + data[i].total + '</td>';
                html += '</tr>';
                $("#cmsTable tbody").append(html);
            }



        });
    });
</script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />

<hr><br>
<div class="container-fluid" class="border border-warning" style="background-color:lightgoldenrodyellow; margin-right: 75px; margin-top: auto; align-items: center">
    <br>
    <h2> <center>Sales Report</center></h2><hr>
    <br><br>
    <div class="row" >
        <div class="col-md-2">
        </div>
        <div class="col-md-8">

            <form action="/dailySales/create">
                <div class="row">
                    <div class="col">
                        Form:<input type="date" class="form-control" id="from" name="from">
                    </div>
                    <div class="col">
                        To:<input type="date" class="form-control" id="to" name="to">
                    </div>


                    <br>
                    <input type="hidden" class="form-control" id="productCode" name="productCode">
                    <input type="hidden" class="form-control"  id="name" name="name">
                    <div class="container mt-4">
                        <label for="name">Product Name:</label>
                        <select name="name" class="custom-select mb-3" id="selectProduct">
                            <c:forEach items="${map.pList}" var="p">
                                <option value="${p.productCode}"> ${p.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <button type="button"  class="btn btn-primary btn-lg" id="btnSearch">Show</button>
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
            <table class=" table-head-bg-default table-hover" id="rptTable">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Product Code</th>
                        <th>Product Name</th>
                        <th>Quantity</th>
                        <th>Buy Price</th>
                        <th>Sell Price</th>
                        <th>Total </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>

                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-md-2">

        </div>
    </div>
    <div class="row2" style="height:300px; ">

    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />

<script>
    $("#btnSearch").on("click", function () {
        $("#rptTable tbody").empty();


        $.get("/sales/rpt",
                {
                    from: $("#from").val(),
                    to: $("#to").val(),
                    productCode: $("#selectProduct :selected").val()

                },
        function (data, status) {

            for (i = 0; i < data.length; i++) {
                var html = '<tr>';
//                html += '<td>' + data[i].id + '</td>';
                html += '<td>' + data[i].date + '</td>';
                html += '<td>' + data[i].productCode + '</td>';
                html += '<td>' + data[i].name + '</td>';
                html += '<td>' + data[i].quantity + '</td>';
                html += '<td>' + data[i].buyPrice + '</td>';
                html += '<td>' + data[i].sellPrice + '</td>';
                html += '<td>' + data[i].total + '</td>';
                html += '</tr>';
                $("#rptTable tbody").append(html);
            }



        });
    });

    $('.row').each(function (i, n) {
        var total = (parseFloat($(n).children('.quantity')) * parseFloat($(n).children('.sellPrice')));
        $(n).children('.total').text(total);
    }).delay(1).queue(function () {
        var total = 0;
        $('.total').each(function (i, n) {
            total += parseFloat($(n).text());
        });
        $('#total').text(total);
    });

</script>
<div id="total"></div>
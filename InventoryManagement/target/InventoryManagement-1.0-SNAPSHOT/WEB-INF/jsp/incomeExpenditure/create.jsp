<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />


<div class="container-fluid" class="border border-warning" style="background-color: #B4CFEC;  margin-right: 75px; margin-top: auto; align-items: center">
    <br><br>
    <div class="row" >
        <div class="col-md-2">

        </div>
        <div class="col-md-8 col-md-offset-2">

            <div class="panel panel-default">

                <div class="panel panel-primary">

                    <form action="/incomeExpenditure/create">

                        <br>
                        <div class="text-center">
                            <h2 style="color:#2C3E50">Daily Income-Expenditure</h2><hr><br>
                            <h4 style="color:blue">Choose Report</h4>
                            <div class="input-group"><span class="input-group-addon"><span class="glyphicon glyphicon-tasks"></span></span>
                                <select class="form-control" id="selectProduct">
                                    <option value="Income" selected>Income</option>
                                    <option value="Expenses">Expenses</option>
<!--                                    <option value="Profit">Profit</option>-->
                                </select>
                            </div>
                            <br><br>  
                            <div class="customer" >
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                    <input type="date" class="form-control" id="date" name="date" placeholder="Date" />
                                </div>
                            </div>
                            <br><br>

                            <button type="button"  class="btn btn-primary btn-lg" id="btnSearch">Show</button><br><br> 
                        </div>
                    </form>
                </div> 
                <br>
                <div class="panel-body">    

                    <table class="table-head-bg-default table-hover" id="rptTable">
                        <thead>
                            <tr>
                                <th class="text-center" width="115px">Date </th>
                                <th class="text-center" width="115px">Product Code</th>
                                <th class="text-center" width="115px">Item Name</th>
                                <th class="text-center" width="115px">Quantity</th>
                                <th class="text-center" width="125px">Sell Price</th>
                                <th class="text-center" width="125px">Total</th>
                            </tr>
                        </thead>   
                        <tbody>
                            <tr>

                            </tr>
                        </tbody>
                        <tfoot>

                        </tfoot>
                    </table>
                </div>
                <br>
                <div class="text-center" >
                    <h3  for="Total" >Grand Total: </h3>
                    <h2 style="color:#0069d9" id="sum1"></h2>
                </div>
            </div>
        </div>
        <div class="col-md-2">

        </div>
    </div>
    <div class="row2" style="height:150px; ">

    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
<script>

    var sum = 0;

    $("#btnSearch").on("click", function () {
        $("#rptTable tbody").empty();


        $.get("/sales/rpt_1",
                {
                    date: $("#date").val(),
                    action: $("#selectProduct :selected").val()

                },
        function (data, status) {

            for (i = 0; i < data.length; i++) {
                var html = '<tr>';
                html += '<td>' + data[i].date + '</td>';
                html += '<td>' + data[i].productCode + '</td>';
                html += '<td>' + data[i].name + '</td>';
                html += '<td>' + data[i].quantity + '</td>';
                html += '<td>' + data[i].sellPrice + '</td>';
                html += '<td>' + data[i].total + '</td>';
                html += '</tr>';
                $("#rptTable tbody").append(html);
                sum += data[i].total;

//                console.log(sum);

            }

            console.log(sum);
            $("#sum1").text(sum);

        });
    });

    var sum = 0;

    $("#btnSearch").on("click", function () {
        $("#rptTable tbody").empty();


        $.get("/purchase/rpt_1",
                {
                    date: $("#date").val(),
                    action: $("#selectProduct :selected").val()

                },
        function (data, status) {

            for (i = 0; i < data.length; i++) {
                var html = '<tr>';
                html += '<td>' + data[i].date + '</td>';
                html += '<td>' + data[i].productCode + '</td>';
                html += '<td>' + data[i].name + '</td>';
                html += '<td>' + data[i].quantity + '</td>';
                html += '<td>' + data[i].sellPrice + '</td>';
                html += '<td>' + data[i].total + '</td>';
                html += '</tr>';
                $("#rptTable tbody").append(html);
                sum += data[i].total;

//                console.log(sum);

            }

            console.log(sum);
            $("#sum1").text(sum);

        });
    });





</script>
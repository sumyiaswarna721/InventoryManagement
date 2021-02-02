<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
<br><br><br>
<div class="container-fluid" style="background-color:#BDEDFF" >
    <h1 class=""><center>Profit Report</center></h1><hr>
    <br><br><br>
    <br><br><br>
    <div class="row">
        <div class="col-md-2">

        </div>

        <div class="col-lg-10" >
            <table class="table-head-bg-danger table-hover table-bordered-bd-default" id="aTable">
                <thead class="border-default" >
                    <tr class="align-content-center">

                        <th class="text-black">#</th>                          
                        <th class="text-black">Total Income </th>                          
                        <th class="text-black">Total Expenditure </th>
<!--                        <th class="text-black">Other Expenditure Amount</th>-->
                        <th class="text-black">Total Profit </th> 
<!--                         <th class="text-black">Action</th> -->
                    </tr>
                </thead>
                <tbody>

                <td>1</td>
              
                <td id="purchase">${map.total1}</td>
                  <td id="sales">${map.total}</td>
<!--                 <td id="expenditure">${map.expenditure}</td>-->
<!--                <td id="expenditure">${(200+(5/100))}</td>-->
                <td id="profit">1716000</td>
<!--                <td>
                                <a href="/sales/edit/${p.id}">Edit</a>
                    <a href="/profit/delete/${p.id}">Delete</a>
                </td>-->
                </tbody>
            </table>
        </div>

    </div>
    <div class="row2" style="height:400px; ">

    </div>

</div>


<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function () {
        var total = $("#total").text();
        var total1 = $("#total1").text();
//        var expenditure = $("#expenditure").text();
        var profit = ((parseInt(total) - (parseInt(total1))));
//        var profit = ((parseInt(sales) - (parseInt(purchase) + (parseInt(expenditure)))));
//        $("#profit").text(profit);

    });
    
 
//    $(document).ready(function () {
//        $('#aTable').DataTable();
//    });

    $(function () {
        $("#aTable").dataTable();
    });

</script>



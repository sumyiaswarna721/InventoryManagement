<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    @media print {
        .invoice {
            font-size: 11px!important;
            overflow: hidden!important
        }
</style>
<br><br>
<div class="container-fluid" class="border border-warning" style="background-color:#daf0ee ;text-align: center">
   
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <br><br>
            <h2><center>Client List</center></h2><hr><br>
          
            <div class="toolbar hidden-print">
                    <div class="text-left">
                        <button id="printInvoice" class="btn btn-primary"><i class="fa fa-print"></i> Print</button>
                        <button class="btn btn-primary"><i class="fa fa-file-pdf-o"></i> Export as PDF</button>
                    </div>
                <br>
                </div>
            <br>
            <table class="table-head-bg-primary table-hover" border="1" width="45" cellspacing="1">
                <thead>
                    <tr class="table">
                       
                        <th>Company Name</th>
                        <th>Proprietor Name</th>
                        <th>Phone Number</th>
                        <th>E-mail</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Manage</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${map.pList}">
                        <tr >
                           
                            <td>${p.cname}</td>
                            <td>${p.pname}</td>
                            <td>${p.phone}</td>
                            <td>${p.email}</td>
                            <td>${p.address}</td>
                            <td>${p.city}</td>
                            <td>
                               <button class="btn btn-primary"><a href="/client/edit/${p.id}" style="color: green" class="text-white">Edit</a></button>
                                 <button class="btn btn-warning"><a href="/client/delete/${p.id}" style="color: green" class="text-white">Delete</a></button>
     
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    $('#printInvoice').click(function () {
        Popup($('.invoice')[0].outerHTML);
        function Popup(data)
        {
            window.print();
            return true;
        }
    });

    function invoice(a) {
        alert(a);
    }

<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
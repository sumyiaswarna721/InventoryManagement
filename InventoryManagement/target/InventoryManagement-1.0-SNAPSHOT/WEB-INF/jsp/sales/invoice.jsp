<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #invoice{
        padding: 30px;

    }

    .invoice {
        position: relative;
        background-color: #FFF;
        min-height: 680px;
        padding: 15px
            border-color: #0056b3; 
    }

    .invoice header {
        padding: 10px 0;
        background-color: #FFF;
        margin-bottom: 20px;
        border-bottom: 1px solid #C63989;
        width:auto;
        border-color: #0056b3; 
    }

    .invoice .company-details {
        text-align: right
    }

    .invoice .company-details .name {
        margin-top: 0;
        margin-bottom: 0
    }

    .invoice .contacts {
        margin-bottom: 20px
    }

    .invoice .invoice-to {
        text-align: left
    }

    .invoice .invoice-to .to {
        margin-top: 0;
        margin-bottom: 0
    }

    .invoice .invoice-details {
        text-align: right
    }

    .invoice .invoice-details .invoice-id {
        margin-top: 0;
        color: #3989c6
    }

    .invoice main {
        padding-bottom: 50px
    }

    .invoice main .thanks {
        margin-top: 80px;
        font-size: 2em;
        margin-bottom: 50px
    }

    .invoice main .notices {
        padding-left: 6px;
        border-left: 6px solid #3989c6
    }

    .invoice main .notices .notice {
        font-size: 1.2em
    }

    .invoice table {
        width: 100%;
        border-collapse: collapse;
        border-spacing: 0;
        margin-bottom: 20px
    }

    .invoice table td,.invoice table th {
        padding: 15px;
        background: #eee;
        border-bottom: 1px solid black
    }

    .invoice table th {
        white-space: nowrap;
        font-weight: 400;
        font-size: 16px;
        background: #d9edf7;
        border-bottom: 1px solid black
    }

    .invoice table td h3 {
        margin: 0;
        font-weight: 400;
        color: #FFF;
        font-size: 1.2em
            border-bottom: 1px solid black
    }

    .invoice table .qty,.invoice table .total,.invoice table .unit {
        text-align: right;
        font-size: 1.2em
            border-bottom: 1px solid black
    }

    .invoice table .no {

        font-size: 1.6em;

        border-bottom-color: black
    }

    .invoice table .unit {
        background:#aaa   
    }

    .invoice table .total {
        background:#aaa 

            border:black;
    }

    .invoice table tbody tr:last-child td {
        border: black
    }

    .invoice table tfoot td {
        background: 0 0;
        border-bottom: black;
        white-space: nowrap;
        text-align: right;
        padding: 10px 20px;
        font-size: 1.2em;
        border-bottom: 1px solid black
    }

    .invoice table tfoot tr:first-child td {
        border-top: black
    }

    .invoice table tfoot tr:last-child td {
        color: #3989c6;
        font-size: 1.4em;
        border-top: 1px solid 
    }

    .invoice table tfoot tr td:first-child {
        border: none
    }

    .invoice footer {
        width: 100%;
        text-align: center;
        color: black;
        border-top: 1px solid #aaa;
        padding: 8px 0
    }

    @media print {
        .invoice {
            font-size: 11px!important;
            overflow: hidden!important
        }

        .invoice footer {
            position: absolute;
            bottom: 10px;
            page-break-after: always
        }

        .invoice>div:last-child {
            page-break-before: always
        }
    }
</style>


<!--Author      : @arboshiki-->

<hr><hr><hr><hr>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">

        </div>
        <div class="col-md-10">

            <div id="invoice">

                <div class="toolbar hidden-print">
                    <div class="text-right">
                        <button id="printInvoice" class="btn btn-info"><i class="fa fa-print"></i> Print</button>
                        <button class="btn btn-info"><i class="fa fa-file-pdf-o"></i> Export as PDF</button>
                    </div>
                    <hr>
                </div>
                <div class="invoice overflow-auto">
                    <div style="min-width: 600px">
                        <header>
                            <div class="row">
                                <div class="col">

                                    <img src="/resources/assets/img/cnature.jpg">
                                </div>
                                <div class="col company-details">
                                    <h2 class="name">
                                        <a target="_blank" href="https://lobianijs.com">
                                            SSB Limited
                                        </a>
                                    </h2>
                                    <div>455/A,Dhanmondi 27, AZ 85004</div>
                                    <div>Dhaka, Bangladesh</div>
                                    <div>ssbcompany@example.com</div>
                                </div>
                            </div>
                        </header>
                        <main>
                            <div class="row contacts">
                                <div class="col invoice-to">
                                    <div class="text-gray-light">INVOICE TO: </div>
                                    <h3 class="to"><a href="${p.cname}">${p.cname}</h3>
                                    <div class="pname"><a href="${p.pname}">${p.pname}</div>
                                    <div class="address"><a href="${p.address}">${p.address}</div>
                                    <div class="email"><a href="${p.email}">${p.email}</a></div>
                                    <div class="phone"><a href="${p.phone}">${p.phone}</a></div>
                                </div>
                                <div class="col invoice-details">
                                    <h1 class="invoice-id">INVOICE ${p.productCode}</h1>
                                    <div class="date">Date of Invoice: ${p.date}</div>
                                    <!--                                    <div class="date">Due Date: 30/10/2018</div>-->
                                </div>
                            </div><br><br><br>
                            <table border="2" cellspacing="0" cellpadding="0" column-border>
                                <thead>
                                    <tr>
                                        <th>Product Item</th>
                                        <th class="text-left">DESCRIPTION</th>
                                        <th class="text-right">Quantity</th>
                                        <th class="text-right">Price</th>
                                        <th class="text-right">TOTAL</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="no"> ${p.name}</td>
                                        <td class="text-left"> ${p.description} </td>
                                        <td class="quantity" id="quantity">${p.quantity}</td>
                                        <td class="sellPrice" id="unitprice">${p.sellPrice}</td>
                                        <td class="total" id="total">${p.quantity * p.sellPrice} </td>

                                    </tr>
                                    <tr>
                                        
                                    </tr>
                                   
                                <br>
                                <br><br>

                                </tbody>
                                <tfoot>

                                    <tr>
                                        <td colspan="2"></td>
                                        <td colspan="2">Discount 5%</td>
                                        <td>${(p.quantity * p.sellPrice) * 5/100} </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"></td>
                                        <td colspan="2">GRAND TOTAL</td>
                                        <td>${(p.quantity * p.sellPrice)-((p.quantity * p.sellPrice) * 5/100)} </td>
                                    </tr>
                                </tfoot>
                            </table>

                            <div class="thanks " >Thank you, <a href="${p.pname}">${p.pname}! </div>
                            <div class="notices">
                                <div>NOTICE:</div>
                                <div class="notice">A finance charge of 1.5% will be made on unpaid balances after 30 days.</div>
                            </div>
                        </main>
                        <footer>
                            Invoice was created on a computer and is valid without the signature and seal.
                        </footer>
                    </div>
                    <div></div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />

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


//    $("#total").each(function(){
//        var quantity = $("#quantity").val();
//        var sellprice = $("#sellprice").val();
//        
//        var total=parseFloat(quantity) * parseFloat(sellprice);
//        $("total").val(total);
//    });

//      $(".total").each(function() {
//        $('.total').val(parseFloat($('#quantity').val()) * parseFloat($('#sellprice').val()));
//        });


</script>

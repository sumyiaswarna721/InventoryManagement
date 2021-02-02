<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

    body{
        background-color: #25274d;
    }
    .contact{
        padding: 4%;
        height: 400px;
    }
    .col-md-3{
        background: #ff9b00;
        padding: 4%;
        border-top-left-radius: 0.5rem;
        border-bottom-left-radius: 0.5rem;
    }
    .contact-info{
        margin-top:10%;
    }
    .contact-info img{
        margin-bottom: 15%;
    }
    .contact-info h2{
        margin-bottom: 10%;
    }
    .col-md-9{
        background: #fff;
        padding: 3%;
        border-top-right-radius: 0.5rem;
        border-bottom-right-radius: 0.5rem;
    }
    .contact-form label{
        font-weight:600;
    }
    .contact-form button{
        background: #25274d;
        color: #fff;
        font-weight: 600;
        width: 25%;
    }
    .contact-form button:focus{
        box-shadow:none;
    }
</style>


<div class="container contact">
    <div class="row">
        <div class="col-md-3">
            <div class="contact-info">
                <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image"/>
                <h2>Contact Us</h2>
                <h4>We would love to hear from you !</h4>
            </div>
        </div>
        <div class="col-md-9">
<!--             <form action="/client/success" method="POST" id="sweetModal">-->
            <div class="contact-form">
                <div class="form-group">
                    <h2>Order Your Product</h2>

                </div><br><br>
                <input type="hidden" class="form-control" id="productCode" name="productCode" >
                <input type="hidden" class="form-control"  id="name" name="name" >
                <div class="form-group">
                    <label class="control-label col-sm-4" for="name">Product Name:</label>
                    <form action="/order/searchProduct" method="POST">
                        <div class="col-sm-10">        

                            <select name="pname" class="custom-select mb-3" id="selectProduct">
                                <c:forEach items="${map.pList}" var="p">
                                    <option value="${p.name}"> ${p.name}</option>
                                </c:forEach>
                            </select>
                            <input type="submit" value="search">
                        </div>
                    </form>
                </div>
                <div class="form-group">
                    <form action="">

                        <label class="control-label col-sm-2" for="productCode">Product Code</label>
                        <div class="col-sm-10">     
                            <input type="text" class="form-control" id="productCode" name="productCode" value="${map.p.productCode}"><br>
                        </div>
                        <label class="control-label col-sm-2" for="name">Product Name</label>
                        <div class="col-sm-10"> 
                            <input type="text" class="form-control"  id="name" name="name" value="${map.p.name}" ><br>
                        </div>
                        <label class="control-label col-sm-2" for="sellPrice">Sell Price</label>
                        <div class="col-sm-10">          
                            <input type="text" class="form-control" id="sellPrice" value="${map.p.sellPrice}" placeholder="Enter sellPrice" name="sellPrice">
                        </div>
                        <label class="control-label col-sm-2" for="quantity">Quantity</label>
                        <div class="col-sm-10">          
                            <input type="text" class="form-control" id="quantity" value="${map.p.quantity}" placeholder="Enter quantity" name="quantity">
                        </div>
                    </form>
                </div>

                <br><br>
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Place Order</button>

                    </div>
                </div>

            </div>
          
        </div>
    </div>                    
</div>
<script>
 
            $("#productCode").val($("#selectProduct :selected").val());
    $("#name").val($("#selectProduct :selected").text());
    $("#selectProduct").on("change", function () {
        $("#productCode").val($("#selectProduct :selected").val());
        $("#name").val($("#selectProduct :selected").text());
    });

    $.sweetModal({
        content: 'This is a success.',
        icon: $.sweetModal.ICON_SUCCESS
    });
</script>

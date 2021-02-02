                        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<div class="container-fluid">
    <div class="row" >
        <div class="col-md-3">
        </div>
        <div class="col-md-6 " >
            <form action="/sales/save" method="POST" class="form-horizontal">
               <fieldset>
                    <legend><h2><center>Sales Product</center></h2></legend><br>
                    <h3 style="color: blue;"><center>Accounting Billing Inventory Software</center></h3>
                    <hr>
                    <h2><center>Sales Product Update</center></h2>
                    <hr>
                  
                    <!--<div class="row">-->
                    <div class="form-group">
                        <label for="date">Date </label>
                        <input type="date" class="form-control" id="date" name="date" value="${p.date}">
                    </div>
                    <div class="form-group">
                        <label for="productCode">Product Code</label>
                        <input type="text" class="form-control" id="productCode" name="productCode" value="${p.productCode}">
                    </div>
                    <div class="form-group">
                        <label for="productCode">Product Name</label>
                        <input type="text" class="form-control" id="productCode" name="name" value="${p.name}">
                    </div>
<!--                     <div class="container mt-4">
                        <label for="name">Product Name:</label>
                        <select name="name" class="custom-select mb-3">
                            

                            <option selected value="${p.name}"> ${p.name}</option>
                            
                        </select>
                    </div>-->
                    <div class="form-group">
                        <label for="description">Description</label>
                        <input type="text" class="form-control" id="description" name="description" value="${p.description}">
                    </div>
                    <div class="form-group">
                        <label for="quantity">Quantity:</label>
                        <input type="text" class="form-control" id="quantity" name="quantity" value="${p.quantity}">
                    </div>
                    <div class="form-group">
                        <label for="buyPrice">Buy Price:</label>
                        <input type="text" class="form-control" id="buyPrice" name="buyPrice" value="${p.buyPrice}">
                    </div>
                    <div class="form-group">
                        <label for="sellPrice">Sell Price:</label>
                        <input type="text" class="form-control" id="sellPrice" name="sellPrice" value="${p.sellPrice}">
                    </div>

                    <button type="submit" class="btn btn-success">Sales Product</button>
                    <button type="button" class="btn btn-warning">Reset</button>
                    <button type="button" class="btn btn-danger">Cancel</button>
                </fieldset>
            </form>
        </div>

    </div>
    <div class="col-md-3">
    </div>
</div>


<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />


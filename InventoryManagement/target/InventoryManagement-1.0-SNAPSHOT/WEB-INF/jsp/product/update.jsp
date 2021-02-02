
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<hr><hr><br><br>
<div class="container-fluid" style="background-color: #b1dfbb;font-style: bold;font-size:larger">
    <div class="row">
        <div class="col-md-3">
            
        </div>
        <div class="col-md-6">

            <form action="/product/update" method="POST" class="form-horizontal">
                <fieldset>
                    <hr><br>
                    <h2><center>Products Entry</center></h2><hr>
                    
                     <div class="form-group">
                        <label class="control-label" for="id">ID</label>  
                        <div class="">
                            <input id="id" name="id" placeholder="" class="form-control input-md" required="" type="text" value="${p.id}">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="control-label" for="product_code">Product Code</label>  
                        <div class="">
                            <input id="product_code" name="productCode" placeholder="Product code" class="form-control input-md" required="" type="text" value="${p.productCode}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="product_name">Product Name</label>  
                        <div class="">
                            <input id="product_name" name="name" placeholder="Product name" class="form-control input-md" required="" type="text" value="${p.name}">
                        </div>
                    </div>
                    <!-- Textarea -->
                   <div class="form-group">
                        <label class="control-label"
                               for="description">Description</label>  
                        <div class="">
                            <input id="description" name="description" placeholder="description" class="form-control input-md" required="" type="text" value="${p.description}">

                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label"
                               for="unit">Unit</label>  
                        <div class="">
                            <input id="unit" name="unit" placeholder="Unit" class="form-control input-md" required="" type="text" value="${p.unit}">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label"
                               for="carton">Carton</label>  
                        <div class="">
                            <input id="carton" name="carton" placeholder="Carton" class="form-control input-md" required="" type="text" value="${p.carton}">

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="singlebutton"></label>
                        <div class="">
                            <button id="singlebutton" name="singlebutton" class="btn btn-info">Add Product</button>
                            <button id="singlebutton" name="singlebutton" class="btn btn-warning">Reset</button>
                            <button id="singlebutton" name="singlebutton" class="btn btn-danger">Cancel</button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
        <div class="col-md-3">

        </div>

    </div>

</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />




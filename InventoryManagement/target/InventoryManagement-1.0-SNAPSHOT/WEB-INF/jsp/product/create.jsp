<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />

<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <form action="/product/save" method="POST" class="form-horizontal" id="sweetModal">
                <fieldset>
                    <legend><h1><center>Products Entry</center></h1></legend>
                    <hr>
                    <div class="form-group">
                        <h2><center>Products Entry</center></h2>
                        <div class="form-group">
                        <label class="control-label" for="product_code">Product Code</label>  
                        <div class="">
                            <input id="product_code" name="productCode" placeholder="Product code" class="form-control input-md" required="" type="text" >
                        </div>
                    </div>
                        <label class="control-label" for="product_name">Product Name</label>  
                        <div class="">
                            <input id="product_name" name="name" placeholder="Product name" class="form-control input-md" required="" type="text">

                        </div>
                    </div>
                  
                    <div class="form-group">
                        <label class="control-label"
                               for="description">Description</label>  
                        <div class="">
                            <input id="description" name="description" placeholder="description" class="form-control input-md" required="" type="text" >

                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label"
                               for="unit">Unit</label>  
                        <div class="">
                            <input id="unit" name="unit" placeholder="Unit" class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="control-label"
                               for="carton">Carton</label>  
                        <div class="">
                            <input id="carton" name="carton" placeholder="Carton" class="form-control input-md" required="" type="text">

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="singlebutton"></label>
                        <div class="">
                           <button id="singlebutton" name="singlebutton" class="btn btn-primary"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Create Purchase</button>
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
<script>
    $.sweetModal({
        content: 'This is a success.',
        icon: $.sweetModal.ICON_SUCCESS
    }); 
    
</script>





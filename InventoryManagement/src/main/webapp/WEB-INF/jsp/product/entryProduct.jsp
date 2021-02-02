
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<hr><hr><br>
<div class="container-fluid"  style="background-color: #CFECEC;">
    <div class="row">
        <div class="col-md-3">

        </div>
        <div class="col-md-6">

            <form action="/product/save" method="POST"  id="sweetModal"> 
               
                <fieldset>   
                    <hr>
                    <h2><center>Create Product</center></h2><hr>
                    <div class="form-group">
                        <label class="control-label" for="product_code">Product Code</label>  
                        <div class="">
                            <input id="product_code" name="productCode" placeholder="Product code" class="form-control input-md" required="" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="product_name">Product Name</label>  
                        <div class="">
                            <input id="product_name" name="name" placeholder="Product name" class="form-control input-md" required="" type="text">
                        </div>
                    </div>
                    <!-- Textarea -->
                    <div class="form-group">
                        <label class="control-label" for="product_description">Product Brand & Description</label>
                        <div class="">                     
                            <textarea class="form-control" id="product_description" name="description"></textarea>
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
                              <button id="singlebutton" name="singlebutton" class="btn btn-primary"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Create Product</button>
                            <button id="singlebutton" name="singlebutton" class="btn btn-warning">Reset</button>
                            <button id="singlebutton" name="singlebutton" class="btn btn-danger">Cancel</button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
        <div class="col-md-3">
            <br><br><br>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="8"><img src="/resources/assets/img/nature.jpg"></div>
                
            </div>
        </div>

    </div>

</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />

<script>
    $.sweetModal({
        content: 'This is a success.',
        icon: $.sweetModal.ICON_SUCCESS
    });
//$('#myModal').on('shown.bs.modal', function () {
//  $('#myInput').trigger('focus');
//});


</script>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
  <div class="modal-dialog" role="document" >
    <div class="modal-content" style="background-color: #e1f5c4">
      <div class="modal-body" >
        <form>
            <div class="form-group">
                <label for="recipient-name" class="col-form-label"><h3>Product Added Successfully</h3></label>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



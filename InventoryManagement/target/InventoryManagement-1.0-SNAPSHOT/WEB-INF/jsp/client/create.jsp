<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<hr><br>
<div class="container-fluid" class="border border-warning" style="background-color:#daf0ee">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <form action="/client/save" method="POST" id="sweetModal">
                <fieldset>

                    <div class="form-group">
                        <h2>
                            <center>Create Consumer</center>
                        </h2><hr><br>
                        <label class="col-md-4 control-label" for="cname">Company Name</label>
                        <div class="">
                            <input id="cname" name="cname" class="form-control input-md"
                                   required="" type="text">
                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="pname">Proprietor Name</label>
                        <div class="">
                            <input id="pname" name="pname" class="form-control input-md"
                                   required="" type="text">
                        </div>
                    </div>
                    <!-- Textarea -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="phone">Phone Number</label>
                        <div class="">
                           <input id="phone" name="phone" class="form-control input-md"
                                   required="" type="text">
                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="email">E-mail</label>
                        <div class="">
                            <input id="email" name="email" 
                                   class="form-control input-md" required="" type="text">
                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="address">Address</label>
                        <div class="">
                            <input id="address" name="address" 
                                   class="form-control input-md" required="" type="text">
                        </div>
                    </div>
                    <!-- File Button -->
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="city">City</label>
                        <div class="">
                            <input id="city" name="city" 
                                   class="form-control input-md" required="" type="text">
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="col-md-4 control-label" for="singlebutton"></label>
                        <div class="">
                            
                            <button id="singlebutton" name="singlebutton" class="btn btn-primary"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Add Client</button>
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
                <label for="recipient-name" class="col-form-label"><h3>Client Added Successfully</h3></label>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
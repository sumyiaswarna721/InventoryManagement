
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />

<hr><br>
<div class="container-fluid"  class="border border-warning" style="background-color:#BDEDFF">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <form action="/purchase/save" method="POST" id="sweetModal">
                <fieldset><br>
                    <h2><center>Purchase Product</center></h2>
                    <hr>
                    <div class="form-group">
                        <label for="date">Date </label>
                        <input type="date" class="form-control" id="date" name="date">
                    </div>
                    <input type="hidden" class="form-control" id="productCode" name="productCode">
                    <input type="hidden" class="form-control"  id="name" name="name">
                    
                    <div class="container mt-4">
                        <label for="name">Product Name:</label>
                        <select name="name" class="custom-select mb-3" id="selectProduct">
                            <c:forEach items="${map.pList}" var="p">
                                <option value="${p.productCode}"> ${p.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                     <div class="container mt-4">
                            <label for="description">Product Brand & Description:</label>
                            <select name="description" class="custom-select mb-3" id="selectDescrip">
                                <c:forEach items="${map.pList}" var="p">

                                    <option value="${p.description}"> ${p.description}</option>
                                </c:forEach>
                            </select>
                        </div>
                    <div class="form-group">
                        <label for="quantity">Quantity:</label>
                        <input type="text" class="form-control" id="quantity" name="quantity">
                    </div>
                    <div class="form-group">
                        <label for="buyPrice">Buy Price:</label>
                        <input type="text" class="form-control" id="buyPrice" name="buyPrice">
                    </div>
                    <div class="form-group">
                        <label for="sellPrice">Sell Price:</label>
                        <input type="text" class="form-control" id="sellPrice" name="sellPrice">
                    </div>
                      <button id="singlebutton" name="singlebutton" class="btn btn-primary"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"> Create Purchase</button>
                    <button type="button" class="btn btn-warning">Reset</button>
                    <button type="button" class="btn btn-danger">Cancel</button>
                </fieldset>
            </form>
        </div>
        <div class="col-md-3">
            
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />

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
//$("#name").val($("#selectDescrip :selected").val());
//    $("#description").val($("#selectDescrip :selected").text());
//    $("#selectDescrip").on("change", function () {
//        $("#name").val($("#selectDescrip :selected").val());
//        $("#description").val($("#selectDescrip :selected").text());
//    })





</script>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
  <div class="modal-dialog" role="document" >
    <div class="modal-content" style="background-color: #e1f5c4">
      <div class="modal-body" >
        <form>
            <div class="form-group">
                <label for="recipient-name" class="col-form-label"><h3>Purchase Product Successfully</h3></label>
<!--         <i class="fa fa-refresh" aria-hidden="true"></i>-->
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

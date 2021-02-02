                        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />


<div class="container-fluid" class="border border-warning" style="background-color:  lightcyan" >
    <hr><hr><br>
    <div class="row" >
        <div class="col-md-3">
        </div>
        <div class="col-md-9">
            <form action="/sales/save" method="POST" id="sweetModal">
                <div class="col-md-9 " id="div1" >
                    <fieldset>
                        <h2 style="color: blue;"><center>Sales Product</center></h2>
                        <hr>
                        <!--<div class="row">-->
                        <div class="form-group">
                            <label for="date">Date </label>
                            <input type="date" class="form-control" id="date" name="date">
                        </div>

                        <input type="hidden" class="form-control" id="productCode" name="productCode">
                        <input type="hidden" class="form-control"  name="name" id="name">
                        <div class="container mt-4">
                            <label for="name">Product Name:</label>
                            <select name="" class="custom-select mb-3" id="selectProduct">
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

                        <button type="submit" class="btn btn-info" id="btnproceed" ></i>Sales Product</button>
                        <!--                    <button type="button" class="btn btn-warning">Reset</button>
                           
                        <button type="button" class="btn btn-danger">Cancel</button>-->
                        
                       
                    </fieldset>

                </div>
                <div class="col-md-9" id="div2">
                    <fieldset>
                        <!-- Form Name -->
                        <hr>
                        <hr>
                        <!-- Text input-->
                        <div class="form-group">
                            <h2>
                                <center>Add Consumer</center>
                            </h2><hr><br><br>
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
                                <textarea class="form-control" id="phone" name="phone"></textarea>
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
                                <button id="singlebutton" name="singlebutton" class="btn btn-primary"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Create Sales</button>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </form>

        </div>
        <div class="col-md-3">
        </div>
    </div>
    <!--    <div class="col-md-3">
        </div>-->
</div>


<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />

<script>
    $("#productCode").val($("#selectProduct :selected").val());
    $("#name").val($("#selectProduct :selected").text());
    $("#selectProduct").on("change", function () {
        $("#productCode").val($("#selectProduct :selected").val());
        $("#name").val($("#selectProduct :selected").text());
    });


    $("#div2").hide();

    $("#btnproceed").on("click", function () {
        $("#div1").hide();
        $("#div2").show();
    });
    
     $.sweetModal({
        content: 'This is a success.',
        icon: $.sweetModal.ICON_SUCCESS
    });

</script>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
    <div class="modal-dialog" role="document" >
        <div class="modal-content" style="background-color: #e1f5c4">
            <div class="modal-body" >
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label"><h3>Sales Product Successfully</h3></label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />

<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<hr><br>
<div class="container-fluid" class="border border-warning" style="background-color: #E0FFFF">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <form action="/client/update" method="POST" >
                <fieldset>
                    <div class="form-group">
                        <h2>
                            <center>Add Consumer</center>
                        </h2>
                        <label class="col-md-4 control-label" for="cname">Company Name</label>
                        <div class="">
                            <input id="cname" name="cname" class="form-control input-md" required="" type="text" value="${p.cname}">

                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="pname">Proprietor Name</label>
                        <div class="">
                            <input id="pname" name="pname" class="form-control input-md" required="" type="text"  value="${p.pname}">

                        </div>
                    </div>
                    <!-- Textarea -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="phone">Phone No</label>
                        <div class="">
                            <input id="phone" name="phone" class="form-control input-md" required="" type="text"  value="${p.phone}">

                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="email">E-mail</label>
                        <div class="">
                            <input id="email" name="email" 
                                   class="form-control input-md" required="" type="text" value="${p.email}">
                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="address">Address</label>
                        <div class="">
                            <input id="address" name="address" 
                                   class="form-control input-md" required="" type="text" value="${p.address}">
                        </div>
                    </div>
                    <!-- File Button -->
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="city">City</label>
                        <div class="">
                            <input id="city" name="city" 
                                   class="form-control input-md" required="" type="text" value="${p.city}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="singlebutton"></label>
                        <div class="">
                            <button id="singlebutton" name="singlebutton" class="btn btn-primary">Add Product</button>
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
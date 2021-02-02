
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">

    <div class="row">
        <div class="col-md-2">

        </div>
        <div class="col-md-10">

            <!--<div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12 padding">-->

            <div class="card">
                <div class="card-header p-4">
                    <a class="pt-2 d-inline-block" href="invoice/save" data-abc="true">SSBD Company</a>

                    <div class="float-left">
                        Invoice No :<input type="text" name="id"><br><br>
                        <h2>Client Invoice</h2>
                    </div>

                    <div class="float-right">
                        Invoice No :<input type="text" name="id"><br><br>
                        Date :<input type="date" name="date">
                    </div>
                </div>
                <div class="card-body">
                    <div class="row mb-4">
                        <div class="col-sm-6">
                            <h5 class="mb-3">From:</h5>
                            <h3 class="text-dark mb-1">Sumyia Ferdouse Swarna</h3>
                            <div>SSBD Company</div>
                            <div>27/A, Dhanmondi</div>
                            <div>Email: sumyiaswarna721@gmail.com</div>
                            <div>Phone: 01768152721</div>
                        </div>
                        <div class="col-sm-6">
                            <h5 class="mb-3">To:</h5>
                            <div><input type="text" placeholder="Name" class="form-control" id="name" name="name"/></div><br>
                            <div><input type="text" placeholder="Company Name" class="form-control" /></div><br>
                            <div><input type="text" placeholder="Address" class="form-control" /></div><br>
                            <div><input type="text" placeholder="Email" class="form-control" /></div> <br><br>
                        </div>


                        <form action="/invoiceSales/save" method="post" class="form-horizontal">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-highlight">
                                    <div class="container mt-2">
                                        <label for="name">Product Name:</label>
                                        <select name="name" class="custom-select mb-3" id="selectProduct">
                                            <c:forEach items="${map.pList}" var="p">

                                                <option value="${p.productCode}"> ${p.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    
                                    <thead>
                                   
                                    <th>Description</th>
                                    <!--                                    <th>Stock</th>-->
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Unit</th>
                                    <th>Total</th>

                                    </thead>
                                    <tbody>
                                       
                                        <tr>
                                            
                                    

                                    <td><input type="text" class="form-control" /></td>
                                    <td><input type="text" class="form-control" /></td>
                                    <td><input type="text" class="form-control" /></td>
                                    <td><input type="text" class="form-control" /></td>
                                    <td><input type="text" class="form-control" /></td>
                                      <td><input type="text" class="form-control" /></td>


                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<br><br><br>
<div class="container-fluid" class="border border-warning" style="background-color:#E0FFFF;text-align: center;">
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">

            <h2><center>Product List</center></h2><hr><br>
<br><br><br><br>
            <table class="table-head-bg-primary" border="2" width="45" cellspacing="1">
                <thead>
                    <tr class="table">

                        <th>Product Code</th>
                        <th>Product Name</th>
                        <th>Description</th>
                        <th>Unit</th>
                        <th>Carton</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${map.pList}">
                        <tr >

                            <td>${p.productCode}</td>
                            <td>${p.name}</td>
                            <td>${p.description}</td>
                            <td>${p.unit}</td>
                            <td>${p.carton}</td>
                            <td>
                                <a href="/product/edit/${p.id}">Edit</a>
                                <a href="/product/delete/${p.id}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row2" style="height:300px; ">

    </div>
</div>


<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
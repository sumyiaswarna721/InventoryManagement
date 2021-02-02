<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-9">
            <h2><center>Sales Report</center></h2>
            <h2><center>User List</center></h2>
            <h3 style="color: blue;"><center>Accounting Billing Inventory Software</center></h3>
            <hr><br><br>
            <table class="table" border="1" width="45" cellspacing="1">
                <thead>
                    <tr class="table">
                        <th>First Name </th>
                        <th>Last Name</th>
                        <th>Date Of Birth </th>
                        <th>Email</th>
                        <th>Gender</th>
                        <th>Phone Number</th>
                        <th>Address</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${map.pList}">
                        <tr >
                        
                            <td>${p.fname}</td>
                            <td>${p.lname}</td>
                            <td>${p.dob}</td>
                            <td>${p.email}</td>
                            <td>${p.gender}</td>
                            <td>${p.phone}</td>
                            <td>${p.address}</td>
                            <td>
                                <a href="/login/edit/${p.id}">Edit</a>
                                <a href="/login/delete/${p.id}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
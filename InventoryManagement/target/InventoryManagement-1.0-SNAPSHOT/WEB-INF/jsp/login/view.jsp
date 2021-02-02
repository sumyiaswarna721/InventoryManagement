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
                                        <th>Id</th>
                                        <th>User Type</th>
                                        <th>User Name</th>
                                        <th>Email address</th>
                                        <th>Password</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="p" items="${map.pList}">
                                        <tr >
                                            <td>${p.id}</td>
                                            <td>${p.userType}</td>
                                            <td>${p.userName}</td>
                                            <td>${p.email}</td>
                                            <td>${p.pwd}</td>
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
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .container {
        padding: 2rem 0rem;

    }

    h4 {
        margin: 2rem 0rem 1rem;
    }

    .table-image {
        td, th {
            vertical-align: middle;
        }
    }
</style>

<div class="container-fluid" class="border border-default" style="background-color:  #daf0ee;text-align: center" >

    <br><br><br><br>
    <h2><center> Vendor List</center></h2><hr>
    <br><br>
    <div class="row">
        <div class="col-md-2">
        </div>

        <div class="col-10">
            <table class=" table-head-bg-primary table-hover table-bordered-bd-default table-image" style="height: 5px;">
                <thead>
                    <tr>

                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">City</th>
                        <th scope="col">Phone Number</th>
                        <th scope="col">Zip</th>
                        <th scope="col">Image</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${map.pList}" var="p">
                        <tr>
                            <td>${p.fname}</td>
                            <td>${p.lname}</td>
                            <td>${p.email}</td>
                            <td>${p.city}</td>
                            <td>${p.phone}</td>
                            <td>${p.zip}</td>
                            <td class="w-25,h-5" >
                                <img width="120px" height="120px" src="/resources/vendor/img/${p.image}">
                            </td>

                            <td>
                                <!--                                <a href="" class="btn btn-primary a-btn-slide-text">
                                                                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                                                                    <span><strong>Edit</strong></span>            
                                                                </a>-->
                                <a href="/vendor/edit/${p.id}" class="btn btn-primary a-btn-slide-text">
                                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                                    <span><strong>Edit</strong></span>    
                                </a>

                                <a href="/vendor/delete/${p.id}" class="btn btn-warning a-btn-slide-text">
                                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                                    <span><strong>Delete</strong></span>    
                                </a>

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
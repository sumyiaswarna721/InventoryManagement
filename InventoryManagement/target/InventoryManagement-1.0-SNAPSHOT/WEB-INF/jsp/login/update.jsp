 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<p>${map.status}</p>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-4">
            <div class="py-5">
                <form action="/login/edit" method="GET"> 
                    <input type="text" name="id"/>
                    <input type="text" name="userType"/>
                    <input type="text" name="userName"/>
                    <input type="text" name="email"/>
                    <input type="text" name="pwd"/>
                    <input class="btn-info" type="submit" value="Search"/>
                </form>
            </div>
            <div>
                <form action="/login/update" method="POST"> 
                    ID : <input class="input-group" type="text" name="id" value="${p.id}"/><br/>
                    Name : <input class="input-group" type="text" name="name" value="${p.userType}"/><br/>
                    Description : <input class="input-group" type="text" name="description" value="${p.userName}"/><br/>
                    Unit : <input class="input-group" type="text" name="unit" value="${p.email}"/><br/>
                    Carton : <input class="input-group" type="text" name="carton" value="${p.pwd}"/><br/>

                    <input class="btn-info" type="submit" value="Update"/>
                </form>
            </div>
        </div>
        <div class="col-md-6">

        </div>

    </div>

</div>
<jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />




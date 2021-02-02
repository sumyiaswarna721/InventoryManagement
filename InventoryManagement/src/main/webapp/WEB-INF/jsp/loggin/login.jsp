<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />
<hr><br>
<div class="container-fluid" class="border border-warning" style="background-color:#7DFDFE">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <form method="POST" id="sweetModal" action="/login">

                <table>
                    <tr>
                        <td>User:</td>
                        <td><input type='text' name='username' value=''>
                        </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type='password' name='password' />
                        </td>
                    </tr>
                    <tr>
                        <td><input name="submit" type="submit"
                                   value="submit" />
                        </td>
                        <td><input name="reset" type="reset" />
                        </td>
                    </tr>
                </table>

            </form>
        </div>
            <jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
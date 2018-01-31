<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Registry Login</title>
    <link rel="stylesheet prefetch" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
</head>
<div align="center">
    <h1>Welcome to our site</h1>
</div>
<table width="300" align="center">
    <tr>
        <td>
            <div class="wrapper" align="center">
                <form:form action="${pageContext.request.contextPath}/loginauth" method="post"
                           ccssClass="form-signin">
                    <h2 class="form-signin-heading">Please login</h2>
                    <input type="text" class="form-control" name="username" placeholder="Username"
                           required=""/>
                    <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
                    <label class="error-label">
                        <c:if test="${param.error != null}">
                            Wrong username or password
                        </c:if>
                    </label>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
                </form:form>
                <c:if test="${result == null}">
                <a href="${pageContext.request.contextPath}/newuserform">Create new account</a>
                </c:if>
                <c:if test="${result == 'ok'}">
                    New account created. Please login.
                </c:if>
                <c:if test="${param.logout != null}">
                    <h3>You have been logged out</h3>
                </c:if>
            </div>
        </td>
    </tr>
</table>
</body>
</html>

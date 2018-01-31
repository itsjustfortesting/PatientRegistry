<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create new user</title>
</head>
<body>
<table align="center">
    <form:form action="${pageContext.request.contextPath}/adduser" modelAttribute="users" method="post">
        <tr>
            <td colspan="2" align="center"><h3>Create new user</h3></td>
        </tr>
        <tr>
            <td>Username:</td>
            <td><form:input path="username"/><form:errors path="username"/> </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:password path="password"/><form:errors path="password"/></td>
        </tr>
        <tr>
            <td>First name:</td>
            <td><form:input path="firstName"/><form:errors path="firstName"/></td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td><form:input path="lastName"/><form:errors path="lastName"/></td>
        </tr>
        <c:if test="${formerror == 'duplicate'}">
        <tr>
            <td colspan="2" align="center"><div style="color: red">Username already exists</div></td>
        </tr>
        </c:if>
        <c:if test="${formerror == 'other'}">
            <tr>
                <td colspan="2" align="center"><div style="color: red">Something went wrong</div></td>
            </tr>
        </c:if>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Create user"></td>
        </tr>

        <input type="hidden" name="enabled" value="1"/>
    </form:form>

</table>
</body>
</html>

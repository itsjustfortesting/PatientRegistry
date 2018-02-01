<html>
<body>
<div id="centerColumn">
    <div id="header">
    <h1>Patient Registration Service</h1>
    <h2>You are logged as: <b><security:authentication property="principal.username"/></b><br>
    <form:form action="${pageContext.request.contextPath}/logout" method="post"><a href="${pageContext.request.contextPath}/user-settings" class="userButton">Settings</a> | <button type="submit" class="userButton">Logout</button></form:form></h2>
    </div>
</body>
</html>

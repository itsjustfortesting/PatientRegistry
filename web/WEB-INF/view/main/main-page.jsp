<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Registration Service</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css"/>
</head>
<body>
<%-- Header--%>
<%@include file="../shared/main-header.jsp" %>

<%-- Menu --%>
<%@include file="../shared/main-menu.jsp" %>
<!-- Meat -->
<h2>centerColumn</h2>
<p>Augur et fulgente decorus arcu Phoebus acceptusque novem Camenis, qui salutari levat arte fessos corporis artus,
    si Palatinas videt aequos aras remque Romanam Latiumque felix alterum in lustrum meliusque semper prorogat
    aevom, quaeque Aventinum tenet Algidumque, quindecim Diana preces virorum curat et votis puerorum amicas
    adplicat auris.</p>
<h2>Header 2</h2>
<p><a href="#">Link Item</a></p>
<ul>
    <li>List Item</li>
    <li>List Item</li>
    <li>List Item
        <ul>
            <li>List Item</li>
            <li>List Item</li>
        </ul>
    </li>
</ul>
<blockquote>
    <p><strong>blockquote</strong><br/>
        Augur et fulgente decorus arcu Phoebus acceptusque novem Camenis, qui salutari levat arte fessos corporis
        artus.</p>
</blockquote>
<!-- Footer -->
<%@include file="../shared/main-footer.jsp" %>
</div>
</body>
</html>

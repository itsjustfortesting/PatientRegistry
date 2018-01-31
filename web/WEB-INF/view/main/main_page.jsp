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
<div id="centerColumn">
    <div id="header">
        <h1>Patient Registration Service</h1>
        <h2>You are logged as: <b><security:authentication property="principal.username"/></b><br>
        <form:form action="${pageContext.request.contextPath}/logout" method="post"><button type="submit" class="linkButton">Logout</button></form:form></h2>
    </div>
    <!--//end #headern//-->
    <div id="nav">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Gallery</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </div>
    <!--//end #nav//-->
    <h2>centerColumn</h2>
    <p>Augur et fulgente decorus arcu Phoebus acceptusque novem Camenis, qui salutari levat arte fessos corporis artus, si Palatinas videt aequos aras remque Romanam Latiumque felix alterum in lustrum meliusque semper prorogat aevom, quaeque Aventinum tenet Algidumque, quindecim Diana preces virorum curat et votis puerorum amicas adplicat auris.</p>
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
        <p><strong>blockquote</strong><br />
            Augur et fulgente decorus arcu Phoebus acceptusque novem Camenis, qui salutari levat arte fessos corporis artus.</p>
    </blockquote>
    <div id="footer"> <a target="_blank" href="http://validator.w3.org/" title="W3C HTML Validation">XHTML</a> | <a target="_blank" href="http://jigsaw.w3.org/css-validator/validator-uri.html" title="W3C CSS Validation">CSS</a> | <a target="_blank" href="http://www.w3.org/TR/WCAG10/" title="Web Content Accessibility Guidelines">WCAG</a> | <a target="_blank" rel="nofollow" href="http://www.csstinderbox.com">The CSS Tinderbox</a> </div>
    <!--//end #footer//-->
</div>
</body>
</html>

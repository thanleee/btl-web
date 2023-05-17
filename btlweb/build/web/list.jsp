<%-- 
    Document   : list
    Created on : May 11, 2023, 1:19:22 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:forEach var="o" items="${requestScope.data}" >
        <a href="update.jsp?id=${o.id}">update</a>
        <p>${o.id}</p>
        </c:forEach>
    </body>
</html>

<%-- 
    Document   : list
    Created on : May 10, 2023, 1:16:28 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>list!</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Describe</th>
            </tr>
            <c:forEach items="${requestScope.product}" var="p">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.name}</td>
                </tr>
                    
            </c:forEach>    
        </table>
    </body>
</html>

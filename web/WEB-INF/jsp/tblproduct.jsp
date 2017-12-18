<%-- 
    Document   : tblproduct
    Created on : Dec 17, 2017, 8:21:45 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>  
        <h1>Product</h1><br/>
        <c:forEach var="c" items="${tblproduct}">
            <p>
                <a href="${c.id}"> ${c.namaproduk}</a> 
                <a href="${pageContext.request.contextPath}/order/add/${c.id}">Add to cart</a>
            </p>
        </c:forEach>
    </body>
</html>

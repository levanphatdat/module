<%--
  Created by IntelliJ IDEA.
  User: DAT LE
  Date: 13/02/2023
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
</head>
<body>
<p>
    <a href="/product">Back to product list</a>
</p>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Product Description</td>
        <td>Producer</td>
    </tr>
    <c:forEach items='${requestScope["product"]}' var="product">
        <tr>
            <td><a href="/product?action=view&id= ${product.getId}">${product.getId}</a></td>
            <td> ${product.GetName}</td>
            <td>${product.getPrice}</td>
            <td>${product.getProductDescription}</td>
            <td>${product.getProducer}</td>
            <td><a href="/product?action=edit&id=${product.getId()}">Edit</a></td>
            <td><a href="/product?action=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: DAT LE
  Date: 10/02/2023
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>List of Customer</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="js/bootstrap.js">
  </head>
  <body class=" container-fluid">
<h1>List of Customer</h1>
  <table class="table">
    <thead>
    <tr>
      <th>Tên</th>
      <th>Ngày sinh</th>
      <th>Địa chỉ</th>
      <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
<c:forEach var="customer" items="${customerList}" varStatus="loop">
  <tr>
    <th>${customer.name}</th>
    <th>${customer.dayOfBirth}</th>
    <th>${customer.address}</th>
    <th><img src="${customer.picture}" alt="" width="100px"></th>
  </tr>
</c:forEach>
    </tbody>
  </table>
  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: DAT LE
  Date: 09/02/2023
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="js/bootstrap.js">
</head>
<body>
<form action="/display-discount" class="container-fluid">
    <h1 class="container-fluid row mx-5 px-0">Result</h1>
    <div class="row">
        <div class="col-2 fw-bold">
            <div class="m-2 ms-5">Product Description :</div>
            <div class="m-2 ms-5">List Price :</div>
            <div class="m-2 ms-5">Discount Percent :</div>
            <div class="m-2 ms-5">Discount Amount :</div>
            <div class="m-2 ms-5">Discount Price :</div>
        </div>
        <div class="col-2">
            <div class="my-2">${productDescription}</div>
            <div class="my-2">${listPrice}</div>
            <div class="my-2">${discountPercent} %</div>
            <div class="my-2">${discountAmount}</div>
            <div class="my-2">${discountPrice}</div>
        </div>
    </div>
</form>
</body>
</html>

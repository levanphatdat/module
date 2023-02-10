<%--
  Created by IntelliJ IDEA.
  User: DAT LE
  Date: 09/02/2023
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="js/bootstrap.js">
</head>
<body>
<h1 class="container-fluid row mx-5">Product Discount Calculator</h1>

<form action="/display-discount" method="post" class="container-fluid row">
    <div class="col-2 fw-bold">
        <label for="product_description" class="m-2 ms-5">Product Description :</label><br>
        <label for="list_price" class="m-2 ms-5">List Price :</label><br>
        <label for="discount_percent" class="m-2 ms-5">Discount Percent :</label><br>
        <button type="submit" class="btn btn-primary m-2 ms-5">Calculate Discount</button>
    </div>
    <div class="col-2">
        <input type="text" class="form-control-sm my-1" id="product_description" name="product_description">
        <input type="text" class="form-control-sm my-1" id="list_price" name="list_price">
        <input type="text" class="form-control-sm my-1" id="discount_percent" name="discount_percent">
    </div>
</form>
</body>
</html>


<%--
  Created by IntelliJ IDEA.
  User: DAT LE
  Date: 10/02/2023
  Time: 3:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="js/bootstrap.js">
</head>
<body class="container-fluid">
<h1>Simple Calculator</h1>
<form action="/calculator" method="get" class="container-fluid row">
    <div class="col-2 fw-bold">
        <label for="first-operand" class="m-2 ms-5">First Operand :</label>
        <label for="operator" class="m-2 ms-5">Operator :</label>
        <label for="second-operand" class="m-2 ms-5">Second Operand :</label>
    </div>
    <div class="col-2">
        <input type="text" class="form-control-sm my-1 w-100" id="first-operand" name="first-operand">
        <select class="form-select my-1" aria-label="Default select example" name="operator">
            <option selected id="operator">Open this select menu</option>
            <option value="addition">Addition</option>
            <option value="subtraction">Subtraction</option>
            <option value="multiplication">Multiplication</option>
            <option value="division">Division</option>
        </select>
        <input type="text" class="form-control-sm my-1 w-100" id="second-operand" name="second-operand">
        <button type="submit" class="btn btn-danger my-1">Calculate Discount</button>
    </div>
</form>
</body>
</html>

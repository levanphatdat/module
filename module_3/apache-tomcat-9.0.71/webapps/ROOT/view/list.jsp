<%--
  Created by IntelliJ IDEA.
  User: DAT LE
  Date: 14/02/2023
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
</head>
<body>
<div class="text-center">
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2><h2>
    <a href="/users?action=list">List of Users</a>
</h2>
    <form method="get">
        <h1>Search by Country</h1>
        <input type="text" name="search" placeholder="Search By Country">
        <button>Search</button>
    </form>
    <a name="sort" id="sort" class="btn btn-primary" href="/users?action=sort" role="button">Sort by name</a>
</div>
<div align="center" class="mt-3">
    <table border="5" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

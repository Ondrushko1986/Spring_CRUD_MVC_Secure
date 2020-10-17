<%--
  Created by IntelliJ IDEA.
  User: Андрей
  Date: 21.09.2020
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>
</head>

<body>
<div>
    <table border="2" style="width:100px">
        <thead>
        <th>ID</th>
        <th>UserName</th>
        <th>Password</th>
        <th>Roles</th>
        </thead>
        <c:forEach items="${usersList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>
                    <c:forEach items="${user.roles}" var="role">${role.role}; </c:forEach>
                </td>
                <td>
                    <a href="admin/edit/${user.id}">edit</a>
                    <a href="/delete/${user.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h2>Add</h2>
    <c:url value="/add" var="add"/>
    <a href="${add}">Add new user</a>
    <h2>Home page</h2>
    <a href="/">To home page</a>
</div>
</body>
</html>
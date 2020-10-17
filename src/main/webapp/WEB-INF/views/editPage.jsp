<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Андрей
  Date: 19.08.2020
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:if test="${empty user.name}">
        <title>Registration</title>
    </c:if>
    <c:if test="${!empty user.name}">
        <title>Edit</title>
    </c:if>
</head>
<body>
<c:if test="${empty user.name}">
    <c:url value="/registration" var="var"/>
</c:if>

<c:if test="${!empty user.name}">
    <c:url value="/edit" var="var"/>
</c:if>

<form action="${var}" method="POST">
    <c:if test="${!empty user.name}">
        <input type="hidden" name="id" value="${user.id}">
    </c:if>
    <c:if test="${empty user.name}">
        <input type="hidden" name="id" value=0>
    </c:if>
    <label for="name">name</label>
    <input type="text" name="name" id="name" value="${user.name}">
    <label for="email">email</label>
    <input type="text" name="email" id="email" value="${user.email}">
    <label for="password">password</label>
    <input type="text" name="password" id="password" value="${user.password}">
    <c:if test="${empty user.name}">
        <input type="submit" value="Add new user">
    </c:if>
    <c:if test="${!empty user.name}">
        <input type="submit" value="Edit user">
    </c:if>
</form>
</body>
</html>

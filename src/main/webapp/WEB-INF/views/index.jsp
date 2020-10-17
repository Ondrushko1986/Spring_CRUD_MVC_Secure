<%--
  Created by IntelliJ IDEA.
  User: Андрей
  Date: 17.09.2020
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Главная</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<div>
    <div><sec:authentication var="user" property="principal"/>
        <sec:authorize access="isAuthenticated()">
        <table border="2" style="width:100px">
            <tr>
                <th>id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Role</th>
            </tr>
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.password}</td>
                <td>
                    <c:forEach items="${user.roles}" var="role">${role.role}; </c:forEach>
                </td>
            </tr>
            </sec:authorize>
    </div>

    <sec:authorize access="!isAuthenticated()">
        <h4><a href="${pageContext.request.contextPath}/login">Войти</a></h4>
        <h4><a href="${pageContext.request.contextPath}/registration">Зарегистрироваться</a></h4>
    </sec:authorize>

    <sec:authorize access="isAuthenticated()">
        <h4><a href="${pageContext.request.contextPath}/logout">Выйти</a></h4>
    </sec:authorize>

    <h4><a href="${pageContext.request.contextPath}/admin">Пользователи (только админ)</a></h4>
</div>
</body>
</html>

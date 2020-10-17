<%--
  Created by IntelliJ IDEA.
  User: Андрей
  Date: 15.09.2020
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title>Spring Security</title>
</head>
<body>
Login page
<form action="/sign-in"  method="post">
    <div><label> User Name : <input type="text" name="name"/> </label></div>
    <div><label> Password: <input type="text" name="password"/> </label></div>
    <div><input type="submit" value="Sign In"/></div>
</form>

</body>
</html>

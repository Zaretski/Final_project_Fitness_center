<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: admindi
  Date: 20.01.2018
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Content-Type" >
    <link rel="shortcut icon" href="/document/splash.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/header.css"/>">
    <title>header</title>
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/main/info?page=1">Contact directory</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/main/info?page=1">Home</a> </li>
            <li><a href="/main/new">New contact</a></li>
            <li><a href="/main/search">Search contact</a></li>
        </ul>
    </div>
</nav>
</body>
</html>
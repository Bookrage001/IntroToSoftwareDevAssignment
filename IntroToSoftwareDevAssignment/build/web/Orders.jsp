<%-- WIP--%>
<%-- 
    Document   : index
    Created on : 04/04/2019, 12:32:01 PM
    Author     : Caleb
--%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*" %>


<% String msFilePath = application.getRealPath("WEB-INF");%>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="content-type" content="text/xml; charset=utf-8" />
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<%@page contentType="text/html" pageEncoding="UTF-8" import="MovieStore.Model.dao.DBManager"%>

<html>
    <head>
        <title>Home Page</title>
</head>
<body align="center">
    <%@include file="WEB-INF/Modules/header.jspf" %>

<content>
    <div class ="container">
        <div id="collection">
            <div id="orders">
                <%@include file="WEB-INF/Modules/Orders.jspf" %>
            </div>
        </div>
    </div>
</content>
</body>
</html>
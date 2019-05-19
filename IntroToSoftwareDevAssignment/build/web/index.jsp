<%-- 
    Document   : index
    Created on : 04/04/2019, 12:32:01 PM
    Author     : Sean
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html"%>
<%@ page import="java.io.*" %>

<% String msFilePath = application.getRealPath("WEB-INF");%>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>Home Page</title>
    <datalist id="Genres">
        <option value="Action">
        <option value="Sci-Fi">
        <option value="Horror">
        <option value="Comedy">
    </datalist>
</head>
<a href="AddMovie.jsp">Add Movie</a>

</html>
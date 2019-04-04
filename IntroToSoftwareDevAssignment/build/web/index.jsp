<%-- 
    Document   : index
    Created on : 04/04/2019, 12:32:01 PM
    Author     : caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html"%>
<%@ page import="java.io.*" %>
<% String msFilePath = application.getRealPath("WEB-INF");%>
<link rel="stylesheet" href="styles.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>index</title>
    <datalist id="Genres">
        <option value="Action">
        <option value="Sci-Fi">
        <option value="Horror">
        <option value="Comedy">
    </datalist>
</head>
<script>
$(document).ready(function () {
    $('.order tr').click(function (event) {
        if (event.target.type !== 'checkbox') {
                $(':checkbox', this).trigger('click');
            }
        });
        $("input[type='checkbox']").change(function (e) {
            if ($(this).is(":checked")) {
                $(this).closest('tr').addClass("highlight_row");
            } else {
                $(this).closest('tr').removeClass("highlight_row");
            }
        });
    });
</script>
<body bgcolor="#f2f2f2">
    <div style="background-color: #C18C5D">
        <img src="Images/RaiMovieLogo.png" height="115.25" width="320" style="Padding:20px;padding-left: 50px;">
    </div>
    <div id="Title" style="text-align: right;background-color: #C18C5D">
        <%@include file="/Modules/navbar.jspf" %>
    </div>
        <div align="left" style="max-width: 400px;height: 80%" >
            <%@include file="/Modules/refignSearch.jspf" %>
    </div>
    <div id="Search" style="margin: auto; width: 100%; padding: 10px;">
            <%@include file="/Modules/search.jspf" %>
        </div>

        <div id="Movies">
            <%--movies should apear here--%>
        </div>

</body>
</html>

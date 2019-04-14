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
<link  rel="stylesheet" href="css/stylesheet.css">
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>Index</title>
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
<body align="center">
    <header align="left">
    <div id="Logoposition">
        <img src="Images/RaiMovieLogoBlue.png" id="Logo">
    </div>
    
    <div id="Search">
        <%@include file="/Modules/search.jspf"%>
    </div>
    </header>

<content>
        <%@include file="/Modules/navbar.jspf" %>
        <div id="collection">
            <div id="refine">
        <%@include file="/Modules/refignSearch.jspf" %>
            </div>
            <div id="movies">
        <%@include file="/Modules/movies.jspf" %>
            </div>
        </div>
</content>
</body>
</html>
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
<meta http-equiv="content-type" content="text/xml; charset=utf-8" />
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
    <div class="container">
        <header align="left">
            <div id="Logoposition">
                <img src="Images/RaiMovieLogoBlue.png" id="Logo">
            </div>

            <div id="Search">
                <%@include file="WEB-INF/Modules/search.jspf"%>
            </div>
    </div>
</header>
</header>

<content>
    <div>
        Message:
        <%=exception.getMessage()%>

        StackTrace:
        <%
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        exception.printStackTrace(printWriter);
        out.println(stringWriter);
        printWriter.close();
        stringWriter.close();
        %>
    </div>
</content>

    <a href="Orders.jsp" > Orders</a>
</body>
</html>
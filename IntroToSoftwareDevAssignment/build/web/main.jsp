<%@page import="java.util.*"%>
<%@page import="uts.wsd.oms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Landing Page</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <!-- Getting application JavaBean and using it to get orders of user that is logged in -->
    <% String filePath = application.getRealPath("WEB-INF");%>
    <jsp:useBean id="movieStoreApp" class="uts.wsd.oms.MovieStoreApplication" scope="application">
        <jsp:setProperty name="movieStoreApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean>
    <%
        String email = "";
        
        if (session != null) {
            User user = (User) session.getAttribute("user");
            if (user != null) {
                email = user.getEmail();
            }
        }
    %>

    <!-- Provide XML using user specific orders -->

    <body>
        <h1>Main Page</h1>
        <%@include file="/WEB-INF/jspf/navbar.jspf" %>
        <h3 align="center">Order History</h3>
        <c:import url = "WEB-INF/history.xml" var="xml"/>
        <c:import url = "xsl/history.xsl" var="xslt"/>
        <x:transform xml = "${xml}" xslt = "${xslt}">
            <x:param name="email" value="<%=email%>" />
        </x:transform>
    </body>
</html>

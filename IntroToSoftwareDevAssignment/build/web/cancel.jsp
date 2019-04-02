<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="uts.wsd.oms.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String filePath = application.getRealPath("WEB-INF");%>
<jsp:useBean id="movieStoreApp" class="uts.wsd.oms.MovieStoreApplication" scope="application">
    <jsp:setProperty name="movieStoreApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%
    
    ArrayList<String> paramNames = Collections.list(request.getParameterNames());
    for (String param : paramNames) {
        if (param.contains("order")) {
            String[] split = param.split("_");
            if(split.length>1)
                session.setAttribute("orderID", split[1]);
        } 
    }
    
    String orderID = "";
    if (session.getAttribute("orderID") != null) {
        orderID = (String) session.getAttribute("orderID");
    }
    
    if (request.getParameter("Cancel") != null || request.getParameter("Confirm") != null) {
        session.removeAttribute("orderID");
        if (request.getParameter("Cancel") != null) {
            //System.out.print("print");
            response.sendRedirect("main.jsp");
        } else if (request.getParameter("Confirm") != null) {
            movieStoreApp.cancelOrder(Integer.parseInt(orderID));
            response.sendRedirect("main.jsp");
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cancellation</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h1>Are you sure?</h1>
        <%@include file="/WEB-INF/jspf/navbar.jspf" %>
        <h3 align="center">Cancelling order:</h3>
        <c:import url = "WEB-INF/history.xml" var="xml"/>
        <c:import url = "xsl/cancel.xsl" var="xslt"/>
        <x:transform xml = "${xml}" xslt = "${xslt}">
            <x:param name="id" value="<%=orderID%>" />
        </x:transform>
        <form action="" method="Post">
            <input type="submit" value="Confirm" name="Confirm"/>
            <input type="submit" value="Cancel" name="Cancel"/>
        </form>
            
        

<%-- 
    Document   : movieListing
    Created on : 15/04/2019, 8:28:41 PM
    Author     : mcant
--%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="MovieStore.Model.*"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie List</title>
    </head>
    <body>
        
        <c:import url="WEB-INF/movies.xml" var="xml"/>
        <c:import url="WEB-INF/movie.xsl" var="xsl"/>
        
        <%
            String title = request.getParameter("title");
            String price = request.getParameter("price");
            %>
            
            <x:transform xml="${xml}" xslt="${xsl}">
                <x:param name="title" value="<%= title %>"/>
                <x:param name="price" value="<%= price %>"/>
            </x:transform>
    </body>
</html>
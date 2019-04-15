<%-- 
    Document   : movieDetail
    Created on : 15/04/2019, 4:08:04 PM
    Author     : mcant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="MovieStore.Model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${movie.title} | Movie Details</title>
    </head>
    <body>
        <% 
            String moviePath = application.getRealPath("../WEB-INF/movies.xml");
        %>
        
        <jsp:useBean id="webApp" class="MovieStore.Model.WebApplication" scope="application">
            <jsp:setProperty name="webApp" property="moviePath" value="<%= moviePath%>"/>
        </jsp:useBean>
        
        <% 
            final WebApplication app = webApp;
            
            int id = 0;
            request.setAttribute("movie", app.getMovies().getId(id));
        %>
        
        <c:set var="mo">
        <movie id="${movie.id}">
            <title>${movie.title}</title>
            <genre>${movie.genre}</genre>
            <releaseDate>${movie.releaseDate}</releaseDate>
            <summary>${movie.summary}</summary>
            <price>${movie.price}</price>
        </movie>
        </c:set>
    
    <c:import url="../WEB-INF/movies.xsl" var="xslt"/>
    <x:transform xml="${mo}" xslt="${xslt}"/>
    
    <input class="button" onClick="window.location.href = 'addToCart.jsp'" type="button" value="Add to Cart"> 
    </body>
</html>

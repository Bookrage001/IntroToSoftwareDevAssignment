<%-- 
    Document   : movieDetail
    Created on : 15/04/2019, 8:49:23 PM
    Author     : mcant
--%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="MovieStore.Model.*"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${movie.title} | Movie Details</title>
    </head>
    <body>
        <% 
            String movieFilePath = application.getRealPath("WEB-INF/movies.xml");
        %>
        
        <jsp:useBean id="webApp" class="MovieStore.Model.WebApplication" scope="application">
            <jsp:setProperty name="webApp" property="movieFilePath" value="<%= movieFilePath%>"/>
        </jsp:useBean>
        
        <% 
            final WebApplication app = webApp;
            
            int id = 0;
            try{
            id = Integer.parseInt(request.getParameter("id"));
                if (id <= 0 || id > app.getMovies().getList().size()) {
                    session.setAttribute("message", "The Book you requested doesn't exist.");
                    response.sendRedirect("#");
                } else {
                    request.setAttribute("movie", app.getMovies().getId(id));
                }
            } catch (NullPointerException e) {
                session.setAttribute("message", "Unable to retrieve the book, Incorrect Parameters.");
                response.sendRedirect("#");
            }
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
    
    <c:import url="WEB-INF/movies.xsl" var="xslt"/>
    <x:transform xml="${mo}" xslt="${xslt}"/>
    
    <input class="button" onClick="window.location.href = 'addToCart.jsp'" type="button" value="Add to Cart"> 
    </body>
</html>

<%-- 
    Document   : movieList
    Created on : 15/04/2019, 4:06:42 PM
    Author     : mcant
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="MovieStore.Model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie List</title>
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
        %>
        
        <c:set var="mo">
        <Movies>
            <%
                for(Movie movie : app.getMovies().getList()){
                    request.setAttribute("movie", movie);
                
            %>
            <movie id="${movie.id}">
                <title>${movie.title}</title>
                <price>${movie.price}</price>
            </movie>
            <% 
            }
            %>
        </Movies>
        </c:set>
    
    <c:import url="../WEB-INF/movie.xsl" var="xslt"/>
    <x:transform xml="${mo}" xslt="$xslt"/>
    </body>
</html>

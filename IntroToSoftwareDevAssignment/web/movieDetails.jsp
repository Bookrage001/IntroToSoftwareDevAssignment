<%-- 
    Document   : movieDetails
    Created on : 29/05/2019, 11:15:17 PM
    Author     : mcant
--%>

<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Home Page</title>
    <div class="searchContainer">
        <div id="Logoposition">
            <img src="Images/RaiMovieLogoBlue.png" id="Logo">
        </div>
        <%@include file="WEB-INF/Modules/search.jspf"%>
    </div>
</head>
<body align="center">
    <div class ="container">
        <%@include file="WEB-INF/Modules/navbar.jspf" %>
        <div id="collection">
            <div id="refine">
                <%@include file="WEB-INF/Modules/filter.jspf" %>
            </div>
            <div id="movies">
                <% 
                String mov = request.getParameter("movieID");
                int movieID = Integer.parseInt(mov);
                //Add new session for all books
                DBManager db = (DBManager) session.getAttribute("manager");
                Movie move = db.getMovieDetails(movieID);
                
            %>
            
            <p><%= mov %></p>
            <p><%= move.getDirector() %></p>
            <p><%= move.getTitle() %></p>
            <p><%= move.getSynopsis() %></p>
            <p><%= move.getReleaseDate() %></p>
            <p><%= move.getGenre() %></p>
            <p><%= move.getID() %></p>
            </div>
        </div>
    </div>
</body>
</html>
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
                <div style="padding: 20px;">
                    <div style="float:left; text-align: justify; width: 450px;">
                        <h4><b> Title:</b> <%= move.getTitle()%></h4><br>
                        <h5><b> Genre:</b> <%= move.getGenre()%></h5><br>
                        <h5><b> Director: </b> <%= move.getDirector()%></h5><br>
                        <h5><b> Release Date: </b> <%= move.getReleaseDate()%></h5> <br> 
                        <h5><b> Price: $</b> <%= move.getPrice()%></h5> <br> 
                        <h5><b> Synopsis:<br> </b> <%= move.getSynopsis()%></h5> <br> 
                        <br>
                        <div>
                            <form method="post" action="checkout.jsp">
                                <button type="submit" class="fa fa-cart-plus" style="padding: 16px 32px;">  Add to Cart</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div>
                    <img class="movieimg" src="Images/posters/ENDGAME.jpg"  style="float:right; width: 260px; height: 320px"/>
                </div>

            </div>
        </div>
    </div>
</body>
</html>